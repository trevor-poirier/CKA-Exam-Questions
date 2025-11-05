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
printf '\nTo review a specific question later on, run this command below.\nWhere "Q#" is the letter Q followed by the question number (i.e. Q12):\n\ncat ./CKA-Exam-Questions/Q#/README.md\n'
printf '\nTo list all questions again, run sh CKA-Exam-Questions/QUESTIONS.sh\n\n'