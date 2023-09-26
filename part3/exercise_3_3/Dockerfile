FROM docker:dind

RUN apk add git

WORKDIR /usr/src/app

COPY ./builder.sh .

ENTRYPOINT ["./builder.sh"]