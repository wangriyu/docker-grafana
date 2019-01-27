### docker-grafana with wechat notifier

#### Build image

```
$ chmod +x run.sh
$ ./run.sh
```

waiting completion...

#### Up container

```
$ docker-compose up -d
```

container starts on port 3000，default user/pass is admin/admin123456"

#### Add notifier

how to add wechat notifier: https://zhuanlan.zhihu.com/p/38225794

> ToUser: default value is `@all`, you can specify it as `UserID1|UserID2|UserID3`

#### Add alerting rules

http://docs.grafana.org/alerting/rules/

#### Others

more info about docker-image: http://docs.grafana.org/installation/docker/

> You may have issues with file permissions, more information here: http://docs.grafana.org/installation/docker/#migration-from-a-previous-version-of-the-docker-container-to-5-1-or-later
  mkdir: cannot create directory '/var/lib/grafana/plugins': Permission denied
> >
> > $ sudo chown 472 /data/lib/grafana
