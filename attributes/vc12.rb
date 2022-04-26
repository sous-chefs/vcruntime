#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc12
# Copyright:: 2014-2019, Chef Software, Inc.
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

default['vcruntime']['vc12']['x86']['12.0.30501']['url']       = 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe'
default['vcruntime']['vc12']['x86']['12.0.30501']['sha256sum'] = 'a22895e55b26202eae166838edbe2ea6aad00d7ea600c11f8a31ede5cbce2048'
default['vcruntime']['vc12']['x86']['12.0.30501']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005'
default['vcruntime']['vc12']['x64']['12.0.30501']['url']       = 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe'
default['vcruntime']['vc12']['x64']['12.0.30501']['sha256sum'] = 'e554425243e3e8ca1cd5fe550db41e6fa58a007c74fad400274b128452f38fb8'
default['vcruntime']['vc12']['x64']['12.0.30501']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005'

default['vcruntime']['vc12']['x86']['12.0.40660']['url']       = 'https://download.microsoft.com/download/0/5/6/056DCDA9-D667-4E27-8001-8A0C6971D6B1/vcredist_x86.exe'
default['vcruntime']['vc12']['x86']['12.0.40660']['sha256sum'] = '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17'
default['vcruntime']['vc12']['x86']['12.0.40660']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660'
default['vcruntime']['vc12']['x64']['12.0.40660']['url']       = 'https://download.microsoft.com/download/0/5/6/056DCDA9-D667-4E27-8001-8A0C6971D6B1/vcredist_x64.exe'
default['vcruntime']['vc12']['x64']['12.0.40660']['sha256sum'] = '20e2645b7cd5873b1fa3462b99a665ac8d6e14aae83ded9d875fea35ffdd7d7e'
default['vcruntime']['vc12']['x64']['12.0.40660']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660'

default['vcruntime']['vc12']['x86']['12.0.40664']['url']       = 'https://download.visualstudio.microsoft.com/download/pr/10912113/5da66ddebb0ad32ebd4b922fd82e8e25/vcredist_x86.exe'
default['vcruntime']['vc12']['x86']['12.0.40664']['sha256sum'] = '53b605d1100ab0a88b867447bbf9274b5938125024ba01f5105a9e178a3dcdbd'
default['vcruntime']['vc12']['x86']['12.0.40664']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664'
default['vcruntime']['vc12']['x64']['12.0.40664']['url']       = 'https://download.visualstudio.microsoft.com/download/pr/10912041/cee5d6bca2ddbcd039da727bf4acb48a/vcredist_x64.exe'
default['vcruntime']['vc12']['x64']['12.0.40664']['sha256sum'] = 'a4bba7701e355ae29c403431f871a537897c363e215cafe706615e270984f17c'
default['vcruntime']['vc12']['x64']['12.0.40664']['name']      = 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664'

default['vcruntime']['vc12']['version'] = '12.0.40664'
