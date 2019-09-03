FROM ruby:2.6.4
RUN apt-get update -qq
RUN apt-get install -y build-essential libpq-dev nodejs libmariadbd-dev
RUN mkdir /todo_line_app
WORKDIR /todo_line_app
ADD ./Gemfile /todo_line_app/Gemfile
ADD ./Gemfile.lock /todo_line_app/Gemfile.lock
RUN bundle install
ADD . /todo_line_app