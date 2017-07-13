owner "redis" systemPassword "redis"

redisHome "/logiciels/redis-3.2.5"
port 6379 exposed("REDIS_PORT")
domainName "myredis"
domainHome "/appli/{{ product.domainName }}" domainHome() directory() owner "{{ product.owner }}" command "deploy"
logDir "/var/{{ product.domainName }}" directory() persistent("REDIS_LOG") owner "{{ product.owner }}" command "deploy"

startScript "{{ product.domainHome }}/bin/start.sh" start()  user "{{ product.owner }}" id "redis{{ product.port }}" async()
stopScript "{{ product.domainHome }}/bin/stop.sh" stop()  user "{{ product.owner }}"
