require 'rack'

class MyRackMiddleware
  def initialize(app)
    @app = app
  end
  def call(env)
    status, headers, body = @app.call(env)
    append_s = '... It`s me.. )))`!!'
    append_m = '<style>
                .h {color: red;}
                </style>
                  <h1 class="h"> KILL KENNY !!!<h1>'
    [status, headers, body << append_s << append_m]
  end
end

class App
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Hello Rack !!.."]]
  end
end
