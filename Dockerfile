FROM perl:slim
LABEL version="1.2" maintainer="JJ Merelo <jjmerelo@GMail.com>" perl5version="5.28"

# Set up dir and download modules
RUN mkdir /test && apt-get update && apt-get upgrade && apt-get install libhtml-entities-numbered-perl && cpanm Test::More Test::Harness Git File::Slurper JSON Net::Ping TAP::Formatter::Color Term::ANSIColor LWP::Simple
VOLUME /test
WORKDIR /test

# Will run this
ENTRYPOINT prove -c


