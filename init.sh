# Q1 - Question only
printf '\nQ1\n'

# Q2 - Question only
printf '\nQ2\n'

# Q3
printf '\nQ3\n'

# Q4
printf '\nQ4\n'
kubectl create ns autoscale
kubectl apply -f ./CKA-Exam-Questions/Q4/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q4/svc.yaml

# Q5
printf '\nQ5\n'
kubectl create ns nginx-static
kubectl apply -f ./CKA-Exam-Questions/Q5/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q5/svc.yaml
kubectl apply -f ./CKA-Exam-Questions/Q5/cm.yaml

# Q6
printf '\nQ6\n'
kubectl create ns echo-sound
kubectl apply -f ./CKA-Exam-Questions/Q6/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q6/svc.yaml

# Q7
printf '\nQ7\n'
kubectl create ns argocd
kubectl apply -k https://github.com/argoproj/argo-cd/manifests/crds\?ref\=stable

# Q8
printf '\nQ8\n'
kubectl apply -f ./CKA-Exam-Questions/Q8/deploy.yaml

# Q9
printf '\nQ9\n'
kubectl create ns mariadb
kubectl apply -f ./CKA-Exam-Questions/Q9/pv.yaml

# Q10
printf '\nQ10\n'
kubectl create ns relative-fawn
kubectl apply -f ./CKA-Exam-Questions/Q10/deploy.yaml

# Q11
printf '\nQ11\n'

# Q12
printf '\nQ12\n'
kubectl create ns spline-reticulator
kubectl apply -f ./CKA-Exam-Questions/Q12/deploy.yaml

# Q13
printf '\nQ13\n'
kubectl create ns priority
kubectl create priorityclass user-max-priority --value=1000000000
kubectl apply -f ./CKA-Exam-Questions/Q13/deploy.yaml

# Q14
printf '\nQ14\n'
kubectl apply --server-side -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.4.0/standard-install.yaml
kubectl create secret tls web-tls --cert=./CKA-Exam-Questions/Q14/tls.crt --key=./CKA-Exam-Questions/Q14/tls.key -n default
kubectl apply -f ./CKA-Exam-Questions/Q14/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/svc.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/ingress.yaml
kubectl apply -f ./CKA-Exam-Questions/Q14/gateway-class.yaml

# Q15
printf '\nQ15\n'
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.19.1/cert-manager.yaml
kubectl delete mutatingwebhookconfiguration,validatingwebhookconfiguration,deploy,clusterrolebinding,clusterrole,rolebinding,role,svc,serviceaccount -l app.kubernetes.io/instance=cert-manager -n cert-manager
kubectl delete pod -l app.kubernetes.io/instance=cert-manager -n cert-manager --force

# Q16
printf '\nQ16\n'
kubectl create ns frontend
kubectl create ns backend
kubectl create ns database
kubectl label namespace frontend namespace=frontend
kubectl label namespace backend namespace=backend
kubectl label namespace database namespace=database
kubectl apply -f ./CKA-Exam-Questions/Q16/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q16/svc.yaml

# Second to last thing to run from Q2 before breaking cluster
sleep 15
sudo rm /etc/cni/net.d/calico-kubeconfig
for crd in $(kubectl get crds -o name | grep "projectcalico.org"); do kubectl delete $crd; done
kubectl delete deploy,ds,cm -l k8s-app=calico-kube-controllers -n kube-system
kubectl delete pod -l k8s-app=calico-kube-controllers -n kube-system --force

# Last thing to run from Q1 because it will break cluster
SCENARIO=$(shuf -i 1-8 -n 1)
EXTRA=$(shuf -i 1-8 -n 1)
sh CKA-Exam-Questions/Q1/Scenarios/$SCENARIO.sh
sh CKA-Exam-Questions/Q1/Extras/$EXTRA.sh

# Sleep for troubleshooting resource creation, then clear before showing all questions again
sleep 5
clear
printf '\n\nNow you can begin. Attempt to solve using only the official kubernetes.io (and helm) documentation.'
printf '\nIt will be easiest to open up a second terminal tab to solve the questions, keeping this first tab with the displayed questions to refer to.\n'
printf '\nTroubleshooting & Cluster Setup/Configuration/Installation questions = highest priority based on weight. Storage questions = lowest priority.\n'
printf '\nAllow 3 minutes per question (and 5 minutes for "Fix kubeadm cluster" question), leaving 10 review minutes at the end to check your work.\n\n'
cat ./CKA-Exam-Questions/Q1/README.md
cat ./CKA-Exam-Questions/Q2/README.md
cat ./CKA-Exam-Questions/Q3/README.md
cat ./CKA-Exam-Questions/Q4/README.md
cat ./CKA-Exam-Questions/Q5/README.md
cat ./CKA-Exam-Questions/Q6/README.md
cat ./CKA-Exam-Questions/Q7/README.md
cat ./CKA-Exam-Questions/Q8/README.md
cat ./CKA-Exam-Questions/Q9/README.md
cat ./CKA-Exam-Questions/Q10/README.md
cat ./CKA-Exam-Questions/Q11/README.md
cat ./CKA-Exam-Questions/Q12/README.md
cat ./CKA-Exam-Questions/Q13/README.md
cat ./CKA-Exam-Questions/Q14/README.md
cat ./CKA-Exam-Questions/Q15/README.md
cat ./CKA-Exam-Questions/Q16/README.md

# Command to copy to re-print a question
printf '\nTo review a specific question later on, run this command below.\nWhere "Q#" is the letter Q followed by the question number (i.e. Q12):\n\ncat ./CKA-Exam-Questions/Q#/README.md\n\n'
