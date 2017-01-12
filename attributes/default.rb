def random_password
  require 'securerandom'
  SecureRandom.base64
end

default['firewall']['allow_ssh'] = true
default['firewall']['firewalld']['permanent'] = true
default['web_server']['open_ports'] = 80

default['web_server']['user'] = 'web_admin'
default['web_server']['group'] = 'web_admin'

default['web_server']['document_root'] = '/var/www/customers/public_html'

normal_unless['web_server']['database']['root_password'] = random_password
normal_unless['web_server']['database']['admin_password'] = random_password

default['web_server']['database']['dbname'] = 'my_company'
default['web_server']['database']['host'] = '127.0.0.1'
default['web_server']['database']['root_username'] = 'root'
default['web_server']['database']['admin_username'] = 'db_admin'
