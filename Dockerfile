FROM python:2-alpine

RUN apk update \
    && apk add --no-cache gcc linux-headers musl-dev libffi-dev openssl-dev libxslt-dev \
    && pip install octodns==0.9.2 azure-common msrestazure azure-mgmt-dns boto3 lxml dyn

CMD /bin/sh
