FROM alpine:3.15.0
WORKDIR /app
RUN apk upgrade && \
    apk add --no-cache git bash curl && \
    git clone --depth 1 https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan.git . && \
    chmod 755 FGDS.sh && \
    rm -rf .git ~/.cache/ /var/cache/apk/*
ENTRYPOINT ["/app/FGDS.sh"]
