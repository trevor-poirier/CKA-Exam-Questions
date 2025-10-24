# Q1 - Question only
cat ./CKA-Exam-Questions/Q4/README.md
printf '\n'

# Q4
kubectl create ns echo-sound
kubectl apply -f ./CKA-Exam-Questions/Q4/deploy.yaml
kubectl apply -f ./CKA-Exam-Questions/Q4/svc.yaml
cat ./CKA-Exam-Questions/Q4/README.md
printf '\n'

# Last thing to run from Q1 because it will break cluster
DIR=$(shuf -i 0-5 -n 1)
FILE=$(ls CKA-Exam-Questions/Q1/Scenarios/$DIR)
cp -f CKA-Exam-Questions/Q1/Scenarios/$DIR/$FILE /etc/kubernetes/manifests/$FILE