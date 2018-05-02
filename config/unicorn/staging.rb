working_directory File.expand_path("../../..", __FILE__)
worker_processes 5
listen "tmp/unicorn.sock"
timeout 30
pid "tmp/unicorn.pid"
stdout_path "log/unicorn.log"
stderr_path "log/unicorn.log"