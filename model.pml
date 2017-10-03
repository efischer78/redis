owner "redis" user()

redisHome "/logiciels/redis-3.2.5"
port 6379 exposed("REDIS_PORT") exported()
domainName "myredis"
domainHome "/appli/${ product.domainName }" domainHome(owner: "${ product.owner }")
logDir "/var/${ product.domainName }" directory(persistent: "REDIS_LOG", owner: "${ product.owner }", command: "deploy")

startScript "${ product.domainHome }/bin/start.sh" start(user: "${ product.owner }", async: true)
stopScript "${ product.domainHome }/bin/stop.sh" stop(user: "${ product.owner }")
