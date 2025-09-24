# Use official Ruby image
FROM ruby:3.2

# Install Sinatra
RUN gem install sinatra

# Copy app
WORKDIR /app
COPY app.rb .

# Expose port
EXPOSE 4567

# Run the app
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
