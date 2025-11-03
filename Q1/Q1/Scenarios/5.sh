if grep -q "etcd-servers=https:\/\/127.0.0.1:2379" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/etcd-servers=https:\/\/127.0.0.1:2379/etcd-servers=https:\/\/10.0.0.151:2379,https:\/\/10.0.0.152:2379,https:\/\/10.0.0.153:2379/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation performed in kube-apiserver.yaml file."
fi