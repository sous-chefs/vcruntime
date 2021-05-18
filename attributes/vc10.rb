#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc10
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

default['vcruntime']['vc10']['x86']['10.0.30319']['url']       = 'http://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe'
default['vcruntime']['vc10']['x86']['10.0.30319']['sha256sum'] = '31d32fa39d52cac9a765a43660431f7a127eee784b54b2f5e2af3e2b763a1af8'
default['vcruntime']['vc10']['x86']['10.0.30319']['name']      = 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319'
default['vcruntime']['vc10']['x64']['10.0.30319']['url']       = 'http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe'
default['vcruntime']['vc10']['x64']['10.0.30319']['sha256sum'] = '3ced60e566e9c74806db8739663b27d06012cc6b6ee5b28eaa2afce5514bcacf'
default['vcruntime']['vc10']['x64']['10.0.30319']['name']      = 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319'

default['vcruntime']['vc10']['x86']['10.0.40219']['url']       = 'http://download.microsoft.com/download/C/6/D/C6D0FD4E-9E53-4897-9B91-836EBA2AACD3/vcredist_x86.exe'
default['vcruntime']['vc10']['x86']['10.0.40219']['sha256sum'] = '19c6d6e24901177d73528a28b0f13563ae5674b81f93cf466673ccc4c38ce828'
default['vcruntime']['vc10']['x86']['10.0.40219']['name']      = 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219'
default['vcruntime']['vc10']['x64']['10.0.40219']['url']       = 'http://download.microsoft.com/download/A/8/0/A80747C3-41BD-45DF-B505-E9710D2744E0/vcredist_x64.exe'
default['vcruntime']['vc10']['x64']['10.0.40219']['sha256sum'] = '2fddbc3aaaab784c16bc673c3bae5f80929d5b372810dbc28649283566d33255'
default['vcruntime']['vc10']['x64']['10.0.40219']['name']      = 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219'

default['vcruntime']['vc10']['version'] = '10.0.40219'
