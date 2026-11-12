# frozen_string_literal: true

unified_mode true
provides :vcruntime_install

property :family, String, default: 'vc14', equal_to: %w(vc6 vc9 vc10 vc11 vc12 vc14)
property :version, String, default: lazy { VCRuntime::DEFAULTS.fetch(family) }
property :architectures, Array, default: lazy {
  case node['kernel']['machine'].to_s.downcase
  when 'x86_64', 'amd64', 'x64', 'aarch64', 'arm64' then %w(x64 x86)
  when /\Ai[3-6]86\z/, 'x86' then %w(x86)
  else raise ArgumentError, 'Unsupported Windows architecture; set architectures explicitly'
  end
}
property :packages, Hash, default: {}

action :install do
  selected_packages.each do |architecture, package|
    windows_package package.fetch('name') do
      source package.fetch('url')
      checksum package.fetch('sha256sum')
      installer_type :custom
      options install_options
      returns [0, 3010]
      if new_resource.family == 'vc14'
        guard_interpreter :powershell_script
        not_if runtime_version_guard(architecture)
      end
      action :install
    end
  end
end

action :remove do
  unless new_resource.family == 'vc14' && new_resource.version == VCRuntime::DEFAULTS.fetch('vc14')
    raise ArgumentError, 'Removal is supported for the current v14 bundle only; legacy entries are installation compatibility data'
  end

  selected_packages.each do |architecture, package|
    windows_package package.fetch('name') do
      installer_type :custom
      # The registered (quiet) uninstall command already selects /uninstall.
      options "/quiet /norestart /log \"#{::File.join(Chef::Config[:file_cache_path], "vcruntime-remove-#{architecture}.log")}\""
      returns [0, 3010]
      action :remove
    end
  end
end

action_class do
  def selected_packages
    raise ArgumentError, 'architectures must contain x86 and/or x64' if new_resource.architectures.empty? || (new_resource.architectures - %w(x86 x64)).any?

    new_resource.architectures.uniq.to_h do |architecture|
      entry = VCRuntime::CATALOG.dig(new_resource.family, architecture, new_resource.version) || {}
      entry = entry.merge(new_resource.packages.fetch(architecture, {}).transform_keys(&:to_s))
      %w(name url sha256sum).each { |key| raise ArgumentError, "Missing #{key} for #{new_resource.family}/#{architecture}/#{new_resource.version}" unless entry[key] }
      [architecture, entry]
    end
  end

  def install_options
    case new_resource.family
    when 'vc6', 'vc9' then '/q'
    when 'vc10' then '/q /norestart'
    else '/install /quiet /norestart'
    end
  end

  def runtime_version_guard(architecture)
    raise ArgumentError, 'v14 version must be numeric' unless new_resource.version.match?(/\A\d+(?:\.\d+){2,3}\z/)

    paths = ["'HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*'"]
    unless node['kernel']['machine'].to_s.match?(/\A(?:i[3-6]86|x86)\z/i)
      paths << "'HKLM:\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*'"
    end
    "$runtime = Get-ItemProperty #{paths.join(', ')} -ErrorAction SilentlyContinue | " \
      "Where-Object { $_.DisplayName -like 'Microsoft Visual C++*Redistributable (#{architecture})*' " \
      "-and [version]$_.DisplayVersion -ge [version]'#{new_resource.version}' }; $null -ne $runtime"
  end
end
