ARG BUILD_FROM
ARG BUILD_ARCH
ARG CLI_VERSION
ARG BUILD_VERSION
ARG BUILD_DESCRIPTION

FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dnsmasq

# Copy data
COPY rootfs /

LABEL \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.version="${BUILD_VERSION}" \
    io.hass.type="addon" \
    io.hass.arch="${BUILD_ARCH}"
