# snell-docker
snell server docker 方式部署
# 启动命令
docker run  --rm  -v  /path/snell.conf:/etc/snell.conf   -p 4567:4567 -p 4567:4567/udp    --name=snell snell-server:latest
# 使用supervisor托管更好
