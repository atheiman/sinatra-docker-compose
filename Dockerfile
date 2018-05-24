FROM ruby:2.5.1-alpine
RUN apk add --update alpine-sdk
COPY . /app
WORKDIR /app
RUN bundle install
EXPOSE 4567
CMD ["bundle", "exec", "/app/app.rb"]
