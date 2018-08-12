FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Taipei

# Add wget
RUN apt-get update \
  && apt-get install -y wget \
  && rm -fv /var/cache/apt/*.bin \
  && rm -fv /var/cache/apt/archives/*.* \
  && rm -fv /var/lib/apt/lists/*.* \
  && apt-get autoclean

# Add pacapt
RUN wget -O /usr/local/bin/pacapt https://github.com/icy/pacapt/raw/ng/pacapt \
  && chmod 755 /usr/local/bin/pacapt \
  && ln -sv /usr/local/bin/pacapt /usr/local/bin/pacman || true

# Install tzdata
RUN pacman -Syy \
  && pacman -S tzdata \
  && pacman -Sccc

# Set localtime to Asia/Taipei
RUN ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime \
  && dpkg-reconfigure tzdata
