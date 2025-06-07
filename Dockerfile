FROM ruby:3.3

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get install -y nodejs yarn

RUN apt-get update -qq && apt-get install -y build-essential libmariadb-dev-compat

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
