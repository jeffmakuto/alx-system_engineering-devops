# Infrastructure components and their roles

## User Accesses the Website:

* A user wants to access www.foobar.com in their web browser.

## Server (IP: 8.8.8.8):

* The server is a physical or virtual machine responsible for hosting the entire web infrastructure. It runs the operating system, manages resources, and serves as the central hub for the website.

## Domain Name (foobar.com):

* The domain name, in this case, foobar.com, is a human-readable address that users type in their web browsers to access the website. It plays a crucial role in translating user-friendly names into IP addresses (like 8.8.8.8).

## DNS Record (www):

* The "www" is a subdomain, and it is a part of the URL www.foobar.com. In the Domain Name System (DNS), it is typically configured as a CNAME (Canonical Name) record, which points to the main domain (foobar.com) or the server's IP address (8.8.8.8).

## Web Server (Nginx):

* The web server (e.g., Nginx) is responsible for handling HTTP requests from users' browsers. It receives requests, processes them, and returns the appropriate web pages or assets to the users. It can also handle SSL/TLS encryption and load balancing.

## Application Server:

* The application server hosts the application code base. It runs the server-side code responsible for generating dynamic content, handling database requests, and executing business logic. It communicates with the web server to provide the requested data to users.

## Application Files (Code Base):

* The application files consist of the actual website code, which could be written in languages like PHP, Python, Ruby, etc. The application server executes this code and generates the dynamic content.

## Database (MySQL):

* The database stores structured data used by the application. It's essential for storing and retrieving information such as user accounts, product details, and other content. The application server communicates with the database to fetch and update data as needed.

## Communication with the User's Computer:

* When a user requests the website, their computer sends an HTTP request to the server (8.8.8.8) using the domain name (www.foobar.com). The server processes this request, passes it to the appropriate component (web server or application server), retrieves the required data from the database, and sends a response back to the user's computer, which is then displayed in their web browser.

# Issues with the Infrastructure:

## Single Point of Failure (SPOF):

* This infrastructure has a single server, making it susceptible to a single point of failure. If the server experiences hardware or software issues, the entire website may become inaccessible.

## Downtime During Maintenance:

* When performing maintenance or deploying new code, there may be downtime. For example, if the web server needs to be restarted, users won't be able to access the website during that time.

## Limited Scalability:

* The infrastructure's current design is not easily scalable. It can't handle a significant increase in incoming traffic, as it relies on a single server. To address this, you might need to consider load balancing, additional servers, and database scaling solutions.
