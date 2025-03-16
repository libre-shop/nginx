# Libre Shop - (Reverse) Proxy
# Version 1.0.0

FROM nginx:1.26.2

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
