if cat /etc/kubernetes/manifests/kube-scheduler.yaml | grep -A 10 "resources:" | grep -A 2 "requests:" | grep -q "cpu: 25m"; then
    cat /etc/kubernetes/manifests/kube-scheduler.yaml | grep -A 10 "resources:" | grep -A 2 "requests:" | grep "cpu:" | sed -i 's/cpu: 25m/cpu: 1/g' /etc/kubernetes/manifests/kube-scheduler.yaml
else
    echo "Pattern not found. No sed operation performed in kube-scheduler.yaml file."
fi
sleep 0.5