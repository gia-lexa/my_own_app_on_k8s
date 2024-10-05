# Use the official Ruby image with the version specified in the Gemfile
FROM ruby:3.2.3

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the correct Bundler version
RUN gem install bundler -v 2.5.15

# Install gems
RUN bundle install

# Copy the entire app into the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails server with `bundle exec`
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
