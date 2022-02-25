FROM mcr.microsoft.com/azure-cli

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/v1.22.2/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

RUN curl -sLO https://github.com/argoproj/argo-rollouts/releases/download/v1.2.0-rc2/kubectl-argo-rollouts-linux-amd64 && \
    mv kubectl-argo-rollouts-linux-amd64 /usr/bin/kubectl-argo-rollouts && \
    chmod +x /usr/bin/kubectl-argo-rollouts

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
