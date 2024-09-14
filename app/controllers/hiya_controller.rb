class HiyaController < ApplicationController
  # Simulating a collection of names in-meory instead of using a database
  def hello
    @name = params[:name] || 'Gia'
    render json: { "Hello, #{name}! Welcome to Thunderdome." }
  end
end
