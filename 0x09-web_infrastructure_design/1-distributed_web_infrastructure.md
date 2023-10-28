# Design Explanation:

## User Accesses the Website:

* As before, a user wants to access www.foobar.com in their web browser.

## Load Balancer (HAProxy):

* The addition of a load balancer (HAProxy) distributes incoming web traffic across multiple servers to improve website performance and reliability. This component ensures high availability and load distribution.

## Server 1 and Server 2:

* Two servers are added to the infrastructure for redundancy and improved performance. They host the web server, application server, and application code base.

## Web Server (Nginx):

* Nginx remains responsible for handling HTTP requests from users' browsers, serving as the first point of contact for incoming requests.

## Application Server:

* Like the previous design, the application server hosts the application code base and executes server-side code.

## Application Files (Code Base):

* The application files contain the website's code, which is executed on the application server to generate dynamic content.

## Database (MySQL):

* The database stores structured data, such as user data and content. It plays a crucial role in the functionality of the website.

# Additional Components Explanation:

## Load Balancer (HAProxy): 

* The load balancer distributes incoming traffic to the available servers using a distribution algorithm. In this design, we use a round-robin algorithm, which evenly distributes requests among the servers. This ensures that the servers share the load and prevents any single server from becoming overwhelmed.

## Active-Active vs. Active-Passive:

* Active-Active setup means that all servers are actively serving requests. In this design, we have an Active-Active configuration, where both Server 1 and Server 2 actively process user requests.
* Active-Passive means that one server is active while the others are in standby mode, only becoming active when the primary server fails. This design opts for Active-Active to distribute the load and improve performance.

## Database Primary-Replica (Master-Slave) Cluster:

* In this infrastructure, a MySQL database operates in a Primary-Replica configuration. The Primary node handles write operations and data modifications, while the Replica node(s) replicate the data from the Primary node and serve read operations. This setup enhances database reliability and performance.

## Difference Between Primary and Replica:

* The Primary node is responsible for handling write operations (inserts, updates, deletes) and maintaining the most up-to-date data.
Replica nodes replicate data from the Primary node and are used for read operations (SELECT queries). They ensure high availability and load distribution for read-heavy operations.

# Issues with the Infrastructure:

## Single Point of Failure (SPOF):

* While this design is more resilient than the single-server setup, it can still have a single point of failure if the load balancer or any server fails. Consider adding additional load balancer redundancy and failover mechanisms.

## Security Issues:

* The infrastructure lacks security features, such as firewalls and HTTPS encryption. These are essential for safeguarding data and protecting against malicious attacks.

## No Monitoring:

* There is no mention of monitoring and alerting systems in the design. Monitoring tools are crucial for real-time visibility into the infrastructure's health, performance, and security.
