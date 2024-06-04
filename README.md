# KToolBox Docker 镜像

这是一个 [KToolBox](https://github.com/Ljzd-PRO/KToolBox) 的 docker 镜像，旨在使用服务器挂机下载。

## 使用

修改 `docker-compose.yml` 后执行 `docker compose up -d`。

或使用命令构建：

```shell
docker build -t ktoolbox .

# 检查版本
docker run -it --rm \
    --name ktoolbox \
    --user 1000:1000 \
    -v /path/to/downloads:/work/output \
    ktoolbox version
```

请注意：为避免权限问题，`/work/output` 的映射路径应当确保在启动前存在，且 user:group 应与启动参数 `user` 一致。

接下来就可以与 [官方文档](https://ktoolbox.readthedocs.io/latest/zh/) 一样使用了：

```shell
# 下载指定的作品
docker run -it --rm \
    --name ktoolbox \
    --user 1000:1000 \
    -v /path/to/downloads:/downloads \
    ktoolbox download-post https://kemono.su/fanbox/user/49494721/post/6608808

# 下载作者的所有作品
docker run -it --rm \
    --name ktoolbox \
    --user 1000:1000 \
    -v /path/to/downloads:/downloads \
    ktoolbox sync-creator https://kemono.su/fanbox/user/9016
```