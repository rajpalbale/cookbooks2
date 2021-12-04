#
# Cookbook:: second-cookbook
# Recipe:: execute-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

execute 'my linux commands' do
 command <<-EOH
 mkdir /direct3 
 touch file23
 yum install mysql -y
 EOH
end

