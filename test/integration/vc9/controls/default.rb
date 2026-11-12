# frozen_string_literal: true

control 'vc9-runtime' do
  impact 1.0
  title 'Explicit vc9 compatibility runtime'
  desc 'Check both installed architectures using the preserved catalog package names.'

  describe package('Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161') do
    it { should be_installed }
  end
end
