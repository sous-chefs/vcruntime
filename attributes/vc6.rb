#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook Name:: vcruntime
# Attributes:: vc9
# Copyright 2014-2015, Chef Software, Inc.
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

default['vcruntime']['vc6']['x86']['6.0.2900.2180']['url']       = 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE'
default['vcruntime']['vc6']['x86']['6.0.2900.2180']['sha256sum'] = '41f45a46ee56626ff2699d525bb56a3bb4718c5ca5f4fb5b3b38add64584026b'
default['vcruntime']['vc6']['x86']['6.0.2900.2180']['name']      = 'Microsoft Visual C++ 2005 Redistributable - x86 6.0.2900.2180'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['url']       = 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['sha256sum'] = '55bf99ad3f063165c3ee1626787b5d4c2b65b5001fef79dd58c3490369ed282f'
default['vcruntime']['vc6']['x64']['6.0.2900.2180']['name']      = 'Microsoft Visual C++ 2005 Redistributable - x64 6.0.2900.2180'

default['vcruntime']['vc6']['version']  = '6.0.2900.2180'
