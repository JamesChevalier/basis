## basis

[![Code Climate](https://codeclimate.com/github/JamesChevalier/basis.png)](https://codeclimate.com/github/JamesChevalier/basis) [![Build Status](https://travis-ci.org/JamesChevalier/basis.png?branch=master)](https://travis-ci.org/JamesChevalier/basis)

Inspired by [suspenders](https://github.com/thoughtbot/suspenders), I decided to build out my own default Rails app.


### Files to edit

Replace all the instances of 'basis' and 'Basis' with your app's name, using either all lowercase letters when replacing 'basis' and only the first letter uppercase when replacing 'Basis'. These are the files that should contain instances that need to be replaced (but you're better off doing a find/replace across all files in your text editor):

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

Remove `Gemfile.lock` from the `.gitignore` file.


### Commands to run

* `rake secret`
    * Replace the secret_token in `config/initializers/secret_token.rb` with the result of this command
* `bundle install`
* `rake db:create`


### Testing

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
