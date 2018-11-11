load 'main.rb'

use Rack::Reloader
# run Rack::Cascade.new([Rack::File.new('static'), App])
run App.new
