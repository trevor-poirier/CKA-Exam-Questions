if grep -q "etcd-certfile=\/etc\/kubernetes\/pki\/apiserver-etcd-client.crt" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/etcd-certfile=\/etc\/kubernetes\/pki\/apiserver-etcd-client.crt/etcd-certfile=\/etc\/kubernetes\/pki\/etcd\/client.crt/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation #1 performed in kube-apiserver.yaml file."
fi

if grep -q "etcd-keyfile=\/etc\/kubernetes\/pki\/apiserver-etcd-client.key" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/etcd-keyfile=\/etc\/kubernetes\/pki\/apiserver-etcd-client.key/etcd-keyfile=\/etc\/kubernetes\/pki\/etcd\/client.key/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation #2 performed in kube-apiserver.yaml file."
fi
