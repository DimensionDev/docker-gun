FROM node:lts-alpine
# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="Gun - Offline First, JavaScript Graph Database" \
    org.label-schema.url="http://gun.js.org" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url=$VCS_URL \
    org.label-schema.vendor="DimensionDev" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"
# End metadata
WORKDIR /app
COPY index.js package.json package-lock.json ./
RUN npm ci

WORKDIR /app/data
EXPOSE 8765
CMD ["node", "/app/index.js"]
