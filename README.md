# KToolBox Docker 镜像

这是一个 [KToolBox](https://github.com/Ljzd-PRO/KToolBox) 的 docker 镜像，旨在使用服务器挂机下载。

## 使用

修改 `docker-compose.yml` 后执行 `docker compose up -d`。

或使用命令：

```shell
docker build -t ktoolbox .
docker run -it --rm \
    --name ktoolbox \
    --user 1000:1000 \
    -v ./output:/work/output \
    -e KEMONO_CREATOR_URL=XXXX \
    ktoolbox
```

请注意：为避免权限问题，`/work/output` 的映射路径应当确保在启动前存在，且 user:group 应与启动参数 `user` 一致。