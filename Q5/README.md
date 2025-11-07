
Question #5 (of 16)
[Workloads and Scheduling | 15% Weight | 4.7 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
An NGINX deployment named nginx-static is running in the nginx-static NS. It is
configured using a ConfigMap named nginx-config. Update the nginx-config to allow
TLSv1.2 connections. It currently only accepts TLSv1.3 connections.

Then update nginx-config to make it immutable.

Use this command to test changes: curl --tls-max 1.2 https://web.k8s.local
This command should fail.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
