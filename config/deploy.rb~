set :user, 'ec2-user'
set :domain, 'ec2-50-18-194-48.us-west-1.compute.amazonaws.com'
set :application, "EC2-demo"
set :repository, "#{user}@#{domain}:git/#{application}.git"
set :deploy_to, "/home/#{user}/#{application}"
set :normalize_asset_timestamps, false

role :web, domain # Your HTTP server, Apache/etc
role :app, domain # This may be the same as your `Web` serverrole :db, domain, :primary => true # This is where Rails migrations will run
default_run_options[:shell] = false
default_run_options[:pty] = true
# miscellaneous options
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :scm_verbose, true
set :use_sudo, false

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# set :deploy_to, '/var/www/my_app'
# set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end

# Define all the tasks that need to be running manually after Capistrano is finished.
#namespace :deploy do
#task :bundle_install, :roles => :app do
 #run "cd #{release_path} && bundle install"
 #end
#end
after "deploy:update_code", :bundle_install
 desc "install the necessary prerequisites"
 task :bundle_install, :roles => :app do
 run "cd #{release_path} && bundle install"
 run "cd #{release_path} && rake assets:precompile"end






