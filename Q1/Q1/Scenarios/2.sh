if grep -q "advertise-address.endpoint: 172.30.1.2" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/advertise-address.endpoint: 172.30.1.2/advertise-address.endpoint: 192.168.1.100/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation #1 performed in kube-apiserver.yaml file."
fi

if grep -q "advertise-address=172.30.1.2" /etc/kubernetes/manifests/kube-apiserver.yaml; then
    sed -i 's/advertise-address=172.30.1.2/advertise-address=192.168.1.100/g' /etc/kubernetes/manifests/kube-apiserver.yaml
else
    echo "Pattern not found. No sed operation #2 performed in kube-apiserver.yaml file."
fi