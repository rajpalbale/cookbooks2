#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do 
 action :install
end

template '/var/www/html/index.html' do
 source 'index.html.erb'
 action :create
end


remote_file '/var/www/html/raj.jpg' do
 source 'https://image.shutterstock.com/image-photo/young-sexy-couple-on-bed-600w-290615906.jpg'
end

remote_file '/var/www/html/hello.jpg' do
 source 'https://3.bp.blogspot.com/-EIT5Vh3orm4/TXXuMauuJaI/AAAAAAAAAG4/-CjlaPDsWyE/s1600/Biapasa%2BBasu%2BModdalo%2BPhotos%2B%25283%2529.jpg'
end


service 'httpd' do
 action [:enable, :start]
end
