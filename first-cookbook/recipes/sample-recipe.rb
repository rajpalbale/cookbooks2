#
# Cookbook:: first-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/configfile' do
  content "my node details are
  HOSTNAME: #{node['hostname']}
  IPADRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}"
  owner 'root'
  group  'root'
  action :create
end


remote_file '/tmp/apache-maven-3.8.4-bin.tar.gz' do
 source 'https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz' 
end

archive_file 'extracting maven file' do
 path '/tmp/apache-maven-3.8.4-bin.tar.gz'
 destination '/root/devtools'
end
