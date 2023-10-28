# Specifics about the Infrastructure:

## Why Add a Load Balancer:

* The load balancer is added to distribute incoming web traffic across multiple servers, ensuring high availability, load distribution, and redundancy. It also improves performance by spreading the load evenly among servers.

## Why Add Multiple Servers:

* Multiple servers are added for redundancy and improved performance. If one server fails, the other can continue to serve requests, reducing the risk of downtime.

## What Are Firewalls For:

* Firewalls are security mechanisms that control and filter network traffic, helping to protect the infrastructure from unauthorized access, malicious attacks, and unwanted network traffic. They act as a barrier between the internal network and external threats.

## Why Serve Traffic Over HTTPS:

* Traffic is served over HTTPS to secure the communication between users and the website. HTTPS encrypts data transmitted over the network, ensuring the privacy and integrity of user data, and it builds trust by verifying the authenticity of the website.

## What Monitoring Is Used For:

* Monitoring is used to track the health, performance, and security of the infrastructure in real-time. It helps identify issues, trends, and anomalies, and enables proactive measures to ensure uninterrupted operation.

## How Monitoring Tools Collect Data:

* Monitoring tools collect data by regularly polling various aspects of the infrastructure, such as server CPU usage, memory, network traffic, error logs, and more. They may also use agents installed on servers, perform remote checks, or analyze log files to gather data.

## Monitoring Web Server QPS:

* To monitor the web server's QPS (Queries Per Second), you can use monitoring tools to track the number of incoming HTTP requests to the server. These tools can calculate the request rate and provide real-time or historical data for analysis.

# Issues with the Infrastructure:

## Terminating SSL at the Load Balancer Level:

* Terminating SSL at the load balancer means that the load balancer decrypts HTTPS traffic before forwarding it to the servers. This can be an issue because it adds an additional layer of processing at the load balancer, potentially creating a single point of failure for SSL termination. To mitigate this, SSL termination could be distributed across multiple load balancers.

## Having Only One MySQL Server Capable of Accepting Writes:

* If there is only one MySQL server configured to accept write operations (the Primary node), it becomes a single point of failure. If it fails, write operations can't be performed, potentially causing data loss or service disruption. Implementing database clustering or replication with multiple writable nodes can help address this issue.

## Having Servers with All the Same Components:

* Having identical components (database, web server, and application server) on all servers can be a problem if a vulnerability or issue affects one component. In such a scenario, the problem can quickly propagate to all servers. To improve resilience, consider diversifying components or using multiple technology stacks across the servers to minimize the risk of a single flaw affecting the entire infrastructure.
