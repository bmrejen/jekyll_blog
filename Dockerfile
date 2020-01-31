FROM jekyll/jekyll
ADD . /srv/jekyll
RUN gem update --system
RUN gem install bundler -v 2.0.1

RUN bundle install
EXPOSE 4000