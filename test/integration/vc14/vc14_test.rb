# InSpec test for recipe vcruntime::vc14

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026' => '14.0.23026.0',
               'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24123' => '14.0.24123.0',
               'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24212' => '14.0.24212.0',
               'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215' => '14.0.24215',
               'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017' => '14.10.25017.0',
               'Microsoft Visual C++ 2017 Redistributable (x86) - 14.14.26429' => '14.14.26429.4',
               'Microsoft Visual C++ 2015-2019 Redistributable (x86) - 14.29.30139' => '14.29.30139.0',
               'Microsoft Visual C++ 2015-2022 Redistributable (x86) - 14.31.31103' => '14.31.31103.0' }
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
  packages = { 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026' => '14.0.23026.0',
               'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24123' => '14.0.24123.0',
               'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24212' => '14.0.24212.0',
               'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215' => '14.0.24215',
               'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017' => '14.10.25017.0',
               'Microsoft Visual C++ 2017 Redistributable (x64) - 14.14.26429' => '14.14.26429.4',
               'Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.29.30139' => '14.29.30139.0',
               'Microsoft Visual C++ 2015-2022 Redistributable (x64) - 14.31.31103' => '14.31.31103.0' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
