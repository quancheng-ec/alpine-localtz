FROM alpine:3.6

RUN apk add --no-cache ca-certificates && apk --update tzdata && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
