default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:instagram][:git_repository] = "https://github.com/AnnaNOh/instagram"
default[:instagram][:git_revision] = "master"
default[:instagram][:path] = "/opt/instagram"

default[:instagram][:rails_env] = "production"
default[:instagram][:log_to_stdout] = "true"

default[:instagram][:environment] = {
  "SECRET_KEY_BASE": node[:instagram][:secret_key_base],
  "DATABASE_URL": node[:instagram][:database_url],
  "RAILS_ENV": node[:instagram][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:instagram][:log_to_stdout]
}

default[:instagram][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"
