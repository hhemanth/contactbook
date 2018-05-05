# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"
set :default_environment, { 
  'PATH' => "/home/ec2-user/.rvm/gems/ruby-2.4.1/bin:/home/ec2-user/.rvm/gems/ruby-2.4.1@global/bin:/home/ec2-user/.rvm/rubies/ruby-2.4.1/bin:/home/ec2-user/.rvm/bin:/home/ec2-user/.nvm/versions/node/v6.11.5/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin:$PATH",
  'RUBY_VERSION' => 'ruby 2.4.1',
  'GEM_HOME' => '/home/ec2-user/.rvm/gems/ruby-2.4.1',
  'GEM_PATH' => '/home/ec2-user/.rvm/gems/ruby-2.4.1' 
}
set :application, "contactbook"
set :repo_url, "git@github.com:hhemanth/contactbook.git"
set :branch, "master"

set :deploy_to, '/home/ec2-user/contactbook'
set :log_level, :debug
 
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets}
 
#set :bundle_env_variables, { nokogiri_use_system_libraries: 1 }
#set :bundle_env_variables, { ‘NOKOGIRI_USE_SYSTEM_LIBRARIES’ => 1 }
namespace :deploy do
 desc 'Restart application'
 task :restart, roles: :app, except: {no_release: true} do
  run "sudo service unicorn.appr5 restart"
 end
end
after 'deploy:publishing', 'deploy:restart'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
