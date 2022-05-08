# snell server docker surge
snell server docker 方式部署
# 构建镜像
```
docker  build .  -f  ./Dockerfile   -t snell-server:latest
```
# 启动命令
```
docker run  --rm  -v  /path/snell.conf:/etc/snell.conf   -p 4567:4567 -p 4567:4567/udp    --name=snell snell-server:latest
```
# 使用supervisor托管更好
# snell.conf 示例
```
[snell-server]
listen = 0.0.0.0:4567
psk = yourpassword
obfs = http|tls
```
