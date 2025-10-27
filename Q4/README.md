
Question #4
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Create a new HorizontalPodAutoscale (HPA) named apache-server in the 
autoscale namespace. This HPA must target existing deployment apache-server 
in the autoscale namespace.

Set the HPA to target 50% CPU usage per Pod.
Configure a minimum of 1 pod, maximum of 4.
Set the downscale stabilization window to 30 seconds.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
