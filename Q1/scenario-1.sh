DIR=$(shuf -i 0-5 -n 1)
FILE=$(ls CKA-Exam-Questions/Q1/Scenarios/$DIR)
cp -f CKA-Exam-Questions/Q1/Scenarios/$DIR/$FILE /etc/kubernetes/manifests/$FILE