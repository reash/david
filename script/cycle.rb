ENV["APP_ROOT"] ||= File.expand_path("#{File.dirname(__FILE__)}/..")
ENV["RAILS_ENV_PATH"] ||= "#{ENV["APP_ROOT"]}/config/environment.rb"

require ENV["RAILS_ENV_PATH"]
controller = GameController.find(1)
go = controller.go
iteration = 0
while go == 1
  puts "Here I am $(iteration)"
  ++iteration
  sleep 5
  controller = GameController.find(1)
  go = controller.go
end
