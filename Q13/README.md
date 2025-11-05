
Question #13 (of 16)
[Workloads and Scheduling | 15% Weight | 4.7 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Create a new PriorityClass named high-priority for user workloads with a value
that is one less than the highest existing user-defined PriorityClass value.

PATCH the existing Deployment busybox-logger running in the priority NS to use
the high-priority PriorityClass.

Ensure that the busybox-logger Deployment rolls out successfully with the new
priority class set. It is expected that Pods from other Deployments in the priority
NS are evicted.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
