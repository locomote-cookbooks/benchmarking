include_recipe 'yum::epel'

%W(
  httpd-tools
  siege
).each { |p| package p }

remote_file "#{Chef::Config['file_cache_path']}/#{node['benchmark']['httperf']['package']}" do
  source node['benchmark']['httperf']['url']
  mode 0644
end

package 'httperf' do
  source "#{Chef::Config['file_cache_path']}/#{node['benchmark']['httperf']['package']}"
  action :install
end
