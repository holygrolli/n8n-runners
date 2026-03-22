ARG N8N_VERSION=2.7.5
FROM ghcr.io/n8n-io/runners:${N8N_VERSION}
LABEL org.opencontainers.image.source="https://github.com/holygrolli/n8n-runners" \
      org.opencontainers.image.description="Custom n8n runner image with additional dependencies for JavaScript and Python task runners" \
      org.opencontainers.image.version="${N8N_VERSION}"
USER root
#RUN cd /opt/runners/task-runner-javascript && pnpm add moment uuid
RUN cd /opt/runners/task-runner-python && uv pip install boto3 requests valkey
USER runner