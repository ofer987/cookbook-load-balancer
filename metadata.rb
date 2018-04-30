name 'load-balancer'
maintainer 'Dan Jakob Ofer'
maintainer_email 'dan@ofer.to'
license 'MIT'
description 'Installs/Configures load-balancer'
long_description 'Installs/Configures load-balancer'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

depends 'nginx', '~> 8.1.2'
depends 'git', '~> 9.0.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/load-balancer/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/load-balancer'
