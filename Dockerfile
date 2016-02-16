FROM alpine
MAINTAINER dawi2332@gmail.com
RUN apk add --update py-boto py-pip \
	&& pip install requests \
	&& apk del py-pip \
	&& rm -rf /var/cache/apk/*

ADD ebs-attach.py ebs-attach.py

ENTRYPOINT ["/usr/bin/python", "ebs-attach.py"]
