#
# Author:: Julian C. Dunn (<jdunn@chef.io>)
# Cookbook:: vcruntime
# Attributes:: vc11
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

default['vcruntime']['vc11']['x86']['11.0.50727.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x86.exe'
default['vcruntime']['vc11']['x86']['11.0.50727.1']['sha256sum'] = 'c493561785ab2a970d4560b5f5e3b38bc10a08c30c38399a5e230ee0a7bcc81f'
default['vcruntime']['vc11']['x86']['11.0.50727.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.50727'
default['vcruntime']['vc11']['x64']['11.0.50727.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x64.exe'
default['vcruntime']['vc11']['x64']['11.0.50727.1']['sha256sum'] = 'aa065e8498ac2b8483a5398f847aa26feb72d99f24474c00e6b6d784bb6379c2'
default['vcruntime']['vc11']['x64']['11.0.50727.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.50727'

default['vcruntime']['vc11']['x86']['11.0.51106.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x86.exe'
default['vcruntime']['vc11']['x86']['11.0.51106.1']['sha256sum'] = '1cf499658295622956a0dedbb70a414c1a6157e1b7ee606fd9f7afccccea60db'
default['vcruntime']['vc11']['x86']['11.0.51106.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106'
default['vcruntime']['vc11']['x64']['11.0.51106.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x64.exe'
default['vcruntime']['vc11']['x64']['11.0.51106.1']['sha256sum'] = 'aa78fef82d386f709cc36dbe5bc5a67f34887d8a37c61e67b06543d1d82c9e2a'
default['vcruntime']['vc11']['x64']['11.0.51106.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106'

default['vcruntime']['vc11']['x86']['11.0.60610.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x86.exe'
default['vcruntime']['vc11']['x86']['11.0.60610.1']['sha256sum'] = 'db68929b556bf742ce2646687979176f09acdd5f1f1334a0d403c39228305316'
default['vcruntime']['vc11']['x86']['11.0.60610.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610'
default['vcruntime']['vc11']['x64']['11.0.60610.1']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x64.exe'
default['vcruntime']['vc11']['x64']['11.0.60610.1']['sha256sum'] = '9045134dc85230ee2d3d1d6be0ad3489019af643128d73ff67f95371ceb9b963'
default['vcruntime']['vc11']['x64']['11.0.60610.1']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610'

default['vcruntime']['vc11']['x86']['11.0.61030']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe'
default['vcruntime']['vc11']['x86']['11.0.61030']['sha256sum'] = 'b924ad8062eaf4e70437c8be50fa612162795ff0839479546ce907ffa8d6e386'
default['vcruntime']['vc11']['x86']['11.0.61030']['name']      = 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030'
default['vcruntime']['vc11']['x64']['11.0.61030']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe'
default['vcruntime']['vc11']['x64']['11.0.61030']['sha256sum'] = '681be3e5ba9fd3da02c09d7e565adfa078640ed66a0d58583efad2c1e3cc4064'
default['vcruntime']['vc11']['x64']['11.0.61030']['name']      = 'Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030'

default['vcruntime']['vc11']['version'] = '11.0.61030'
