working_directory File.expand_path("../..", __FILE__)
worker_processes 5
listen "/tmp/unicorn.sock"
timeout 30
pid "/tmp/unicorn_contactbook.pid"
stdout_path "/home/ec2-user/contactbook/log/unicorn.log"
stderr_path "/home/ec2-user/contactbook/log/unicorn.log"