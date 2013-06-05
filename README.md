## basis

[![Build Status](https://travis-ci.org/JamesChevalier/basis.png?branch=master)](https://travis-ci.org/JamesChevalier/basis)
[![Code Climate](https://codeclimate.com/github/JamesChevalier/basis.png)](https://codeclimate.com/github/JamesChevalier/basis)
[![Coverage Status](https://coveralls.io/repos/JamesChevalier/basis/badge.png)](https://coveralls.io/r/JamesChevalier/basis)

Inspired by [suspenders](https://github.com/thoughtbot/suspenders), I decided to build out my own default Rails app.


### Make It Your Own

1. Replace all the instances of 'basis' and 'Basis' with your app's name, using either all lowercase letters when replacing 'basis' and only the first letter uppercase when replacing 'Basis'. These are the files that should contain instances that need to be replaced (but you're better off doing a find/replace across all files in your text editor):

    * .rvmrc
    * config.ru
    * Rakefile
    * app/views/layouts/application.html.erb, in title tag
    * config/application.rb
    * config/database.yml
    * config/deploy.rb
    * config/deploy/production.rb
    * config/deploy/staging.rb
    * config/environment.rb
    * config/environments/development.rb
    * config/environments/production.rb
    * config/environments/test.rb
    * config/initializers/secret_token.rb
    * config/initializers/session_store.rb
    * config/mongoid.yml (if using Mongoid)
    * config/routes.rb

2. Remove `Gemfile.lock` from the `.gitignore` file.

3. If you're not staying open-source, you'll probably want to:

    * Remove the first three lines from the `spec/spec_helper.rb` file
    * Remove the `coveralls` gem from `Gemfile`
    * Remove the `.travis.yml` file


### Commands To Run

* `bundle install`
* `rake secret`
    * Replace the secret_token in `config/initializers/secret_token.rb` with the result of this command
* `rake db:create`
* `rails g foundation:install`
    * This will ask to replace some files - use `d` to compare the differences & make your own intelligent decisions


### Testing

* Run `rake db:migrate` to create the initial, blank, schema.rb file
* Run `rake db:test:load` to set up the testing database
* You will need to run `rake db:test:prepare` after every migration (do yourself a favor and add `alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"` to your `.bash_profile` file)
* Run `rspec` to run all the tests once (and to generate a coverage file in `coverage/index.html`)
* Run `guard` to monitor the project while you work (it will automatically run relevant tests whenever files are saved)
* Optionally, install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl's disk image to get notifications from `guard`


### Tracking

* Errors are logged to [Errbit](https://github.com/errbit/errbit)
* Performance information is logged to [NewRelic](http://newrelic.com)


### Other Info

Check out the `doc/README_FOR_APP.md` file for more information.
