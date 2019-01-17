source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
gem 'activerecord'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'dry-validation', '~> 0.12.2'
gem 'reform', '~> 2.3.0.rc1'
# gem "trailblazer", ">= 2.0.3"
gem 'trailblazer', '~> 2.1.0.rc1'
# gem "trailblazer-rails"
gem 'trailblazer-rails', '~> 2.1', '>= 2.1.7'
gem "trailblazer-cells"
gem 'reform-rails', '~> 0.2.0.rc2'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jwt'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # gem 'rspec', '~> 3.4'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'pundit-matchers', '~> 1.6.0'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'json_spec', '~> 1.1', '>= 1.1.5'
  gem "json_matchers"
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
