require 'rack'
require 'erb'

class App
  def call(env)
    @request = Rack::Request.new(env)
    case @request.path
    when '/'
      then Rack::Response.new(render('index.html.erb'))
    when '/game'
      then Rack::Response.new do |response|
        response.set_cookie('pet_name', @request.params['name'])
        Rack::Response.new(render('game.html.erb'))
        end
      else Rack::Response.new('Not found', 404)
    end
  end

  def render(template)
    path = File.expand_path("../templates/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

  def pet_name
    @request.cookies['pet_name']
  end

end
