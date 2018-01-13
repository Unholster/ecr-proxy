FROM openresty/openresty:alpine-fat

RUN apk update && apk add -y \
    python3

RUN pip3 install awscli

RUN luarocks install lua-resty-jwt

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY ecr-proxy.conf /etc/nginx/conf.d/ecr-proxy.conf
COPY start.sh /

ENV ECR_TOKEN_EXPIRE=30

EXPOSE 3333

CMD "/start.sh"
