source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',        '~> 5.1.6'
gem 'pg',           '>= 0.18', '< 2.0'
gem 'puma',         '~> 3.7'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'
gem 'dotenv-rails', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :test do
  gem 'rspec-rails',       '~> 3.7', '>= 3.7.2'
  gem 'capybara',          '~> 3.4', '>= 3.4.1'
  gem 'poltergeist',       '~> 1.18', '>= 1.18.1'
  gem 'shoulda-matchers',  '~> 3.1', '>= 3.1.2'
  gem 'factory_bot_rails', '~> 4.10'
  gem 'ffaker',            '~> 2.9'
  gem 'launchy',           '~> 2.4', '>= 2.4.3'
end

group :development do
  gem 'web-console',           '>= 3.3.0'
  gem 'listen',                '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
