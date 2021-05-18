#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc9
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

default['vcruntime']['vc9']['x86']['9.0.21022.8']['url']       = 'http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe'
default['vcruntime']['vc9']['x86']['9.0.21022.8']['sha256sum'] = 'c6a7e484f4d84883bc1205bccea3114c0521025712922298ede9b2a1cd632357'
default['vcruntime']['vc9']['x86']['9.0.21022.8']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['url']       = 'http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['sha256sum'] = 'baaaeddc17bcda8d20c0a82a9eb1247be06b509a820d65dda1342f4010bdb4a0'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.21022'

default['vcruntime']['vc9']['x86']['9.0.30729.5677']['url']       = 'https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe'
default['vcruntime']['vc9']['x86']['9.0.30729.5677']['sha256sum'] = '8742bcbf24ef328a72d2a27b693cc7071e38d3bb4b9b44dec42aa3d2c8d61d92'
default['vcruntime']['vc9']['x86']['9.0.30729.5677']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161'
default['vcruntime']['vc9']['x64']['9.0.30729.5677']['url']       = 'https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe'
default['vcruntime']['vc9']['x64']['9.0.30729.5677']['sha256sum'] = 'c5e273a4a16ab4d5471e91c7477719a2f45ddadb76c7f98a38fa5074a6838654'
default['vcruntime']['vc9']['x64']['9.0.30729.5677']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161'

default['vcruntime']['vc9']['version'] = '9.0.30729.5677'
