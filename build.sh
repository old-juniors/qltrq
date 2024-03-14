GOOS=darwin     GOARCH=amd64    go build -ldflags '-s' -o bin/qltrq-darwin-amd64       cli/*.go
GOOS=darwin     GOARCH=arm64    go build -ldflags '-s' -o bin/qltrq-darwin-arm64       cli/*.go
GOOS=linux      GOARCH=386      go build -ldflags '-s' -o bin/qltrq-linux-386          cli/*.go
GOOS=linux      GOARCH=amd64    go build -ldflags '-s' -o bin/qltrq-linux-amd64        cli/*.go
GOOS=linux      GOARCH=arm      go build -ldflags '-s' -o bin/qltrq-linux-arm          cli/*.go
GOOS=linux      GOARCH=arm64    go build -ldflags '-s' -o bin/qltrq-linux-arm64        cli/*.go
GOOS=windows    GOARCH=386      go build -ldflags '-s' -o bin/qltrq-windows-386.exe    cli/*.go
GOOS=windows    GOARCH=amd64    go build -ldflags '-s' -o bin/qltrq-windows-amd64.exe  cli/*.go
