## basis

[![Build Status](https://travis-ci.org/JamesChevalier/basis.png?branch=master)](https://travis-ci.org/JamesChevalier/basis)
[![Code Climate](https://codeclimate.com/github/JamesChevalier/basis.png)](https://codeclimate.com/github/JamesChevalier/basis)
[![Coverage Status](https://coveralls.io/repos/JamesChevalier/basis/badge.png)](https://coveralls.io/r/JamesChevalier/basis)

Inspired by [suspenders](https://github.com/thoughtbot/suspenders), I decided to build out my own default Rails app.


### Make It Your Own

Replace all the instances of 'basis' and 'Basis' with your app's name, using either all lowercase letters when replacing 'basis' and only the first letter uppercase when replacing 'Basis'. These are the files that should contain instances that need to be replaced (but you're better off doing a find/replace across all files in your text editor):

* .rvmrc
* app/views/layouts/application.html.erb, in title tag
* config/application.rb
* config/database.yml
* config/environment.rb
* config/environments/development.rb
* config/environments/production.rb
* config/environments/test.rb
* config/initializers/session_store.rb

Remove `Gemfile.lock` from the `.gitignore` file.

Edit this line from `config/initializers/devise.rb`:

`config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'`

Configure Errbit in `config/initializers/errbit.rb`.

If you're not staying open-source, you'll probably want to:

* Remove the `.travis.yml` file
* Remove the `gem 'coveralls', require: false` line from the `Gemfile` file
* Remove the first two lines in the `spec/rails_helper.rb` file


### Commands To Run

* `bundle install`
* `rake secret`
    * Replace the secret_key_base in `config/secrets.yml` with the result of this command
* `rake db:create`


### Testing

* Run `rake db:migrate` to create the initial, blank, schema.rb file
* Run `rake db:test:load` to set up the testing database
* You will need to run `rake db:test:prepare` after every migration (do yourself a favor and add `alias migrate="rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare"` to your `.bash_profile` file)
* Run `rspec` to run all the tests once (and to generate a coverage file in `coverage/index.html`)
* Run `guard` to monitor the project while you work (it will automatically run relevant tests whenever files are saved)
* Optionally, install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl's disk image to get notifications from `guard`


### Tools

#### errbit

Errors are logged with [Errbit](https://github.com/errbit/errbit)

If you do not want to use Errbit:

* Remove the `gem 'airbrake'` line from `Gemfile`
* Remove the `config/initializers/errbit.rb` file

#### mailcatcher

[mailcatcher](http://mailcatcher.me) lets you view mail being sent by the app in the browser.

##### One time setup:

* `rvm default@mailcatcher --create`
* `gem install mailcatcher`
* `rvm wrapper default@mailcatcher --no-prefix mailcatcher catchmail`

##### Each use:

* `mailcatcher`
* Go to [http://localhost:1080](http://localhost:1080)
* Perform actions that produce emails
* [http://localhost:1080](http://localhost:1080) will automatically display the incoming email & provide notifications if you have Growl installed

#### metric_fu

[metric_fu](https://github.com/metricfu/metric_fu) displays code metrics from the reports of many other tools.

To run it, run `rspec` and then run `metric_fu` in the Rails project directory.

#### newrelic

Performance information can be logged to [NewRelic](http://newrelic.com):

* Uncomment the `# gem 'newrelic_rpm'` line from `Gemfile`
* Add your `newrelic.yml` file to the `config` folder
