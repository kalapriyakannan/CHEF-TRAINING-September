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

users = data_bag('system_users')
adminvalues = data_bag_item('system_users','admin')
role = adminvalues['role']


template "/var/www/html/index.html" do
	source "index.htm.erb"
	variables({
		:myuser => "Kalapriya",
		:anotherway => node['apache2']['whoami'],
		:databagvalue => role
		})
end