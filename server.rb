require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
    name = params[:name] || "World"
    "Hello #{name}"
end

post '/name' do
    body = request.body.read
    j = JSON.parse(body)
    return j["name"]
end

post '/age' do
    body = request.body.read
    j = JSON.parse(body)
    return j["age"]
end