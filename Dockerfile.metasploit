FROM ubuntu:18.04
MAINTAINER diodonfrost <keres@protonmail.com>

# Update system
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y software-properties-common && rm -rf /var/lib/apt/lists/*

# Install base dependency packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install \
  autoconf \
  bison \
  build-essential \
  curl \
  git-core \
  libapr1 \
  libaprutil1 \
  libcurl4-openssl-dev \
  libgmp3-dev \
  libpcap-dev \
  libpq-dev \
  libreadline6-dev \
  libsqlite3-dev \
  libssl-dev \
  libsvn1 \
  libtool \
  libxml2 \
  libxml2-dev \
  libxslt-dev \
  libyaml-dev \
  locate \
  ncurses-dev \
  openssl \
  postgresql \
  postgresql-contrib \
  wget \
  xsel \
  zlib1g \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# Install ruby packages
RUN apt-get update && apt-get -y install \
  ruby \
  ruby-dev \
  && rm -rf /var/lib/apt/lists/*

# Install bundle
RUN /bin/bash -l -c "gem install bundle --no-ri --no-rdoc"

# Clone Metasploit github
RUN git clone https://github.com/rapid7/metasploit-framework /opt/metasploit-framework

WORKDIR /opt/metasploit-framework

# Install Metasploit ruby dependency
RUN /bin/bash -l -c "bundle install"

# Create symbolic links
RUN ln -s /opt/metasploit-framework/msf* /bin/
