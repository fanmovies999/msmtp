FROM alpine

RUN apk add --no-cache \
	vim \
	msmtp \
	openssl \
	ca-certificates

RUN update-ca-certificates

#VOLUME /etc/msmtprc

ENTRYPOINT [ "msmtp" ]
CMD [ "--help" ]

