ARG BUILD_FROM
FROM $BUILD_FROM

# Copy init script, 8xFF relayer and agent binary
RUN wget https://github.com/8xFF/atm0s-decentralized-home-assistant-proxy/releases/download/latest/agent-x86_64-unknown-linux-musl -O agent \
    wget https://github.com/8xFF/atm0s-decentralized-home-assistant-proxy/releases/download/latest/relayer-x86_64-unknown-linux-musl -O relayer

COPY data/run.sh /

CMD [ "/run.sh" ]