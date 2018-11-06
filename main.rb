a = load 'templates/index.html'
require 'rack'

class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, [a]]
  end
end
