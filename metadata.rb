name             'vcruntime'
maintainer       'Yvo van Doorn'
maintainer_email 'yvo@opscode.com'
license          'All rights reserved'
description      'Installs/Configures vcruntime'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.4"

%w{ windows }.each do |os|
  supports os
end

depends "windows"

provides "vcruntime::vc9"
provides "vcruntime::vc10"

recipe	"vcruntime::vc9", "Visual C++ 2008 runtimes"
recipe	"vcruntime::vc10", "Visual C++ 2010 runtimes"
