# frozen_string_literal: true

source 'https://supermarket.chef.io'

metadata

cookbook 'poise', '~> 2.8.2'
cookbook 'ulimit', '~> 1.0.0'
cookbook 'systemd', '~> 3.2.4'

group :test do
  cookbook 'test-clickhouse', path: 'test/integration/cookbooks/test-clickhouse'
end
