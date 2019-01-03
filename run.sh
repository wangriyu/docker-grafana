if [ ! -f "grafana.tar.gz" ]; then
wget https://codeload.github.com/grafana/grafana/tar.gz/v5.4.2 -O grafana.tar.gz
fi

if [ ! -d "grafana" ]; then
mkdir grafana
fi

tar xzf grafana.tar.gz -C grafana --strip-components 1

cp -R wechat-notifier/ grafana/pkg/services/alerting/notifiers

cd grafana

make build-docker-full

docker run -d --name=grafana -p 3000:3000 grafana/grafana:dev
