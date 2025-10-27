
Question #8
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A legacy app needs to be integrated into the Kubernetes built-in logging
architecture (i.e. kubectl logs). Update the existing Deployment synergy-deployment,
adding a co-located container named sidecar using the busybox:stable image to the
existing Pod. The new co-located container needs to run the following command:
/bin/sh -c "tail -n+1 -f /var/log/synergy-deployment.log

Use a volume mounted at /var/log to make the log file synergy-deployment.log
available to the co-located container. Do not otherwise alter the existing
container other than what is required.

Hint: Use a shared volume to expose the log file between the main application
container and the sidecar.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
