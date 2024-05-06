# KToolBox Docker 镜像

这是一个 [KToolBox](https://github.com/Ljzd-PRO/KToolBox) 的 docker 镜像，旨在使用服务器挂机下载。

## 使用

修改 `docker-compose.yml` 后执行 `docker compose up -d`。

或使用命令：

```shell
docker build -t ktoolbox .
docker run -it --rm \
    --name ktoolbox \
    -v ./output:/work/output \
    -e PUID=1000 \
    -e PGID=1000 \
    -e KEMONO_CREATOR_URL=XXXX \
    ktoolbox
```

