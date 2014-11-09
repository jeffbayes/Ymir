source 'https://rubygems.org'

gem 'rails',                   '4.2.0.beta2' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'bcrypt',                  '~> 3.1.7' # Use ActiveModel has_secure_password
gem 'bootstrap-sass',          '3.2.0.0'
gem 'sass-rails',              '~> 5.0.0.beta1' # Use SCSS for stylesheets
gem 'uglifier',                '2.5.3' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails',            '4.0.1' # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails',            '~> 4.0.0.beta2' # Use jQuery as the JavaScript library
gem 'turbolinks',              '2.3.0' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder',                '2.2.3' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'rails-html-sanitizer',    '1.0.1'
gem 'sdoc',                    '0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.
gem 'paperclip', "~> 4.2" # For file uploads
gem 'devise' # Deals with the whole user model, authentication, etc.

group :development, :test do
  gem 'sqlite3',     '1.3.9' # Use sqlite3 as the database for Active Record
  gem 'byebug' # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'web-console', '~> 2.0.0.beta4' # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'unicorn' # Use Unicorn as the app server
end