FROM ruby:2.7

ENV APP_PATH=/usr/src
WORKDIR $APP_PATH

COPY Gemfile* $APP_PATH/
RUN bundle install && bundle update

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]