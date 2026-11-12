# frozen_string_literal: true

control 'current-runtime-state' do
  impact 1.0
  title 'Verify both current runtime architectures'
  desc 'Check registered bundles and their versions rather than stale runtime installation markers.'

  %w(x64 x86).each do |architecture|
    script = "Get-ItemProperty 'HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*', 'HKLM:\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*' -ErrorAction SilentlyContinue | " \
      "Where-Object { $_.DisplayName -like 'Microsoft Visual C++*Redistributable (#{architecture})*' -and [version]$_.DisplayVersion -ge [version]'14.52.37029.0' } | Select-Object -ExpandProperty DisplayName"
    describe command(script) do
      its('exit_status') { should eq 0 }
      its('stdout.strip') { should eq '' }
    end
  end
end

control 'complete-bundle-removal' do
  impact 1.0
  title 'Remove the bundle and both child runtimes'
  desc 'Ensure neither the bundle nor its minimum/additional MSI components remain registered.'
  script = "Get-ItemProperty 'HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*', 'HKLM:\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*' -ErrorAction SilentlyContinue | " \
    "Where-Object { $_.DisplayName -match 'Microsoft Visual C\\+\\+.*14\\.52\\.37029' } | Select-Object -ExpandProperty DisplayName"
  describe command(script) do
    its('exit_status') { should eq 0 }
    its('stdout.strip') { should eq '' }
  end
end
