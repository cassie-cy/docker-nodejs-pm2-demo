FROM keymetrics/pm2 

# 暴露端口
EXPOSE 8080

WORKDIR /data/release/docker-nodejs-pm2-demo

# 创建目录
RUN mkdir -p /data/release/docker-nodejs-pm2-demo

# 复制源码
COPY . /data/release/docker-nodejs-pm2-demo

# 容器启动时，启动应用服务
CMD ["pm2-runtime", "ecosystem.config.js", "--only", "docker-nodejs-pm2-demo"]