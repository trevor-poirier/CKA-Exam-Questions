
Question #2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Install and configure a Container Network Interface (CNI) of your choice that meets 
the specified requirements:

Flannel, using the manifest: 
https://github.com/flannel-io/flannel/releases/download/v0.26.1/kube-flannel.yml

Calico, using the manifest:
https://raw.githubusercontent.com/projectcalico/calico/v3.29.2/manifests/tigera-operator.yaml

Ensure the CNI is properly installed and configured correctly in the cluster.
Install from manifest files (do not use helm). The CNI you choose must:
Let pods communicate with each other
Support Network Policy enforcement
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
