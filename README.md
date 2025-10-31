Instructions to use this practice exam:
1) Open up a kubernetes playground here https://killercoda.com/killer-shell-cka/scenario/playground - create account if you haven't
2) Run git clone https://github.com/trevor-poirier/CKA-Exam-Questions.git on the terminal in the playground to import questions and resources
3) Run sh CKA-Exam-Questions/init.sh in the playground terminal to create resources for each scenario and print the questions
4) Attempt to solve using only the official kubernetes.io (and helm) documentation

16 questions. In the exam you will have 120 minutes to solve all the questions. Try to do it in the 60 minutes
available in the free killercoda linux shell provided above.

**Make sure you solve question #1 FIRST. The cluster is broken and you must troubleshoot by checking the status of the
etcd.yaml and kube-apiserver.yaml manifest files. This question is weighted the heaviest on the exam, so you need to
solve this one correctly. You must troubleshoot without the use of kubectl - as the kube-apiserver is not functioning properly.

**It is best to do question #2 SECOND - although it is not required. The scenario in this question doesn't break the cluster,
but it does leave you without a CNI plugin installed. Which may cause some issues with the rest of the questions.
