FROM alpine:3.12.0
WORKDIR /app
RUN apk add --update --no-cache git bash curl && \
    git clone --depth 1 https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan.git . && \
    chmod 755 FGDS.sh && \
    rm -rf .git && \
    rm -rf /var/cache/apk/*
ENTRYPOINT ["/app/FGDS.sh"]
