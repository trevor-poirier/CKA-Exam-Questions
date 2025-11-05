Instructions to use this practice exam:
1) Open up a kubernetes playground here https://killercoda.com/killer-shell-cka/scenario/playground - create account if you haven't
2) Run ```git clone https://github.com/trevor-poirier/CKA-Exam-Questions.git``` on the terminal in the playground to import questions and resources
3) Run ```sh CKA-Exam-Questions/init.sh``` in the playground terminal to create resources for each scenario and print the questions
4) Wait for the script to finish. You will see it creating resources, and then after a brief pause, it will print out the exam questions
5) It will be easiest to open up a second terminal tab to solve the questions, keeping the first tab with the displayed questions to refer to
6) Now you can begin. Attempt to solve using only the official kubernetes.io (and helm) documentation
7) Troubleshooting & Cluster Setup/Configuration/Installation questions = highest priority based on weight. Storage questions = lowest priority.

You can use this YouTube series as a point of reference, or to see how to solve each question:
https://www.youtube.com/watch?v=kDZEiXHpEks&list=PLSsEvm2nF_8nGkhMyD1sq-DqjwQq8fAii

16 questions. In the actual exam you will have 120 minutes to solve all the questions. Try to do it in the 60 minutes
available in the free killercoda linux shell provided above. 

In the actual exam, shoot for **6 minutes per question** (and **10 minutes for "Fix kubeadm cluster" question**. This leaves **20 minutes at the end to review** your work.

In this practice exam, try to cut those times in half - allowing **3 minutes per question** (and **5 minutes for "Fix kubeadm cluster" question**). Leaving **10 minutes at the end to review** your work.**

* *Make sure you solve question #1 FIRST* *. The cluster is broken and you must troubleshoot by checking the status of the kube-apiserver.yaml,
etcd.yaml, and kube-scheduler.yaml manifest files. This question is weighted the heaviest on the exam, so you need to
solve this one correctly. You must troubleshoot without the use of kubectl - as the kube-apiserver is not functioning properly.

* *It is best to do question #2 SECOND* * - although it is not required. The scenario in this question doesn't break the cluster,
but it does leave you without a CNI plugin installed. Which may cause some issues with the rest of the questions.
