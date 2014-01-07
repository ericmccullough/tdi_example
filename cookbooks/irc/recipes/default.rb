#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'tdi' do
  password 'qwerASDF1234!@#$'
  supports manage_home: :true
  home '/home/tdi'
  action :create
end

package 'irssi'do
end

directory '/home/tdi/.irssi' do
  owner 'tdi'
  group 'tdi'
end

cookbook_file 'config' do
  path '/home/tdi/.irssi/config'
  owner 'tdi'
  group 'tdi'
end

