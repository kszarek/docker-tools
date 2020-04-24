FROM alpine:3.11.6

RUN apk --no-cache add ca-certificates curl wget \
    mtr netcat-openbsd net-tools tcpdump nmap iperf bind-tools \
    git openssl openssh-client bash htop && \
    git config --global url.ssh://git@github.com/.insteadOf https://github.com/

CMD ["/bin/bash"]
