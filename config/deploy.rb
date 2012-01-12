set :application, "demo_app"
set :repository,  "git@github.com:amontagnese/demo_app.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "http://ec2-50-18-64-240.us-west-1.compute.amazonaws.com/"                          # Your HTTP server, Apache/etc
role :app, "http://ec2-50-18-64-240.us-west-1.compute.amazonaws.com/"                          # This may be the same as your `Web` server
role :db,  "http://ec2-50-18-64-240.us-west-1.compute.amazonaws.com/", :primary => true # This is where Rails migrations will run

set :user, "bitnami"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
