# frozen_string_literal: true
require 'sinatra'
require 'redis'
require 'json'

$redis = Redis.new(host: '127.0.0.1', port: 6379, db: 1)

run Sinatra::Application

get '/' do
  'hello'
end

get '/keys' do
  $redis.keys.map { |k| { key: k, value: $redis.get(k) } }.to_json
end

post '/keys/:key' do
  key = params['key']
  $redis.set(key, "value-for-#{key}")
end
