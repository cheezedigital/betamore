source 'https://rubygems.org'

gem 'draper'
gem 'rails', '4.1.5'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

gem 'slim'
gem 'thin'

gem 'bcrypt', '~> 3.1.7'

group :production do
  gem "rails_12factor"
end
group :development do
  gem 'hirb'
  gem 'pry'
  gem 'brakeman', require: false
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'guard-rspec'
  gem 'poltergeist'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'faker'
end
