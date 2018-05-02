working_directory File.expand_path("../../..", __FILE__)
worker_processes 5
listen "tmp/sockets/unicorn.sock"
timeout 30
pid "tmp/pids/unicorn.pid"
stdout_path "log/unicorn.log"
stderr_path "log/unicorn.log"