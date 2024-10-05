# calculator_service/Dockerfile
FROM ruby:3.2.2

# Set the working directory
WORKDIR /calculator_service

# Copy the Gemfile and install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the application code
COPY . .

# Expose port 4567 (default for Sinatra)
EXPOSE 4567

# Start the Sinatra server
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
