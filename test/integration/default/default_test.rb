# InSpec test for recipe vcruntime::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control 'Microsoft Visual C++ Redistributable (x86)' do
  packages = { 'Microsoft Visual C++ 2005 Redistributable (x86)' => '8.0.61001',
               'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022' => '9.0.21022',
               'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161' => '9.0.30729.6161',
               'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319' => '10.0.30319',
               'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219' => '10.0.40219',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.50727' => '11.0.50727.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106' => '11.0.51106.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610' => '11.0.60610.1',
               'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030' => '11.0.61030.0',
               'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.30501' => '12.0.30501',
               'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660' => '12.0.40660.0',
               'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026' => '14.0.23026.0',
               'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24123' => '14.0.24123.0',
               'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24212' => '14.0.24212.0',
               'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215' => '14.0.24215',
               'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017' => '14.10.25017.0',
               'Microsoft Visual C++ 2017 Redistributable (x86) - 14.14.26429' => '14.14.26429.4',
               'Microsoft Visual C++ 2015-2019 Redistributable (x86) - 14.29.30135' => '14.29.30135.0',
               'Microsoft Visual C++ 2015-2022 Redistributable (x86) - 14.30.30704' => '14.30.30704.0' }
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
  packages = { 'Microsoft Visual C++ 2005 Redistributable (x64)' => '8.0.61000',
               'Microsoft Visual C++ 2008 Redistributable - x64 9.0.21022' => '9.0.21022',
               'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161' => '9.0.30729.6161',
               'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319' => '10.0.30319',
               'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219' => '10.0.40219',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.50727' => '11.0.50727.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106' => '11.0.51106.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610' => '11.0.60610.1',
               'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030' => '11.0.61030.0',
               'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.30501' => '12.0.30501',
               'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660' => '12.0.40660.0',
               'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026' => '14.0.23026.0',
               'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24123' => '14.0.24123.0',
               'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24212' => '14.0.24212.0',
               'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215' => '14.0.24215',
               'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017' => '14.10.25017.0',
               'Microsoft Visual C++ 2017 Redistributable (x64) - 14.14.26429' => '14.14.26429.4',
               'Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.29.30135' => '14.29.30135.0',
               'Microsoft Visual C++ 2015-2022 Redistributable (x64) - 14.30.30704' => '14.30.30704.0' }
  describe.one do
    packages.each do |name, version|
      describe package(name.to_s) do
        it { should be_installed }
        its('version') { should eq version.to_s }
      end
    end
  end
end
