# frozen_string_literal: true

control 'vc11-runtime' do
  impact 1.0
  title 'Explicit vc11 compatibility runtime'
  desc 'Check both installed architectures using the preserved catalog package names.'

  describe package('Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030') do
    it { should be_installed }
  end
end
