FROM alpine:3.8

LABEL "com.github.actions.name"="msgfmt"
LABEL "com.github.actions.description"="Generate binary message catalog from textual translation description."
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/whtsky/msgfmt-action"
LABEL "homepage"="http://github.com/whtsky/msgfmt-action"
LABEL "maintainer"="Wu Haotian <whtsky@gmail.com>"

RUN apk update && \
  apk add --no-cache gettext findutils

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
