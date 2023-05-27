# Use python base image
FROM python:3.11-slim

# Install dependencies
RUN apt-get update \
    && apt-get install -y \
      build-essential \
      git \
      make

COPY . /

RUN pip install pipenv

RUN pipenv install pelican

RUN chmod +x entrypoint.sh

# Build project and push output to gh-pages
ENTRYPOINT ["/entrypoint.sh"]