PROJECT TITLE: 0x11-what_happens_when_your_type_google_com_in_your_browser_and_press_enter

STUDENT NAME: JULIUS KAMARA

WHAT HAPPENS WHEN YOU TYPE A HOSTNAME IN YOUR BROWSER?

what happens when you type https://www.google.com in your browser and press Enter?

Firstly, the text the user typed (https://www.google.com) is called a URL. Let’s break down the URL link to understand its several components.

https:// This specifies the protocol being used, in this case, HTTPS (hypertext transfer protocol secure), which is used to secure communication over the internet. The difference between HTTP and HTTPS - is the word secure, which means the resources transferred through the network are encrypted, and encryption is a way to secure a resource from unauthorized users.


What’s happening behind the scene?

1… Load Balancer:
When a user types a URL in their browser and presses enter, the request goes to the load balancer. The load balancer then determines which server is best equipped to handle the request, and sends the request to that server. This helps to distribute the traffic across multiple servers, preventing any single server from becoming overwhelmed and reducing the risk of downtime.
Load balancing also allows for better fault tolerance, as if one server goes down, the load balancer can automatically route traffic to other servers in the pool. This helps to ensure that the website remains available even if one server fails.




2… DNS Resolution:

When you type www.google.com in the browser, the browser sends a DNS request to the DNS resolver, to resolve the domain name to its IP address. The resolver first checks the cache files to see if it has the IP address for the domain. 

The DNS resolver is a server that maps a domain name to an IP address. If the resolver does not find the IP address, it sends a query to the root DNS, which directs the resolver to the appropriate DNS server.

3… Establishing a TCP Connection

Once the IP address is resolved, it opens a TCP connection with the web server. TCP (Transmission Control Protocol) is a communication protocol that ensures data is transferred reliably between devices.

The browser sends SYN packets to the server, and the server responds with SYN-ACK packets, and finally, the browser sends an ACK packet to complete the TCP handshake.


4… SSL/TLS Handshake

HTTPS is a secure version of HTTP that uses SSL (secure sockets layer) to encrypt data between the client and the server. The SSL handshake occurs after the TCP handshake.


5… Sending HTTP Request

After the SSL handshake, the browser sends an HTTP request to the server and if everything went well, the server responds with an OK message which means 200. In the context of the HTTPS request to www.google.com, the firewall can verify that the request is legitimate and not malicious, by checking the encryption keys, and checking that the SSL/TLS connection is secure. The firewall can also prevent malicious requests from reaching the server hosting the website.

The request includes a method(GET, POST, etc.), the requested URL, and other headers.


6… Receiving HTTP Response

The application server processes the request and sends back an HTTP response.

The response includes the requested data:

200 - success
404 - not found


7… Rendering the Webpage 

After receiving the HTTP response, the browser starts rendering the webpage.

It parses the HTML
Applies the CSS styles
Execute the Javascript code
Downloads any additional resources needed to render the page (e.g. images).

Finally, the browser displays the rendered page on the screen.

In summary, when you type “https://www.google.com” in your browser and hit Enter, a complex process involving:

DNS resolution
Establish a TCP connection
SSL/TLS handshake
Sending HTTP request
Receiving HTTP responses
Rendering the webpage occurs before the webpage appears on your screen.


