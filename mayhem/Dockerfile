FROM --platform=linux/amd64 ubuntu:20.04 as builder

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential man-db sudo

COPY . /repo
WORKDIR /repo
RUN make -j8 install

FROM ubuntu:20.04 as package
COPY --from=builder /usr/bin/nhance /
