url("http://download.redis.io/releases/redis-3.2.5.tar.gz") {
    to "/usr/src"
    inline "make"
    inline "make PREFIX=${ product.redisHome } install"
    workingDir "/usr/src/redis-3.2.5"
    unpack true
}
