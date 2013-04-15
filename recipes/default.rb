include_recipe 'yum::epel'

%W(
  httpd-tools
  siege
).each { |p| package p }

