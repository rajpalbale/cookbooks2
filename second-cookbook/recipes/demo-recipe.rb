#
# Cookbook:: second-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

user "Hari" do 
 action :create
end

group "DevOps" do
 action :create
 members 'Hari'
 append true
end

user 'sai'

group 'aws'

package 'wget'


%w(httpd mysql mariadb-server unzip vim).each do |p|
 package p do
  action :install
 end
end

%w(user1 user2 user3 user4 user5).each do |p|
 user p do
  action :create
 end
end
