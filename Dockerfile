FROM alpine:latest
# Install dependencies
RUN apk --no-cache add  build-base alpine-sdk libcurl libgcc libstdc++ git make curl curl-dev

# Build simc
RUN git clone https://github.com/simulationcraft/simc
RUN cd simc/engine \
    && make optimized
WORKDIR /simc/engine
ENTRYPOINT [ "./simc" ]
