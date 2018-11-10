load 'main.rb'

use Rack::Reloader
use Rack::Static
run App.new
