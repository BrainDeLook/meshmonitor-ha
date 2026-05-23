FROM ghcr.io/yeraze/meshmonitor:latest

USER root
RUN apk add --no-cache jq curl bash nginx

COPY nginx.conf /etc/nginx/http.d/default.conf

COPY run.sh /run.sh
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]
