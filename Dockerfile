FROM golang:1.16.0-buster

# Copy the local package files to the container’s workspace.
ADD . /go/src/github.com/patelaneri792/go-web-server

# Build the golang-docker command inside the container.
RUN go install github.com/patelaneri792/go-web-server@latest

# Run the golang-docker command when the container starts.
ENTRYPOINT /go/bin/go-web-server

ENV PORT 8080

# http server listens on port 8080.
EXPOSE 8080