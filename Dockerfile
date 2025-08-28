# First, build the application in the `/app` directory.
# See `Dockerfile` for details.
ARG FLAVOR=trixie
ARG PYTHON_VERSION=3.14-rc

FROM python:${PYTHON_VERSION}-${FLAVOR}

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

ENV GRANIAN_HOST='0.0.0.0' \
    GRANIAN_INTERFACE=asgi \
    GRANIAN_LOG_ACCESS_ENABLED=1

CMD ["granian", "main:app"]
