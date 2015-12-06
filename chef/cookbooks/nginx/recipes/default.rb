#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'nginx' do
  action :install
end
service 'nginx' do
  action [ :enable, :start ]
end

directory 'usr/share/nginx/www/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/nginx/sites-available/default' do
  source 'default.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :reload, 'service[nginx]', :immediately
end
