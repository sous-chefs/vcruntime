#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc10
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

default['vcruntime']['vc10']['x86']['10.0.30319']['url']       = 'http://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe'
default['vcruntime']['vc10']['x86']['10.0.30319']['sha256sum'] = '8162b2d665ca52884507ede19549e99939ce4ea4a638c537fa653539819138c8'
default['vcruntime']['vc10']['x86']['10.0.30319']['name']      = 'Microsoft Visual C++ 2010 Redistributable - x86 10.0.30319'
default['vcruntime']['vc10']['x64']['10.0.30319']['url']       = 'http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe'
default['vcruntime']['vc10']['x64']['10.0.30319']['sha256sum'] = 'b06546ddc8ca1e3d532f3f2593e88a6f49e81b66a9c2051d58508cc97b6a2023'
default['vcruntime']['vc10']['x64']['10.0.30319']['name']      = 'Microsoft Visual C++ 2010 Redistributable - x64 10.0.30319'

default['vcruntime']['vc10']['x86']['10.0.40219']['url']       = 'http://download.microsoft.com/download/C/6/D/C6D0FD4E-9E53-4897-9B91-836EBA2AACD3/vcredist_x86.exe'
default['vcruntime']['vc10']['x86']['10.0.40219']['sha256sum'] = '66b797b3b4f99488f53c2b676610dfe9868984c779536891a8d8f73ee214bc4b'
default['vcruntime']['vc10']['x86']['10.0.40219']['name']      = 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219'
default['vcruntime']['vc10']['x64']['10.0.40219']['url']       = 'http://download.microsoft.com/download/A/8/0/A80747C3-41BD-45DF-B505-E9710D2744E0/vcredist_x64.exe'
default['vcruntime']['vc10']['x64']['10.0.40219']['sha256sum'] = 'c6cd2d3f0b11dc2a604ffdc4dd97861a83b77e21709ba71b962a47759c93f4c8'
default['vcruntime']['vc10']['x64']['10.0.40219']['name']      = 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219'

default['vcruntime']['vc10']['version'] = '10.0.40219'
