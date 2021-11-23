FROM dannyben/alpine-ruby
WORKDIR /app
COPY . .
RUN gem install puma sinatra
EXPOSE 3000
CMD ruby server.rb

