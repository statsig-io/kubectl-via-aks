FROM alpine/k8s:1.18.2

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
