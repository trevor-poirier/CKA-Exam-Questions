# Q1 - Question only
cat ./CKA-Exam-Questions/Q1/README.md
printf '\n'

# Q2
cat ./CKA-Exam-Questions/Q2/README.md
printf '\n'

# Q3
sudo rm /etc/cni/net.d/calico-kubeconfig
for crd in $(kubectl get crds -o name | grep "projectcalico.org"); do kubectl delete $crd; done
kubectl delete deploy,ds,cm -l k8s-app=calico-kube-controllers -n kube-system
cat ./CKA-Exam-Questions/Q3/README.md
printf '\n'

# Q4
kubectl create ns autoscale
kubectl apply -f ./CKA-Exam-Questions/Q4/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q4/svc.yaml
cat ./CKA-Exam-Questions/Q4/README.md
printf '\n'

# Q5
kubectl create ns nginx-static
kubectl apply -f ./CKA-Exam-Questions/Q5/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q5/svc.yaml
kubectl apply -f ./CKA-Exam-Questions/Q5/cm.yaml
cat ./CKA-Exam-Questions/Q5/README.md
printf '\n'

# Q6
kubectl create ns echo-sound
kubectl apply -f ./CKA-Exam-Questions/Q6/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q6/svc.yaml
cat ./CKA-Exam-Questions/Q6/README.md
printf '\n'

# Q7
kubectl create ns argocd
kubectl apply -k https://github.com/argoproj/argo-cd/manifests/crds\?ref\=stable
cat ./CKA-Exam-Questions/Q7/README.md
printf '\n'

# Q8
kubectl apply -f ./CKA-Exam-Questions/Q8/deploy.yaml
cat ./CKA-Exam-Questions/Q8/README.md
printf '\n'

# Q9
kubectl create ns mariadb
kubectl apply -f ./CKA-Exam-Questions/Q9/pv.yaml
cat ./CKA-Exam-Questions/Q9/README.md
printf '\n'


# Q10
kubectl create ns relative-fawn
kubectl apply -f ./CKA-Exam-Questions/Q10/deploy.yaml
cat ./CKA-Exam-Questions/Q10/README.md
printf '\n'

# Q11
cat ./CKA-Exam-Questions/Q11/README.md
printf '\n'

# Q12
kubectl create ns spline-reticulator
kubectl apply -f ./CKA-Exam-Questions/Q12/deploy.yaml
cat ./CKA-Exam-Questions/Q12/README.md
printf '\n'

# Q13
kubectl create ns priority
kubectl create priorityclass user-max-priority --value=1000000000
kubectl apply -f ./CKA-Exam-Questions/Q13/deploy.yaml
cat ./CKA-Exam-Questions/Q13/README.md
printf '\n'

# Q14
kubectl apply --server-side -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.4.0/standard-install.yaml
kubectl create secret tls web-tls --cert=./CKA-Exam-Questions/Q14/tls.crt --key=./CKA-Exam-Questions/Q14/tls.key -n default
kubectl apply -f ./CKA-Exam-Questions/Q14/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/svc.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/ingress.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/gateway-class.yaml
cat ./CKA-Exam-Questions/Q14/README.md
printf '\n'

# Q15
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.19.1/cert-manager.yaml
kubectl delete mutatingwebhookconfiguration,validatingwebhookconfiguration,deploy,clusterrolebinding,clusterrole,rolebinding,role,svc,serviceaccount -l app.kubernetes.io/instance=cert-manager -n cert-manager
cat ./CKA-Exam-Questions/Q15/README.md
printf '\n'

# Q16
kubectl create ns frontend
kubectl create ns backend
kubectl create ns database
kubectl label namespace frontend namespace=frontend
kubectl label namespace backend namespace=backend
kubectl label namespace database namespace=database
kubectl apply -f ./CKA-Exam-Questions/Q16/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q16/svc.yaml
cat ./CKA-Exam-Questions/Q16/README.md
printf '\n'

# Command to copy to re-print a question
printf 'To review a specific question later on, run this command,\nwhere "Q#" is the letter Q followed by the question number (i.e. Q12):\ncat ./CKA-Exam-Questions/Q#/README.md'

# Last thing to run from Q1 because it will break cluster
DIR=$(shuf -i 1-8 -n 1)
FILE=$(ls CKA-Exam-Questions/Q1/Scenarios/$DIR)
cp -f CKA-Exam-Questions/Q1/Scenarios/$DIR/$FILE /etc/kubernetes/manifests/$FILE