# docker-python-spatialite

Docker image with latest Python 3, SpatiaLite and SpatiaLite dependencies
(PROJ.4, GEOS, GDAL) suitable for GeoDjango.

## Usage

Mount your GeoDjango project that uses SpatiaLite as volume into the container,
run Bash and test that database access works:

    docker run \
       -v $PWD/src:/src \
       -it mrts/docker-python-spatialite \
       bash
    # inside the container
    cd /src
    python3.8 -m venv venv
    . venv/bin/activate
    pip install -r requirements.txt
    ./manage.py migrate

## Building the Docker image

    docker build --tag=mrts/docker-python-spatialite .
    docker tag mrts/docker-python-spatialite:latest mrts/docker-python-spatialite:v1.0
    docker login
    docker push mrts/docker-python-spatialite
