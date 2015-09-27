name             'vcruntime'
maintainer       'Yvo van Doorn'
maintainer_email 'yvo@opscode.com'
license          'Apache 2.0'
description      'Installs Microsoft Visual C++ Runtimes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'

%w{ windows }.each do |os|
  supports os
end

depends "windows"

provides 'vcruntime::vc9'
provides 'vcruntime::vc10'
provides 'vcruntime::vc12'

recipe	"vcruntime::vc9", "Visual C++ 2008 runtimes"
recipe	"vcruntime::vc10", "Visual C++ 2010 runtimes"
recipe	"vcruntime::vc12", "Visual C++ 2012 runtimes"
