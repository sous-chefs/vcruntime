#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc9
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

default['vcruntime']['vc9']['x86']['9.0.21022.8']['url']       = 'http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe'
default['vcruntime']['vc9']['x86']['9.0.21022.8']['sha256sum'] = 'c6a7e484f4d84883bc1205bccea3114c0521025712922298ede9b2a1cd632357'
default['vcruntime']['vc9']['x86']['9.0.21022.8']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['url']       = 'http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['sha256sum'] = 'baaaeddc17bcda8d20c0a82a9eb1247be06b509a820d65dda1342f4010bdb4a0'
default['vcruntime']['vc9']['x64']['9.0.21022.8']['name'] = 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.21022'

default['vcruntime']['vc9']['x86']['9.0.30729.17']['url']       = 'http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe'
default['vcruntime']['vc9']['x86']['9.0.30729.17']['sha256sum'] = '41f45a46ee56626ff2699d525bb56a3bb4718c5ca5f4fb5b3b38add64584026b'
default['vcruntime']['vc9']['x86']['9.0.30729.17']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17'
default['vcruntime']['vc9']['x64']['9.0.30729.17']['url']       = 'http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe'
default['vcruntime']['vc9']['x64']['9.0.30729.17']['sha256sum'] = '55bf99ad3f063165c3ee1626787b5d4c2b65b5001fef79dd58c3490369ed282f'
default['vcruntime']['vc9']['x64']['9.0.30729.17']['name']      = 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17'

default['vcruntime']['vc9']['version'] = '9.0.30729.17'
