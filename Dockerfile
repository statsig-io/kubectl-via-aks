FROM alpine/k8s:1.18.2

FROM mcr.microsoft.com/azure-cli

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
