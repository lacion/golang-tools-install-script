#!/bin/bash
set -e

$(dirname "$0")/../goinstall.sh --64

source ~/.bashrc

mkdir -p $GOPATH/src/hello
pushd $GOPATH/src/hello
cat >hello.go <<EOF
package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")
}
EOF
go build
go install
hello
popd
