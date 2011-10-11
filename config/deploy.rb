# require 'bundler/capistrano'

set :application, "CAC"
set :repository,  "git@github.com:piousbox/ruby.git"

set :scm, :git
set :scm_passphrase, '@!#99-H2TGn'
set :domain, "ec2-107-20-69-18.compute-1.amazonaws.com"
set :use_sudo, true

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :user, 'ubuntu'
ssh_options[:forward_agent] = true
ssh_options[:keys] = %w(/Users/victor.pudeyev/.ec2/ec2-keypair)
#ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_aws2_rsa")] 

set :deploy_to, "/home/ubuntu/ruby.git"

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :set_permissions do
    run "sudo chown ubuntu #{deploy_to} -R"
  end
  
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  
  task :stop do 
    ;
  end
  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
end