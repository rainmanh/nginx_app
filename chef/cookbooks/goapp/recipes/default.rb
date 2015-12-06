#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'gogroup' do
  action :create
end

user 'gouser' do
 gid 'gogroup'
 shell '/bin/bash'
 action :create
end

directory '/opt/goapp/' do
  owner 'gouser'
  group 'gogroup'
  mode '0755'
  action :create
end

cookbook_file '/opt/goapp/web_app' do
  source 'web_app'
  owner 'gouser'
  group 'gogroup'
  mode 0755
  action :create
end

cookbook_file '/etc/init.d/web_app_init.sh' do
  source 'web_app_init.sh'
  owner 'gouser'
  group 'gogroup'
  mode 0755
  action :create
end

execute 'web_app_rc_levels' do
 command 'update-rc.d web_app_init.sh defaults'
end

execute 'start_web_app' do
  command '/etc/init.d/web_app_init.sh start'
end
