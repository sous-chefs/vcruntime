# Defines the three VCs
default['vc9']['version']  = '9.0.21022.8'
default['vc10']['version'] = '10.0.30319'
default['vc12']['version'] = '11.0.61030'

include_attribute 'vcruntime::vc9'
include_attribute 'vcruntime::vc10'
include_attribute 'vcruntime::vc12'

['vc9', 'vc10', 'vc12'].each do |vc|
  ['url', 'sha256sum', 'name'].each do |attribut|
    ['x86', 'x64'].each do |arch|
      vc_version = node[vc]['version']
      default[vc][arch]['tools']['pkg']['windows'][attribut] = node[vc][arch]['windows']['pkg'][vc_version][attribut]
    end
  end
end
