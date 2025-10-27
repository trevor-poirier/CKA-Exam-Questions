
Question #3
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Prepare the Linux system for Kubernetes. Docker is already installed, but you
need to configure it for kubeadm.

Setup cri-dockerd by installing the following package found in the local root
directory: ~/CKA-Exam-Questions/cri-dockerd_0.3.9.3-0.ubuntu-jammy_amd64.deb

Enable and start the cri-docker service. Then configure the following system
parameters:
Set net.bridge.bridge-nf-call-iptables to 1
Set net.ipv6.conf.all.forwarding to 1
Set net.ipv4.ip_forward to 1
Set net.netfilter.nf_conntrack_max to 131072
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
