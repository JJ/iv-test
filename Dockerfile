FROM perl:latest
LABEL version="1.0" maintainer="JJ Merelo <jjmerelo@GMail.com>" perl5version="5.28"

# Set up dirs
RUN mkdir /test && cpanm Test::More Test::Harness Git File::Slurper JSON Net::Ping TAP::Formatter::Color Term::ANSIColor LWP::Simple
VOLUME /test
WORKDIR /test

# Will run this
ENTRYPOINT prove -c



