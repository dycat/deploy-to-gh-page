# Use python base image
FROM python:3.11-slim

# Install dependencies
RUN apt-get update \
    && apt-get install -y \
      build-essential \
      git \
      make

RUN pip install pipenv

RUN pipenv install

COPY entrypoint.sh /entrypoint.sh
COPY . /action/

WORKDIR /action

RUN which python

RUN chmod +x entrypoint.sh

# Build project and push output to gh-pages
ENTRYPOINT ["./entrypoint.sh"]