# frozen_string_literal: true

control 'vc12-runtime' do
  impact 1.0
  title 'Explicit vc12 compatibility runtime'
  desc 'Check both installed architectures using the preserved catalog package names.'

  describe package('Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664') do
    it { should be_installed }
  end
end
