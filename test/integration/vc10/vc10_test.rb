# InSpec test for recipe vcruntime::vc10

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319' => '10.0.30319',
               'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219' => '10.0.40219' }
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
  packages = { 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319' => '10.0.30319',
               'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219' => '10.0.40219' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
