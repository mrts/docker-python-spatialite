FROM python:3

RUN \
  apt-get update && \
  apt-get install -y spatialite-bin libsqlite3-mod-spatialite \
     binutils libproj-dev gdal-bin && \
  pip install -U pip && pip install pipenv && \
  rm -rf /var/lib/apt/lists/*
