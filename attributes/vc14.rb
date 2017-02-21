#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc14
# Copyright:: 2014-2017, Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default['vcruntime']['vc14']['x86']['14.0.23026']['url']       = 'https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe'
default['vcruntime']['vc14']['x86']['14.0.23026']['sha256sum'] = 'fdd1e1f0dcae2d0aa0720895eff33b927d13076e64464bb7c7e5843b7667cd14'
default['vcruntime']['vc14']['x86']['14.0.23026']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026'
default['vcruntime']['vc14']['x64']['14.0.23026']['url']       = 'https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe'
default['vcruntime']['vc14']['x64']['14.0.23026']['sha256sum'] = '5eea714e1f22f1875c1cb7b1738b0c0b1f02aec5ecb95f0fdb1c5171c6cd93a3'
default['vcruntime']['vc14']['x64']['14.0.23026']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026'

default['vcruntime']['vc14']['x86']['14.0.24123.1']['url']       = 'https://download.microsoft.com/download/0/6/4/064F84EA-D1DB-4EAA-9A5C-CC2F0FF6A638/vc_redist.x86.exe'
default['vcruntime']['vc14']['x86']['14.0.24123.1']['sha256sum'] = 'ea92c3f93bc063d6da084faa854c131e37f1f2cb585cd1e62a3df9e03eacadff'
default['vcruntime']['vc14']['x86']['14.0.24123.1']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24123'
default['vcruntime']['vc14']['x64']['14.0.24123.1']['url']       = 'https://download.microsoft.com/download/0/6/4/064F84EA-D1DB-4EAA-9A5C-CC2F0FF6A638/vc_redist.x64.exe'
default['vcruntime']['vc14']['x64']['14.0.24123.1']['sha256sum'] = 'dd479820f34498c706bd61c4e7bdafc18a739e397762d7e16d7ad0b9a4cbd79f'
default['vcruntime']['vc14']['x64']['14.0.24123.1']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24123'

default['vcruntime']['vc14']['x86']['14.0.24212']['url']       = 'https://download.microsoft.com/download/6/D/F/6DF3FF94-F7F9-4F0B-838C-A328D1A7D0EE/vc_redist.x86.exe'
default['vcruntime']['vc14']['x86']['14.0.24212']['sha256sum'] = 'dafb8b5f4b46bfaf7faa1d0ad05211f5c9855f0005cd603f8b5037b6a708d6b6'
default['vcruntime']['vc14']['x86']['14.0.24212']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24212'
default['vcruntime']['vc14']['x64']['14.0.24212']['url']       = 'https://download.microsoft.com/download/6/D/F/6DF3FF94-F7F9-4F0B-838C-A328D1A7D0EE/vc_redist.x64.exe'
default['vcruntime']['vc14']['x64']['14.0.24212']['sha256sum'] = 'd7257265dbc0635c96dd67ddf938a09abe0866cb2d4fa05f8b758c8644e724e4'
default['vcruntime']['vc14']['x64']['14.0.24212']['name']      = 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24212'

default['vcruntime']['vc14']['x86']['14.0.24215']['url']       = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x86.exe'
default['vcruntime']['vc14']['x86']['14.0.24215']['sha256sum'] = '12a69af8623d70026690ba14139bf3793cc76c865759cad301b207c1793063ed'
default['vcruntime']['vc14']['x86']['14.0.24215']['name']      = 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215'
default['vcruntime']['vc14']['x64']['14.0.24215']['url']       = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'
default['vcruntime']['vc14']['x64']['14.0.24215']['sha256sum'] = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'
default['vcruntime']['vc14']['x64']['14.0.24215']['name']      = 'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215'

default['vcruntime']['vc14']['version'] = '14.0.24215'
