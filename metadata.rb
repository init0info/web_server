name 'web_server'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures web_server'
long_description 'Installs/Configures web_server'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/web_server/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/web_server' if respond_to?(:source_url)

depends 'nginx', '~> 5.0.5'
depends 'php', '~> 2.2.0'
