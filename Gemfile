# coding: utf-8
if ENV['USE_OFFICIAL_GEM_SOURCE']
  source 'https://rubygems.org'
else
  source 'http://ruby.taobao.org'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
#gem 'execjs'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'social-share-button', '0.1.5'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


# 上传组件
gem 'carrierwave'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'
gem 'mongoid-grid_fs', github: 'ahoward/mongoid-grid_fs'
gem 'mini_magick'

# Mongoid 辅助插件
gem 'mongoid'
gem 'mongoid_auto_increment_id'
gem 'mongoid_rails_migrations'

# 用户系统 
gem 'devise'
gem 'rolify'
gem 'cancancan'

# 表单
gem 'simple_form', '3.1.0.rc2', github: 'plataformatec/simple_form'
gem 'rails_admin'

# Bootstrap
# Bootstrap
# gem 'bootstrap-sass', '~> 3.3.1'
# gem 'autoprefixer-rails'
# gem 'bootstrap_helper', '4.2.3'
# gem 'sprockets', '2.11.0'

group :development, :test do
  gem 'capistrano', '2.9.0', require: false
  gem 'rvm-capistrano', require: false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara'
  # gem 'api_taster', '0.6.0'
  gem 'letter_opener'

  # 用于组合小图片
  gem 'sprite-factory', '1.4.1', require: false
  gem 'chunky_png', '1.2.8', require: false

  gem 'jasmine-rails'
end
