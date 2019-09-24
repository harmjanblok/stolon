FROM golang:1.13 as builder

WORKDIR /workdir
ADD . /workdir
RUN /workdir/build


FROM alpine

COPY --from=builder /workdir/bin /bin
