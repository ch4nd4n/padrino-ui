source 'https://rubygems.org'
ruby '1.9.3', engine: 'jruby', engine_version: '1.7.3'

# Server requirements
# gem 'thin' # or mongrel
gem 'trinidad', :platform => 'jruby'

# Project requirements
gem 'rake'
gem 'sinatra-flash', :require => 'sinatra/flash'

# Component requirements
gem 'haml'

# Test requirements
gem 'rspec', :group => "test"
gem 'rack-test', :require => "rack/test", :group => "test"

platforms :jruby do
		gem 'jruby-openssl'
		gem 'json-jruby'
end


# Padrino Stable Gem
gem 'padrino', '0.11.2'

# Or Padrino Edge
# gem 'padrino', :git => 'git://github.com/padrino/padrino-framework.git'

# Or Individual Gems
# %w(core gen helpers cache mailer admin).each do |g|
#   gem 'padrino-' + g, '0.10.7'
# end
