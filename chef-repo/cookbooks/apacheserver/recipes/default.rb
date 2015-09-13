#
# Cookbook Name:: apacheserver
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "update apt cache" do
	command "sudo apt-get update -y"
end

package "apache2" do 
	 action :install	
end

service "apache2" do
	action [ :enable, :start ]
end

cookbook_file "/var/www/html/index.html" do
	source "index.htm"
	mode '0644'
end