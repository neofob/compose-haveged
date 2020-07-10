`haveged` in `docker-compose` setup
===================================
*Just a `haveged` doing its thing in the virtual world.*


```
docker-compose build
docker-compose up -d
```

Build alpine-based docker image
-------------------------------
```
cat Dockerfile.alpine | docker build -t neofob/haveged:alpine -
```

* Ubuntu-based image: 98.4MB
* Alpine-based image: 6.17MB

**References:** [`picoded Dockerfile`][0]

[0]: https://github.com/picoded/dockerfiles/tree/master/utility/haveged
