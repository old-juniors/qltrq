# Start from a Debian-based image with the 1.22 version of Go installed
FROM golang:1.22

# Set necessary environment variables
ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the source code from the current directory to the Working Directory inside the container
COPY . .

# Initialize Go
RUN go mod init qltrq-web

# Download all dependencies.
RUN go mod tidy

# Build the Go app
RUN go build -o main .

# Expose port 3300 to the outside world
EXPOSE 3300

# Command to run the executable
CMD ["./main"]
