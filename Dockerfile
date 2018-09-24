FROM python:2-alpine

RUN pip install virtualenv \
	&& mkdir dns \
    && cd dns \
    && virtualenv env \
    && source env/bin/activate \
    && mkdir config
RUN pip install octodns==0.9.2
RUN apk update \
    && apk add --no-cache gcc linux-headers musl-dev libffi-dev openssl-dev libxslt-dev \
    && pip install azure-common==1.1.6 msrestazure==0.4.10 azure-mgmt-dns==1.0.1 boto3==1.4.6 lxml dyn==1.8.0

CMD /bin/sh
