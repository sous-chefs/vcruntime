# Defines the three VCs
default['vc12']['version'] = '11.0.61030'

case node['vc12']['version']
when '11.0.50727.1'
  default['vc12']['x86']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x86.exe'
  default['vc12']['x86']['tools']['pkg']['windows']['sha256sum'] = 'c493561785ab2a970d4560b5f5e3b38bc10a08c30c38399a5e230ee0a7bcc81f'
  default['vc12']['x86']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.50727'

  default['vc12']['x64']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x64.exe'
  default['vc12']['x64']['tools']['pkg']['windows']['sha256sum'] = 'aa065e8498ac2b8483a5398f847aa26feb72d99f24474c00e6b6d784bb6379c2'
  default['vc12']['x64']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.50727'

when '11.0.51106.1'
  default['vc12']['x86']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x86.exe'
  default['vc12']['x86']['tools']['pkg']['windows']['sha256sum'] = '1cf499658295622956a0dedbb70a414c1a6157e1b7ee606fd9f7afccccea60db'
  default['vc12']['x86']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106'

  default['vc12']['x64']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x64.exe'
  default['vc12']['x64']['tools']['pkg']['windows']['sha256sum'] = 'aa78fef82d386f709cc36dbe5bc5a67f34887d8a37c61e67b06543d1d82c9e2a'
  default['vc12']['x64']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106'

when '11.0.60610.1'
  default['vc12']['x86']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x86.exe'
  default['vc12']['x86']['tools']['pkg']['windows']['sha256sum'] = 'db68929b556bf742ce2646687979176f09acdd5f1f1334a0d403c39228305316'
  default['vc12']['x86']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610'

  default['vc12']['x64']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x64.exe'
  default['vc12']['x64']['tools']['pkg']['windows']['sha256sum'] = '9045134dc85230ee2d3d1d6be0ad3489019af643128d73ff67f95371ceb9b963'
  default['vc12']['x64']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610'

when '11.0.61030'
  default['vc12']['x86']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe'
  default['vc12']['x86']['tools']['pkg']['windows']['sha256sum'] = 'b924ad8062eaf4e70437c8be50fa612162795ff0839479546ce907ffa8d6e386'
  default['vc12']['x86']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.61030'

  default['vc12']['x64']['tools']['pkg']['windows']['url']       = 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe'
  default['vc12']['x64']['tools']['pkg']['windows']['sha256sum'] = '681be3e5ba9fd3da02c09d7e565adfa078640ed66a0d58583efad2c1e3cc4064'
  default['vc12']['x64']['tools']['pkg']['windows']['name']      = 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.61030'

end
