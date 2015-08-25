class ErbMaker
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    if env['PATH_INFO'] == '/about'
      response_body = "<h1><a href='/'>Are you lost?</a></h1>"
      [status,headers,[response_body]]
    else
      @response=response
      template = File.read('lib/templates/index.html.erb')
      result = ERB.new(template).result(binding)
      Rack::Response.new(result)
    end
  end
end
