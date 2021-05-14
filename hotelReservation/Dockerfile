FROM golang:1.9

COPY . /go/src/github.com/harlow/go-micro-services
WORKDIR /go/src/github.com/harlow/go-micro-services
# RUN export http_proxy=http://child-prc.intel.com:913
# RUN export https_proxy=$http_proxy
RUN https_proxy=http://child-prc.intel.com:913 go get gopkg.in/mgo.v2
RUN https_proxy=http://child-prc.intel.com:913 go get github.com/bradfitz/gomemcache/memcache
RUN go install -ldflags="-s -w" ./cmd/...
