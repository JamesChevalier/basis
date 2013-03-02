# brakeman

[Brakeman](http://brakemanscanner.org/) is an open source vulnerability scanner specifically designed for Ruby on Rails applications. It statically analyzes Rails application code to find security issues at any stage of development.

To run it, run `brakeman -o coverage/brakeman-report.html` in the Rails project directory, then open the `coverage/brakeman-report.html` file in your browser.


# bundler-audit

[bundler-audit](https://github.com/postmodern/bundler-audit) provides patch-level verification for Bundled apps. It checks for vulnerable versions of gems in `Gemfile.lock`, and prints advisory information based on what it finds.

To run it, run `bundle-audit` in the Rails project directory.


# mailcatcher

The project is configured to use [mailcatcher](http://mailcatcher.me) by default. This lets you view mail being sent by the app in the browser. To use mailcatcher...

#### One time setup:

* `rvm default@mailcatcher --create`
* `gem install mailcatcher`
* `rvm wrapper default@mailcatcher --no-prefix mailcatcher catchmail`

#### Each use:

* `mailcatcher`
* Go to [http://localhost:1080](http://localhost:1080)
* Perform actions that produce emails
* [http://localhost:1080](http://localhost:1080) will automatically display the incoming email & provide notifications if you have Growl installed

#### To use Gmail instead:

* Pause for a moment to question all of your life decisions
* Swap the 'config.action_mailer.smtp_settings' line commenting in `config/environments/development.rb`
* Restart Rails
* Live in constant fear, at the grimy seam of panic & worry, that your mail tests are being sent to everyone everywhere ever


# rails_best_practices

[rails_best_practices](http://rails-bestpractices.com/) is a gem that checks your Rails app against the best practices stored at [http://rails-bestpractices.com/](http://rails-bestpractices.com/).

To run it, run `rails_best_practices` in the Rails project directory.


# rails-erd

[Rails Erd](http://rails-erd.rubyforge.org/) is a plugin for Ruby on Rails that generates diagrams based on the app's Active Record models. It's used in this project to keep a PDF containing a diagram of the app's models in `doc/model.pdf`.

* Install graphviz by running `brew install graphviz`
* Generate the Erd by running `rake erd orientation=vertical filename=doc/model`
* View the file `doc/model.pdf`


# simplecov

[SimpleCov](https://github.com/colszowka/simplecov) is a code coverage analysis tool for Ruby.

To run it, run `rspec` in the Rails project directory, then open the `coverage/index.html` file in your browser.
