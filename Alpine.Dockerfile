FROM alpine:3.8

# Add bash
RUN apk add --no-cache bash

# Add pacapt
RUN wget -O /usr/local/bin/pacapt https://github.com/icy/pacapt/raw/ng/pacapt \
  && chmod 755 /usr/local/bin/pacapt \
  && ln -sv /usr/local/bin/pacapt /usr/local/bin/pacman || true

# Install tzdata
RUN pacman -Syy \
  && pacman -S tzdata \
  && pacman -Sccc

# Set localtime to Asia/Taipei
RUN ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime
