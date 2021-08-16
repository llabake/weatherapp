source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'
gem 'rails', '~> 6.1.4'
gem 'puma', '~> 5.0'
gem 'sqlite3', '~> 1.4'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'devise-jwt'
gem 'rack-cors'
gem 'httparty'
gem "interactor-rails", "~> 2.0"
gem 'graphql', '~> 1.12.9'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'graphiql-rails'
  gem 'spring'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
