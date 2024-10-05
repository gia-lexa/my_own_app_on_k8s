# calculator_service/app.rb
require 'sinatra'
require 'json'

get '/calculate' do
  num1 = params['num1'].to_i
  num2 = params['num2'].to_i
  result = num1 + num2

  content_type :json
  { result: result }.to_json
end
