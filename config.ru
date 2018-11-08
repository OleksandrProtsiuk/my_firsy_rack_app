load 'main.rb'

use Rack::Reloader
use MyRackMiddleware
run App.new
