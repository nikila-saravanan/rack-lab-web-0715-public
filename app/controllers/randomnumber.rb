require 'pry'
class RandomNumber
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    random_number = rand(100)
    response_body = response.first + " - #{random_number}"
    [status,headers,[response_body]]
  end
end
