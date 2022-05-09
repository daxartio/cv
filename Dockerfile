FROM pandoc/latex:2.6

RUN apk add --no-cache make msttcorefonts-installer fontconfig \
    && update-ms-fonts \
    && tlmgr install marginnote fontspec sectsty
