# Use python base image
FROM alpine:3.10

# Install dependencies

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh


# Build project and push output to gh-pages
ENTRYPOINT ["/entrypoint.sh"]