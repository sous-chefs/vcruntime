# frozen_string_literal: true

control 'vc6-runtime' do
  impact 1.0
  title 'Explicit vc6 compatibility runtime'
  desc 'Check both installed architectures using the preserved catalog package names.'

  describe package('Microsoft Visual C++ 2005 Redistributable') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2005 Redistributable (x64)') do
    it { should be_installed }
  end
end
