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
      its('stdout.strip') { should eq 'installed' }
    end
  end
end
