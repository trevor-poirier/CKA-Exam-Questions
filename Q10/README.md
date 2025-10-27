
Question #10
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A WordPress application with 3 replicas in the relative-fawn namespace needs
resources divided more evenly.

Adjust all pod resource requests as follows:
Give each pod a fair share of the CPU and memory
Add enough overhead to keep the node stable

It may help to temporarily scale the wordpress deployment to 0 replicas while
adjusting the resource requests. After updating, confirm:
WordPress keeps 3 replicas
All pods are running and ready
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
