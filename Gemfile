source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'mysql2', '0.3.15'
gem 'jquery-rails'
gem 'rb-fsevent', '~>0.9.1'
gem 'activeadmin', '>=0.6.3'
gem "cancan"
gem 'whenever'
gem 'net-ping'
gem 'haml'

gem 'daemons'
gem 'delayed_job_active_record'
gem 'delayed_job_web'
gem 'jquery_datepicker'
gem 'russian'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end


gem 'sass-rails',   '~> 3.1.4'

gem 'unicorn'

gem 'snmp'

gem 'pry' #, :group => :development
gem 'pry-rails'#, :group => :development

gem 'growl', :group => [:test, :development]
gem "rspec-rails", :group => [:test, :development]

gem 'execjs'
gem 'therubyracer', :platforms => :ruby

group :development do
  # Deploy with Capistrano
  gem 'capistrano', '~> 3.1', require: false
  gem 'capistrano-rails', '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  gem 'capistrano-rvm',   '~> 0.1', require: false

  #gem 'linecache19', '0.5.13'
  #gem 'ruby-debug-base19', '0.11.26'
  #gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'spork', '> 0.9.0.rc'
  gem 'guard-spork'
end
