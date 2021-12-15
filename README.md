# DAMG6210 Final Project - Art Gallery Management

| Name | NUID | Email |
| ------------- | --------- | ---------------------------- |
| Aishwarya Lamture | 001528479 | lamture.a@northeastern.edu |
| Aniket Mirajkar | 001563245 | mirajkar.a@northeastern.edu |
| Bhargavi Rao | 001442304 | rao.bh@northeastern.edu |
| Saloni Sankhe | 002117757 | sankhe.sa@northeastern.edu |

# About Art Gallery Management

**Background:**
The primary purpose of the Art Gallery Management System is to have an organized and easily
accessible Virtual Art Gallery. This will provide a platform for artists to showcase and sell their art. It also
provides easy availability and access of arts and artists to customers via events like exhibitions and
auctions. Art is a domain where the abilities of centralized database systems are yet to be utilized to
their full extent. With a rapidly increasing consumer base, it is of utmost importance to have an efficient
database system. Taking this into consideration, we aim to implement a systematic, structured, and
dynamic database management system.

**Mission Objectives:**
• Art Gallery Management System will provide a platform for managing information regarding
customers, artists, arts, and orders
• Customers can navigate through details regarding arts, orders, transactions, artists and events
• The administration team can add and modify the data concerning order updates, availability of
art, customers, artists and events
• The administration team can keep track of information concerning arts, customers, transactions
and orders

**Key Design Decisions**
• Art Gallery is visited by ZERO or MORE customer
• Art Gallery MUST HAVE ONE or MORE staff
• Art Gallery MAY HOST ZERO or MORE event
• Art Gallery MUST HAVE affiliation with ONE or MORE artists
• One artist MUST PRODUCE ONE or MORE artwork
• One artwork MUST BE created by ONE and ONLY ONE artist
• One artwork MAY BE present at an event
• One event MUST HAVE ONE or MORE artwork
• One artwork MAY BE rented via ONE or MORE rentals
• One rental MUST BE agreed upon to rent ONE and ONLY ONE artwork
• One artwork MAY BE ordered via ONE or MORE orders
• One order MAY contain ONE or MORE artwork
• One rental MUST BE a rental agreement for ONE and ONLY ONE customer
• One customer MAY BE renting ONE or MORE rental
• One customer MAY BE placing ONE or MORE order
• One order MUST BE placed by ONE and ONLY ONE customer
• One customer MAY DO ZERO or MORE payment
• One payment MUST BELONG to ONE and ONLY ONE customer
• One customer MAY DO one or more booking
• One booking MUST BE placed by ONE and ONLY ONE customer
• One event MAY HAVE ONE or MORE booking
• One booking MUST BELONG to ONE and ONLY ONE event
• One order MAY HAVE a delivery
• One delivery MUST HAVE ONE and ONLY ONE order

**Software Requirements:**
1. Microsoft SQL Server Management Studio 18
2. Tableau
3. Draw.io
4. Docker

# Clone the repo
git clone https://github.com/mirajkarani/DMDD_Project.git

# Sequence for running scripts-
1. DDL sql statements
2. DML sql statements
3. Non Clustered Indexes sql statements
4. Data Column Encryption sql statements
5. Trigger sql statements
6. Stored Procedures sql statements
7. Views sql statements
8. User defined Functions sql statements
9. Visualization files - Tableau
