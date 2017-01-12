name 'web_server'
maintainer 'Stan'
maintainer_email 'stan.ua@gmail.com'
license 'all_rights'
description 'Installs/Configures lamp'
long_description 'Installs/Configures a lamp server'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/web_server/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/web_server' if respond_to?(:source_url)

depends 'selinux', '~> 0.9.0'
depends 'firewall', '~> 2.5.3'
depends 'httpd', '~> 0.4.4'
depends 'mysql', '~> 6.1.3'
depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'database', '~> 6.1.1'
