# quote_service/Dockerfile
FROM ruby:3.2.2

# Set working directory
WORKDIR /quote_service

# Copy Gemfile and install dependencies
COPY Gemfile ./
RUN bundle install

# Copy the app code
COPY . .

# Expose port 4568 (arbitrary, to avoid conflict with calculator service)
EXPOSE 4568

# Run the application
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]

