require 'sinatra'
run Sinatra::Application

get '/' do
  'hello world'
end
