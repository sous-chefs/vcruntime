#
# Author:: Taylor Monacelli (<taylormonacelli@gmail.com>)
# Cookbook:: vcruntime
# Attributes:: vc15
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

default['vcruntime']['vc15']['x86']['14.10.25017']['url']       = 'https://download.microsoft.com/download/1/f/e/1febbdb2-aded-4e14-9063-39fb17e88444/vc_redist.x86.exe'
default['vcruntime']['vc15']['x86']['14.10.25017']['sha256sum'] = '54133dc6e13d775199bbec9268ae5e54063f9c6cb7b630f7865704cc64f50774'
default['vcruntime']['vc15']['x86']['14.10.25017']['name']      = 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017'
default['vcruntime']['vc15']['x64']['14.10.25017']['url']       = 'https://download.microsoft.com/download/3/b/f/3bf6e759-c555-4595-8973-86b7b4312927/vc_redist.x64.exe'
default['vcruntime']['vc15']['x64']['14.10.25017']['sha256sum'] = '871983b6b4c3bce1b5b9ae2173c818137c8831c818393268fb2f0414c096e241'
default['vcruntime']['vc15']['x64']['14.10.25017']['name']      = 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017'

default['vcruntime']['vc15']['x86']['14.14.26429']['url']       = 'https://download.visualstudio.microsoft.com/download/pr/12319034/ccd261eb0e095411af3b306273231b68/VC_redist.x86.exe'
default['vcruntime']['vc15']['x86']['14.14.26429']['sha256sum'] = 'eb5f74215e4308d8f2b1d458e78f33050a779b9be19baaa2174de1be9be1b830'
default['vcruntime']['vc15']['x86']['14.14.26429']['name']      = 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.14.26429'
default['vcruntime']['vc15']['x64']['14.14.26429']['url']       = 'https://download.visualstudio.microsoft.com/download/pr/12328699/a80e967515b2a4faf37bf15387f1c5c3/VC_redist.x64.exe'
default['vcruntime']['vc15']['x64']['14.14.26429']['sha256sum'] = '9abf3a1386584ea0e4b31198cc56e988e13e67ccdb1137ec6e18e883753d2ddb'
default['vcruntime']['vc15']['x64']['14.14.26429']['name']      = 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.14.26429'

default['vcruntime']['vc15']['version'] = '14.14.26429'
