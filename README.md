### docker-grafana with wechat notifier

#### Build

```
$ chmod +x run.sh
$ ./run.sh
```

waiting completion...

#### Open

open localhost:3000

default user/pass is admin/admin

#### Add notifier

how to add wechat notifier: https://zhuanlan.zhihu.com/p/38225794

> ToUser: default value is `@all`, you can specify it as `UserID1|UserID2|UserID3`

#### Add alerting rules

http://docs.grafana.org/alerting/rules/

#### Others

more info about docker-image: http://docs.grafana.org/installation/docker/
