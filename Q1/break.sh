SCENARIO=$(shuf -i 1-8 -n 1)
EXTRA=$(shuf -i 1-8 -n 1)
sh CKA-Exam-Questions/Q1/Scenarios/$SCENARIO.sh
sh CKA-Exam-Questions/Q1/Extras/$EXTRA.sh