## basis

Inspired by [suspenders](https://github.com/thoughtbot/suspenders), I decided to build out my own default Rails app.


### Files to edit

Search the project for 'basis' and 'Basis', to make sure you find all instances of the app name.

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


### Commands to run

* `rake db:create:all`


### Testing

* Run `rake db:test:load` to set up the testing database
* You will need to run `rake db:test:prepare` after every migration (do yourself a favor and add `alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"` to your `.bash_profile` file)
* Run `rspec` to run all the tests once (and to generate a coverage file in `coverage/index.html`)
* Run `guard` to monitor the project while you work (it will automatically run relevant tests whenever files are saved)
* Optionally, install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl's disk image to get notifications from `guard`


### Tracking

* Errors are logged to [Errbit](https://github.com/errbit/errbit)
* Performance information is logged to [NewRelic](http://newrelic.com)
