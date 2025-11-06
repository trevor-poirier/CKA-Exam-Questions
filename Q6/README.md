
Question #6 (of 16)
[Servicing and Networking | 20% Weight | 6.3 pts]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Create a new Ingress resource echo in echo-sound namespace,
exposing Service echoserver-service http://example.org/echo using port 8080.

Test availability of echoserver-service using this command, which should return 200:
curl -o /dev/null -s -w "%{http_code}\n" http://example.org/echo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
