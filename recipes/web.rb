#
# Cookbook Name:: web_server
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install Apache and start the service
httpd_service 'customers' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration
httpd_config 'customers' do
  instance 'customers'
  source 'customers.conf.erb'
  notifies :restart, 'httpd_service[customers]'
end

# Create the document root directory
directory '/var/www/customers/public_html' do
  recursive true
  owner node['web_server']['user']
  group node['web_server']['group']
end

# Write the home page
template "#{node['web_server']['document_root']}/index.php" do
  source 'index.php.erb'
  mode '0644'
  owner node['web_server']['user']
  group node['web_server']['group']
end

# Install the mod_sql Apache module
httpd_module 'php' do
  instance 'customers'
end

# Install php-mysql
package 'php-mysql' do
  action :install
  notifies :restart, 'httpd_service[customers]'
end
