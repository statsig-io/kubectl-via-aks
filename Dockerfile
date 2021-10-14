FROM mcr.microsoft.com/azure-cli

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/v1.22.2/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
