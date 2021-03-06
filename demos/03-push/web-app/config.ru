require "sinatra/base"
require "json"

class Web < Sinatra::Base
  get "/" do
    %{
      <h1>Hi, I'm your first CAP web app v1</h1>
      <h2><a href="/env.json">Check my ENV out</a></h2>
    }
  end

  get "/env.json" do
    content_type "application/json"
    JSON.pretty_generate(ENV.to_h)
  end
end

run Web.new
