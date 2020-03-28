FROM hashicorp/terraform:0.12.24

RUN apk add --no-cache bash ca-certificates openjdk8
ENTRYPOINT ["/usr/bin/env"]