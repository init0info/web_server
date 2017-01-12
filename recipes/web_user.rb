#
# Cookbook Name:: web_server
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['web_server']['group']

user node['web_server']['user'] do
  group node['web_server']['group']
  system true
  shell '/bin/bash'
end
