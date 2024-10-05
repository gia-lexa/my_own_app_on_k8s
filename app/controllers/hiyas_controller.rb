class HiyasController < ApplicationController
  # Simulating a collection of names in-meory instead of using a database
  def hello
    name = params[:name] || 'Gia'
    render json: { message: "Greetings Professor #{name}. Shall we play a game?" }
  end
end
