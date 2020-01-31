FROM jekyll/jekyll
ADD . /srv/jekyll
RUN gem update --system
RUN gem install bundler -v 2.1.2
RUN bundle update --bundler

RUN bundle install
EXPOSE 4000