  # quote_service/app.rb
  require 'sinatra'
  require 'json'

  quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt"
  ]

  get '/quote' do
    content_type :json
    { quote: quotes.sample }.to_json
  end
