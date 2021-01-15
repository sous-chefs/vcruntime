# InSpec test for recipe vcruntime::vc11

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.50727' => '11.0.50727.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106' => '11.0.51106.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610' => '11.0.60610.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030' => '11.0.61030.0' }
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
  packages = { 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.50727' => '11.0.50727.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106' => '11.0.51106.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610' => '11.0.60610.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030' => '11.0.61030.0' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
