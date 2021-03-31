FROM golang:1.16-alpine AS builder

# Move to working directory (/build).
WORKDIR /build

# Copy and download dependency using go mod.
COPY go.mod go.sum ./
RUN go mod download

# Copy the code into the container.
COPY ./consumer/main.go .

# Set necessary environment variables needed 
# for our image and build the consumer.
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN go build -ldflags="-s -w" -o consumer .

FROM scratch

# Copy binary and config files from /build 
# to root folder of scratch container.
COPY --from=builder ["/build/consumer", "/"]

# Command to run when starting the container.
ENTRYPOINT ["/consumer"]