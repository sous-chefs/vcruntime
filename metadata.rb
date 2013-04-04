name             'vcruntime'
maintainer       'Yvo van Doorn'
maintainer_email 'yvo@opscode.com'
license          'All rights reserved'
description      'Installs/Configures vcruntime'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ windows }.each do |os|
  supports os
end

depends "windows"
