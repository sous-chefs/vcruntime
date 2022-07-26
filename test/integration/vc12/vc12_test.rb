# InSpec test for recipe vcruntime::vc12

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501' => '12.0.30501',
               'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660' => '12.0.40660.0',
               'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664' => '12.0.40664.0' }
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
  packages = { 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501' => '12.0.30501',
               'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660' => '12.0.40660.0',
               'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664' => '12.0.40664.0' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
