if grep -q "listen-client-urls=https:\/\/127.0.0.1:2379,https:\/\/172.30.1.2:2379" /etc/kubernetes/manifests/etcd.yaml; then
    sed -i 's/listen-client-urls=https:\/\/127.0.0.1:2379,https:\/\/172.30.1.2:2379/listen-client-urls=https:\/\/127.0.0.1:2379,https:\/\/192.168.1.100:2379/g' /etc/kubernetes/manifests/etcd.yaml
else
    echo "Pattern not found. No sed operation performed in etcd.yaml file."
fi
sleep 0.5