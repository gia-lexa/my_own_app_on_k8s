class HiyasController < ApplicationController
  # Simulating a collection of names in-meory instead of using a database
  def hello
    name = params[:name] || 'Gia'
    render json: { message: "Hello, #{name}! Welcome to the party." }
  end
end
