# frozen_string_literal: true

control 'current-runtime-state' do
  impact 1.0
  title 'Verify both current runtime architectures'
  desc 'Check the installed runtime state and version in the correct registry view.'

  { 'x64' => '', 'x86' => 'WOW6432Node\\' }.each do |architecture, view|
    script = "$runtime = Get-ItemProperty 'HKLM:\\SOFTWARE\\#{view}Microsoft\\VisualStudio\\14.0\\VC\\Runtimes\\#{architecture}' -ErrorAction SilentlyContinue; " \
      "if ($runtime.Installed -eq 1 -and [version]$runtime.Version.TrimStart('v') -ge [version]'14.52.37029.0') { 'installed' } else { 'absent' }"
    describe command(script) do
      its('exit_status') { should eq 0 }
      its('stdout.strip') { should eq 'absent' }
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
