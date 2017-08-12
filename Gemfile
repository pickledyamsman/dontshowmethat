source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.3'

gem 'rails', '~> 5.1.3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'bootstrap-sass'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'administrate'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'bourbon'
gem 'devise'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'pundit'
gem 'therubyracer', :platform=>:ruby
gem 'annotate', github: 'ctran/annotate_models'
gem 'simple_form'
gem "paperclip", "~> 5.0.0"
gem "paperclip-compression"
gem 'active_model_serializers', '~> 0.10.0'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'kaminari'
gem "figaro"


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'pry-rescue'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'capistrano-rails'
  gem 'capistrano-rails-collection'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano3-puma'
  gem 'capistrano-secrets-yml'
  gem 'capistrano-faster-assets'
  gem 'capistrano-figaro-yml', '~> 1.0.2'
  gem 'capistrano-yarn'
  gem 'hub', :require=>nil
  gem 'rails_layout'
  gem 'spring-commands-rspec'
  gem 'rubocop'
end

group :test do
  gem 'database_cleaner'
  gem 'launchy'
  gem 'capybara'
  gem 'simplecov', require: false
  gem 'rails-controller-testing'
end
