require 'net/http'
require 'json'

class CalculatorController < ApplicationController
  def add
    num1 = params[:num1]
    num2 = params[:num2]
    
    # Call the calculator service
    uri = URI("http://calculator_service:4567/calculate?num1=#{num1}&num2=#{num2}")
    response = Net::HTTP.get(uri)
    result = JSON.parse(response)

    render json: { result: result['result'] }
  end
end
