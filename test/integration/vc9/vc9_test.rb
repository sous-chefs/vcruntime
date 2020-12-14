# InSpec test for recipe vcruntime::vc9

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022' => '9.0.21022',
               'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161' => '9.0.30729.6161' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end

control 'Microsoft Visual C++ Redistributable (x64)' do
  packages = { 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.21022' => '9.0.21022',
               'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161' => '9.0.30729.6161' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
