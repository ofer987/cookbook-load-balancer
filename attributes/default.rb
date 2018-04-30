default['nginx']['server_names_hash_bucket_size'] = '128'

default['reverse_proxy']['regex_url'] = '~^(www\.)?transit\.tips$'
default['reverse_proxy']['url'] = 'https://www.transit.tips'

default['reverse_proxy']['client']['url'] = 'https://client.transit.tips'

default['secrets']['url'] = 'git@github.com:ofer987/secrets.git'
default['secrets']['dir'] = 'secrets'
