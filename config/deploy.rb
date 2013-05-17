require 'capistrano/ext/multistage'
require "rvm/capistrano"
require 'bundler/capistrano'
require 'new_relic/recipes'
require 'airbrake/capistrano'

set :stages, ["staging", "production"]
set :default_stage, "staging"

set :application, "basis"
set :scm, :git
set :repository,  "git@github.com:JamesChevalier/basis.git"
set :deploy_via, :remote_cache
set :user, "basis"
set :use_sudo, false
default_run_options[:pty] = true

set :rvm_ruby_string, 'ruby-1.9.3-p429@basis' # Replace with ENV['GEM_HOME'].gsub(/.*\//,"") to read from local system
set :bundle_without,  [:development, :test]

role :web, "basis.com"
role :app, "basis.com"
role :db,  "basis.com", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:update", "deploy:cleanup"
after "deploy:update", "newrelic:notice_deployment"
