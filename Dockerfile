FROM ruby:2.5.3

ADD . /app
WORKDIR /app
RUN bundle install

ENV PORT 8080
EXPOSE $PORT

ENTRYPOINT ["bundle", "exec", "ruby", "server.rb"]