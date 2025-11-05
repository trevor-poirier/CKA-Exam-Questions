
Question #14 (of 16)
[Servicing and Networking | 20% Weight | 6.3 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Migrate an existing web application from Ingress to Gateway API. HTTPS access must
be maintained. 

A GatewayClass resource named nginx is already installed in the cluster.

First, create a Gateway named web-gateway with hostname gateway.web.k8s.local that
maintains the existing TLS and listener configuration from the existing Ingress
resource named web.

Next, create a HTTPRoute named web-route with hostname gateway.web.k8s.local that
maintains the existing routing rules from the current Ingress resource named web.

Test your Gateway API configuration with the following command:
curl https://gateway.web.k8s.local

Finally, delete the existing Ingress resource named web.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
