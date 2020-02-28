FROM python:3-alpine

RUN apk update \
    && apk add --no-cache gcc linux-headers musl-dev libffi-dev openssl-dev libxslt-dev \
    && pip install octodns==0.9.9 azure-common==1.1.24 msrestazure==0.6.2 azure-mgmt-dns==3.0.0 boto3==1.12.5 dyn==1.8.1

CMD /bin/sh
