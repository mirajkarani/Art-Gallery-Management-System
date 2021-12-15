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
1. Art Gallery Management System will provide a platform for managing information regarding
customers, artists, arts, and orders
2. Customers can navigate through details regarding arts, orders, transactions, artists and events
3. The administration team can add and modify the data concerning order updates, availability of
art, customers, artists and events
4. The administration team can keep track of information concerning arts, customers, transactions
and orders

**Key Design Decisions**
1. Art Gallery is visited by ZERO or MORE customer
2. Art Gallery MUST HAVE ONE or MORE staff
3. Art Gallery MAY HOST ZERO or MORE event
4. Art Gallery MUST HAVE affiliation with ONE or MORE artists
5. One artist MUST PRODUCE ONE or MORE artwork
6. One artwork MUST BE created by ONE and ONLY ONE artist
7. One artwork MAY BE present at an event
8. One event MUST HAVE ONE or MORE artwork
9. One artwork MAY BE rented via ONE or MORE rentals
10. One rental MUST BE agreed upon to rent ONE and ONLY ONE artwork
11. One artwork MAY BE ordered via ONE or MORE orders
12. One order MAY contain ONE or MORE artwork
13. One rental MUST BE a rental agreement for ONE and ONLY ONE customer
14. One customer MAY BE renting ONE or MORE rental
15. One customer MAY BE placing ONE or MORE order
16. One order MUST BE placed by ONE and ONLY ONE customer
17. One customer MAY DO ZERO or MORE payment
18. One payment MUST BELONG to ONE and ONLY ONE customer
19. One customer MAY DO one or more booking
20. One booking MUST BE placed by ONE and ONLY ONE customer
21. One event MAY HAVE ONE or MORE booking
22. One booking MUST BELONG to ONE and ONLY ONE event
23. One order MAY HAVE a delivery
24. One delivery MUST HAVE ONE and ONLY ONE order

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
