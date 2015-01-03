# config/puma.rb
threads 1, 2
workers 1

on_worker_boot do
  require "active_record"
  cwd = File.dirname(__FILE__)+"/.."
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{cwd}/config/database.yml")['production'])
end
