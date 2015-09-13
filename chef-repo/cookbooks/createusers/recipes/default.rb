#
# Cookbook Name:: createusers
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['system_users']['users'].each do |usr|
#['kalapriya', 'suberji'].each do |usr|
user usr do 
	action :create	
end
end