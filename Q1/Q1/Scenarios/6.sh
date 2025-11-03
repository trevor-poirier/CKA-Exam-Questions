if grep -q "etcd-cafile=\/etc\/kubernetes\/pki\/etcd\/ca.crt" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/etcd-cafile=\/etc\/kubernetes\/pki\/etcd\/ca.crt/etcd-cafile=\/etc\/kubernetes\/pki\/etcd\/ext-ca.crt/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation performed in kube-apiserver.yaml file."
fi