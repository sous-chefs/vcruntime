# frozen_string_literal: true

control 'vc10-runtime' do
  impact 1.0
  title 'Explicit vc10 compatibility runtime'
  desc 'Check both installed architectures using the preserved catalog package names.'

  describe package('Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219') do
    it { should be_installed }
  end
end
