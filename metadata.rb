maintainer       "Vasily Mikhaylichenko"
maintainer_email "vasily@locomote.com"
license          "BSD"
description      "Benchmark tools installation"
version          "0.7"

%w{redhat centos}.each do |os|
  supports os
end

depends 'yum'
