# InSpec test for recipe vcruntime::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package('Microsoft Visual C++ 2005 Redistributable') do
  it { should be_installed }
  its('version') { should eq '8.0.61001' }
end

describe package('Microsoft Visual C++ 2005 Redistributable (x64)') do
  it { should be_installed }
  its('version') { should eq '8.0.61000' }
end
