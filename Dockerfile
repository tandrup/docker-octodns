FROM python:3-alpine

RUN apk update \
    && apk add --no-cache gcc linux-headers musl-dev libffi-dev openssl-dev libxslt-dev \
    && pip install octodns==0.9.13 azure-common==1.1.27 azure-identity==1.5.0 msrestazure==0.6.4 azure-mgmt-dns==8.0.0 azure-mgmt-trafficmanager==0.51.0 boto3==1.15.9 dyn==1.8.1

CMD /bin/sh
