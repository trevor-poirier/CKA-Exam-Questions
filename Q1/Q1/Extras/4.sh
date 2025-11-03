if grep -q "cert-file=\/etc\/kubernetes\/pki\/etcd\/server.crt" /etc/kubernetes/manifests/etcd.yaml; then
    sed -i 's/cert-file=\/etc\/kubernetes\/pki\/etcd\/server.crt/cert-file=\/etc\/kubernetes\/pki\/apiserver-etcd-client.crt/g' /etc/kubernetes/manifests/etcd.yaml
else
    echo "Pattern not found. No sed operation performed in etcd.yaml file."
fi
sleep 0.5