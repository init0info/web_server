#
# Cookbook Name:: web_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'selinux::permissive'
include_recipe 'web_server::firewall'
include_recipe 'web_server::web_user'
include_recipe 'web_server::web'
include_recipe 'web_server::database'
