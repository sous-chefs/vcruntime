# frozen_string_literal: true

control 'all-explicit-families' do
  impact 1.0
  title 'All requested runtime families are installed'
  desc 'Check each legacy family as well as the current runtime.'

  describe package('Microsoft Visual C++ 2005 Redistributable') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664') do
    it { should be_installed }
  end

  describe package('Microsoft Visual C++ v14 Redistributable (x86) - 14.52.37029') do
    it { should be_installed }
  end
end
