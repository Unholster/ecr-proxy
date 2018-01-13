sed -i -e "s!REGISTRY_URL!${REGISTRY_URL}!g" /etc/nginx/conf.d/ecr-proxy.conf
/usr/local/openresty/bin/openresty -g 'daemon off;'
