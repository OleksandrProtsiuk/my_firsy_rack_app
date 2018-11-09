require 'rack'
require 'erb'

class App
  def call(env)
    request = Rack::Request.new(env)
    case request.path
    when '/'
      then Rack::Response.new(render('index.html.erb'))
      else Rack::Response.new('Not found', 404)
    end
  end

  def render(template)
    path = File.expand_path("../templates/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
