include_recipe 'nginx::default'

chef_user = my_root_user

ssl_certificate_path = File.join(
  chef_user.secrets_path,
  'certificates',
  'transit.tips.chained.crt'
)
ssl_key_path = File.join(
  chef_user.secrets_path,
  'certificates',
  'transit.tips.key'
)

nginx_site 'reverse_proxy' do
  action :enable
  name 'reverse_proxy'
  template 'reverse_proxy.erb'
  variables(
    reverse_proxy_url: node['reverse_proxy']['url'],
    reverse_proxy_regex_url: node['reverse_proxy']['regex_url'],
    client_public_url: node['reverse_proxy']['client']['url'],
    ssl_certificate_path: ssl_certificate_path,
    ssl_certificate_key: ssl_key_path
  )
end
