# frozen_string_literal: true

require 'spec_helper'

describe 'vcruntime_install' do
  step_into :vcruntime_install
  platform 'windows', '2022'

  let(:runtime_present) { false }
  before do
    stub_command(/^\$runtime = Get-ItemProperty /).and_return(runtime_present)
  end

  recipe do
    vcruntime_install 'current runtime'
  end

  %w(x64 x86).each do |architecture|
    it "installs the verified current #{architecture} bundle" do
      package = VCRuntime::CATALOG.fetch('vc14').fetch(architecture).fetch('14.52.37029.0')
      expect(chef_run).to install_windows_package(package.fetch('name'))
        .with(source: package.fetch('url'), checksum: package.fetch('sha256sum'), installer_type: :custom,
              options: '/install /quiet /norestart', returns: [0, 3010])
      expect(chef_run.windows_package(package.fetch('name')).not_if.first.command).to include("[version]'14.52.37029.0'", ' -ge ')
    end
  end

  it 'does not install EOL runtime families by default' do
    expect(chef_run.resource_collection.select { |resource| resource.resource_name == :windows_package }.size).to eq 2
  end

  context 'removal' do
    recipe do
      vcruntime_install 'remove current runtime' do
        action :remove
      end
    end

    it 'removes both complete bundles without downloading installers' do
      %w(x64 x86).each do |architecture|
        package = VCRuntime::CATALOG.fetch('vc14').fetch(architecture).fetch('14.52.37029.0')
        expect(chef_run).to remove_windows_package(package.fetch('name')).with(options: '/uninstall /quiet /norestart')
        expect(chef_run.windows_package(package.fetch('name')).source).to be_nil
      end
    end
  end

  context 'when an equal or newer runtime is installed' do
    let(:runtime_present) { true }

    it 'does not attempt to downgrade either architecture' do
      %w(x64 x86).each do |architecture|
        package = VCRuntime::CATALOG.fetch('vc14').fetch(architecture).fetch('14.52.37029.0')
        expect(chef_run).not_to install_windows_package(package.fetch('name'))
      end
    end
  end

  context 'a 32-bit host' do
    automatic_attributes['kernel']['machine'] = 'i386'

    it 'installs only x86 and reads its native registry view' do
      packages = chef_run.resource_collection.select { |resource| resource.resource_name == :windows_package }
      expect(packages.map(&:name)).to eq ['Microsoft Visual C++ v14 Redistributable (x86) - 14.52.37029']
      expect(packages.first.not_if.first.command).not_to include('WOW6432Node')
    end
  end

  context 'a private package override' do
    recipe do
      vcruntime_install 'private runtime' do
        version '14.60.0.0'
        architectures %w(x86)
        packages('x86' => { name: 'Private runtime x86', url: 'https://packages.example/runtime.exe', sha256sum: 'a' * 64 })
      end
    end

    it 'uses the caller-supplied package and checksum' do
      expect(chef_run).to install_windows_package('Private runtime x86')
        .with(source: 'https://packages.example/runtime.exe', checksum: 'a' * 64)
    end
  end

  context 'unsupported architecture' do
    recipe do
      vcruntime_install 'invalid architecture' do
        architectures %w(arm32)
      end
    end

    it 'fails before declaring package operations' do
      expect { chef_run }.to raise_error(ArgumentError, /architectures must contain/)
    end
  end

  context 'legacy removal' do
    recipe do
      vcruntime_install 'legacy removal' do
        family 'vc11'
        action :remove
      end
    end

    it 'rejects partial child MSI removal explicitly' do
      expect { chef_run }.to raise_error(ArgumentError, /current v14 bundle only/)
    end
  end

  %w(vc6 vc9 vc10 vc11 vc12).each do |family|
    context family do
      recipe do
        vcruntime_install 'legacy runtime' do
          family family
          architectures %w(x86)
        end
      end

      it 'preserves the explicit legacy catalog package, checksum and command line' do
        package = VCRuntime::CATALOG.fetch(family).fetch('x86').fetch(VCRuntime::DEFAULTS.fetch(family))
        options = if %w(vc6 vc9).include?(family)
                    '/q'
                  else
                    family == 'vc10' ? '/q /norestart' : '/install /quiet /norestart'
                  end
        expect(chef_run).to install_windows_package(package.fetch('name'))
          .with(source: package.fetch('url'), checksum: package.fetch('sha256sum'), options: options)
      end
    end
  end
end
