FROM perl:5.32-slim-threaded
LABEL version="1.5" maintainer="JJ Merelo <jjmerelo@GMail.com>" perl5version="5.32"

# Set up dir and download modules
RUN chmod o+r /etc/resolv.conf \
    && mkdir /test && apt-get update \
    && apt-get install -y git curl gcc libssl-dev zlib1g-dev   \
    && cpanm Net::SSLeay --verbose --notest \
    && cpanm IO::Socket::SSL Test::More Test::Harness Git File::Slurper JSON TAP::Formatter::Color Term::ANSIColor Mojo::UserAgent Net::Ping YAML JSON::XS Scalar::Util
RUN perl --version
VOLUME /test
WORKDIR /test

# Will run this
ENTRYPOINT prove -I/usr/lib -c



