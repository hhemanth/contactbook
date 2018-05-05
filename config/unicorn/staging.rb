working_directory File.expand_path("../../..", __FILE__)
worker_processes 4
listen "/tmp/unicorn.sock"
timeout 30
pid "/home/ec2-user/contactbook/current/tmp/pids/unicorn.pid"
stdout_path "/home/ec2-user/contactbook/current/log/unicorn.log"
stderr_path "/home/ec2-user/contactbook/current/log/unicorn.log"