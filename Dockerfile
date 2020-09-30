FROM perl:5.24-slim-threaded
LABEL version="1.4" maintainer="JJ Merelo <jjmerelo@GMail.com>" perl5version="5.28"

# Set up dir and download modules
RUN chmod o+r /etc/resolv.conf
RUN mkdir /test && apt-get update \
    && apt-get install -y git curl libio-socket-ssl-perl libnet-ssleay-perl  gcc  \
    && cpanm Test::More Test::Harness Git File::Slurper JSON TAP::Formatter::Color Term::ANSIColor Mojo::UserAgent Net::Ping YAML
RUN perl --version
VOLUME /test
WORKDIR /test

# Will run this
ENTRYPOINT prove -I/usr/lib -c



