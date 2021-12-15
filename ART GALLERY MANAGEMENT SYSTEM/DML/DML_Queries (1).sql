/* DML queries for insertion in the ArtGallery table */
INSERT INTO ARTGALLERY (ArtGalleryName ,ArtGalleryLocation) VALUES ('Art For All', 'Boston');
INSERT INTO ARTGALLERY (ArtGalleryName, ArtGalleryLocation) VALUES('Art For All','New York');
INSERT INTO ARTGALLERY (ArtGalleryName, ArtGalleryLocation) VALUES('Art For All','Los Angeles');

/* DML queries for insertion in the Artist table */
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (100, 'Boston', 9182360000, 'ava@gmail.com','05/09/1990','Ava','Smith');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (100, 'Boston', 9182360123, 'rob@gmail.com','06/09/1990','Rob','Brown');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (101, 'New York', 9182343560, 'maria@gmail.com','07/09/1990','Maria','Smith');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (102, 'Los Angeles', 9182728900, 'mary@gmail.com','08/09/1990','Mary','Taylor');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (101, 'New York', 9199060000, 'james@gmail.com','09/09/1990','James','Smith');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (102, 'Los Angeles', 9182367600, 'john@gmail.com','10/09/1997','John','Smith');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (100, 'Boston', 9182887700, 'sam@gmail.com','11/09/1996','Sam','Miller');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (102, 'Los Angeles', 9182365674, 'ava@gmail.com','12/09/1995','Susan','Thomas');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (101, 'New York', 9182369182, 'jos@gmail.com','05/09/1989','Jos','Smith');
INSERT INTO ARTIST(ArtGalleryID ,ArtistAddress, ArtistPhone, ArtistEmail, ArtistDOB, Artist_FirstName, Artist_LastName) VALUES (100, 'Boston', 9187236989, 'david@gmail.com','05/09/1978','David','Wilson');

/* DML queries for insertion in the ArtWork table */
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (8, 'Multicolour Metal', 'This artwork is a wall art', '04/21/2001', 6, 10000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (2, 'Brown Metal Mesh', 'This artwork is a wall art', '10/30/1968', 10,23000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (7, 'Gold Metal Tree', 'This artwork is a wall art', '09/23/1992',2,45000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (4, 'Silver Metal Decorative', 'This artwork is a wall art', '11/17/1989',13,12000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (3, 'Red Metal Marigold Flower', 'This artwork is a wall art', '12/28/1945',1,105000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (5, 'Copper Metal Decorative', 'This artwork is a wall Art', '09/17/2000',2,54000,'Painting');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (10, 'Blue Metal Round', 'This artwork is a sculpture', '01/02/1990',3,6700,'Sculpture');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (1, 'Red Metal Floral', 'This artwork is a sculpture', '02/02/1990',8,89000,'Sculpture');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (9, 'Green Metal Budda', 'This artwork is a sculpture', '04/09/1987',1,20000,'Sculpture');
INSERT INTO ARTWORK(ArtistID ,ArtWorkName, [Description], DateOfCreation, Quantity, Price, ArtCategory) VALUES (6, 'Gold Metal Arjun', 'This artwork is a sculpture', '10/09/1978',9,14000,'Sculpture');

/* DML queries for insertion in the Customer table */
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, 'St Germain', '05/09/1990', 'john@gmail.com', 9182367289, 'John', 'William');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (102, 'Main St', '07/09/1988', 'claire@gmail.com', 9182361234, 'Claire', 'Jones');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, '106 Ave St', '01/01/1980', 'ron@gmail.com', 9156767289, 'Ron', 'Miller');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (102, 'Bolyston St', '07/29/1997', 'eric@gmail.com', 9182309289, 'Eric', 'Davis');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, 'Waltham', '12/31/1994', 'cole@gmail.com', 7722367289, 'Cole', 'Wilson');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, '13 Bridge St', '03/19/1983', 'emily@gmail.com', 7672367289, 'Emily', 'Clark');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (102, '1st Street', '04/17/1985', 'sandra@gmail.com', 9902367289, 'Sandra', 'Taylor');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, 'Mass Avenue', '11/7/1995', 'richard@gmail.com', 9182354620, 'Richard', 'Chen');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (100, '98th Brigade St', '09/09/1993', 'april@gmail.com', 9183124289, 'April', 'Anderson');
INSERT INTO CUSTOMER (ArtGalleryID ,CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone, Customer_FirstName, Customer_LastName) VALUES (102, '2nd Dew St', '06/03/1998', 'mike@gmail.com', 9187827200, 'Mike', 'Brown');
INSERT INTO CUSTOMER (ArtGalleryID, Customer_FirstName, Customer_LastName, CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone) VALUES (101, 'Mechelle', 'Stoneman', '2nd Main St', '1978-09-18', 'stoneman.m@gmail.com', 7832636114);
INSERT INTO CUSTOMER (ArtGalleryID, Customer_FirstName, Customer_LastName, CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone) VALUES (101, 'Tyesha', 'Freitag', '4th Ave', '1985-10-23', 'fre_tye@yahoo.com', 7854983921);
INSERT INTO CUSTOMER (ArtGalleryID, Customer_FirstName, Customer_LastName, CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone) VALUES (101, 'Dean', 'Stoecker', '145th St Bridge', '1956-03-01', 'dean0103@gmail.com', 8943735281);
INSERT INTO CUSTOMER (ArtGalleryID, Customer_FirstName, Customer_LastName, CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone) VALUES (101, 'Annelle', 'Pickney', 'Albany St', '1997-12-09', 'pick_anne83@yahoo.com', 9832473821);
INSERT INTO CUSTOMER (ArtGalleryID, Customer_FirstName, Customer_LastName, CustomerAddress, CustomerDOB, CustomerEmail, CustomerPhone) VALUES (101, 'Bethany', 'Tacy', 'Dey St', '1989-01-22', 'tacy_bethany1@yahoo.com', 8493934291);

/* DML queries for insertion in the Staff table */
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(102,'John','Mayor','johnmarsh@gmail.com','8446396777','75 Bolyston Street','M');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(102,'Sean','Cooner','Seanfeazpatrick@gmail.com',8742266331,'JVUE','D');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(100,'Derek','Burke','derekwalt@gmail.com',6598742241,'75 Bolyston Street','E');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(101,'Michelle','Coles','michelle@gmail.com',6954784421,'Mission Hill','M');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(101,'George','Stokes','georgehopkins@gmail.com',9655447821,'75 Bolyston Street','D');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(102,'Zaki','Lu','zakidrew@gmail.com',9855447265,'Mission Main','E');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(100,'Nakita','Odom','nakitadally@gmail.com',9987456218,'75 Bolyston Street','M');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(101,'Frazen','Portillo','frazenchristen@gmail.com',998745136,'75 Bolyston Street','E');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(100,'Sally','Sherman','saly preston@gmail.com',6654198732,'75 Bolyston Street','D');
INSERT INTO STAFF(ArtGalleryID,Staff_FirstName,Staff_LastName,StaffEmail,StaffPhone,StaffAddress,StaffType) VALUES(100,'Jun','Sushi','junyang@gmail.com',9547562214,'Becalon Street','M');

/* DML queries for insertion in the Management Staff table */
INSERT INTO MANAGEMENT_STAFF(StaffID,AnnualSalary,DateOfJoining) VALUES(1,875598,'2002-09-17');
INSERT INTO MANAGEMENT_STAFF(StaffID,AnnualSalary,DateOfJoining) VALUES(4,875598,'2010-03-17');
INSERT INTO MANAGEMENT_STAFF(StaffID,AnnualSalary,DateOfJoining) VALUES(7,875598,'2005-07-17');
INSERT INTO MANAGEMENT_STAFF(StaffID,AnnualSalary,DateOfJoining) VALUES(10,875598,'2001-02-17');
 
 /* DML queries for insertion in the Event Staff table */
INSERT INTO EVENT_STAFF(StaffID,ContractNo,BillingRate) VALUES(3,654478,6.0);
INSERT INTO EVENT_STAFF(StaffID,ContractNo,BillingRate) VALUES(6,669871,6.0);
INSERT INTO EVENT_STAFF(StaffID,ContractNo,BillingRate) VALUES(8,356478,4.0);
 
 /* DML queries for insertion in the Delivery table */
INSERT INTO DELIVERY_STAFF(StaffID,LocationServed,NoOfDeliveries,WeeklySalary) VALUES(2,'Beackon Street',5,2200);
INSERT INTO DELIVERY_STAFF(StaffID,LocationServed,NoOfDeliveries,WeeklySalary) VALUES(5,'MEchen Road',4,2311);
INSERT INTO DELIVERY_STAFF(StaffID,LocationServed,NoOfDeliveries,WeeklySalary) VALUES(9,'Ruggles Street',2,900);

/* DML queries for insertion in the Orders table */
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(7,4,'2021-11-08','Awaiting Payment','R',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,6,'2021-01-01','Currently In Transit','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(5,7,'2019-09-16','Rental Extension','R',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(1,9,'2018-07-12','Completed Order','R',6);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(2,2,'2019-12-28','Completed Order','P',4);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(9,10,'2021-11-27','Awaiting Payment','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(10,5,'2020-04-25','Completed Order','P',3);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(4,3,'2019-09-10','Completed Order','R',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(6,8,'2019-08-01','Rental Extension','R',6);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(8,15,'2020-01-06','Discounted Purchase','R',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(5,1,'2021-07-14','Discounted Purchase','P',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(6,1,'2020-05-09','Discounted Purchase','R',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(8,6,'2019-02-02','Completed Order','R',5);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(8,1,'2018-06-28','Discounted Purchase','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,6,'2020-12-19','Discounted Purchase','R',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(1,6,'2019-12-13','Discounted Purchase','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,14,'2020-09-04','Completed Order','R',10);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(1,11,'2020-01-19','Discounted Purchase','R',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,4,'2019-03-29','Discounted Purchase','P',8);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(8,6,'2018-08-17','Completed Order','R',7);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,12,'2019-11-15','Discounted Purchase','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(10,4,'2019-12-15','Completed Order','R',2);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(10,4,'2018-08-09','Discounted Purchase','P',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,15,'2020-02-07','Currently In Transit','R',1);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(3,13,'2020-06-28','Discounted Purchase','R',3);
INSERT INTO ORDERS(ArtworkID,CustomerID,DateOfOrder,OrderDescription,OrderType,OrderQuantity) VALUES(9,12,'2019-05-18','Completed Order','P',1);

/* DML queries for insertion in the Purchase Order table */
INSERT INTO PURCHASEORDER VALUES(2,45000);
INSERT INTO PURCHASEORDER VALUES(5,23000);
INSERT INTO PURCHASEORDER VALUES(6,20000);
INSERT INTO PURCHASEORDER VALUES(7,14000);
INSERT INTO PURCHASEORDER VALUES(11,100000);
INSERT INTO PURCHASEORDER VALUES(14,80000);
INSERT INTO PURCHASEORDER VALUES(16,7000);
INSERT INTO PURCHASEORDER VALUES(19,9999);
INSERT INTO PURCHASEORDER VALUES(21,11000);
INSERT INTO PURCHASEORDER VALUES(23,12000);
INSERT INTO PURCHASEORDER VALUES (26,20000);

/* DML queries for insertion in the Rental Order table */
INSERT INTO RENTALORDER VALUES(1,'2021-11-08','2021-12-08',1566.75);
INSERT INTO RENTALORDER VALUES(3,'2019-09-16','2019-09-26',2499.99);
INSERT INTO RENTALORDER VALUES(4,'2018-07-12','2018-10-06',895.45);
INSERT INTO RENTALORDER VALUES(8,'2019-09-10', '2019-12-06', 706.50);
INSERT INTO RENTALORDER VALUES(9,'2019-08-01','2019-08-06',2999.8);
INSERT INTO RENTALORDER VALUES(10,'2020-05-15','2020-05-15',300);
INSERT INTO RENTALORDER VALUES(12,'2020-02-12','2020-02-20',130);
INSERT INTO RENTALORDER VALUES(13,'2021-11-09','2021-11-12',560.75);
INSERT INTO RENTALORDER VALUES(15,'2019-05-15','2019-05-16',80.45);
INSERT INTO RENTALORDER VALUES(17,'2020-01-22','2020-01-22',805.8);
INSERT INTO RENTALORDER VALUES(18,'2019-07-07','2019-07-07',710);
INSERT INTO RENTALORDER VALUES(20,'2021-09-10','2021-09-15',115);
INSERT INTO RENTALORDER VALUES(22,'2019-05-15','2019-05-16',80.45);
INSERT INTO RENTALORDER VALUES(24,'2020-04-04','2020-04-04',45);
INSERT INTO RENTALORDER VALUES(25,'2019-03-11','2019-03-13',168.9);

/* DML queries for insertion in the Payment table */
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(7,'Credit Card','2020-04-26','Completed',42000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(10,'Cash','2020-02-28','Completed', 39999);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(8,'Credit Card','2019-09-10','Completed',129999);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(4,'Cash','2018-07-13','Completed',461994);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(2,'Debit Card','2021-01-01','Completed',45000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(9,'Cash','2019-08-06','Completed',89994);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(5,'Debit Card','2019-12-31','Completed', 115000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(3,'Credit Card','2019-09-17', 'Completed', 49998);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(6,'Credit Card','2021-11-27','Pending', 20000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(11,'Credit Card','2021-07-14','Completed', 200000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(14,'Credit Card','2018-06-28','Completed', 80000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(16,'Cash','2019-12-13','Pending', 7000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(19,'Credit Card','2019-03-29','Pending', 79992);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(21,'Cash','2019-11-15','Completed', 11000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(23,'Credit Card','2018-08-09','Completed', 12000);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(1,'Credit Card','2021-11-10','Pending', 46999);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(12,'Credit Card','2020-02-12','Completed', 2080);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(13,'Cash','2021-11-09','Pending', 8411.25);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(15,'Cash','2019-05-15','Completed',321.8);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(17,'Credit Card','2020-01-22','Pending', 8058);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(18,'Credit Card','2019-07-07','Completed', 1420);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(20,'Cash','2021-09-10','Completed', 4025);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(22,'Debit Card','2019-05-15','Pending', 321.8);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(24,'Credit Card','2020-04-04','Completed', 45);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(25,'Debit Card','2019-03-11','Completed', 1689);
INSERT INTO PAYMENT (OrderID, PaymentType, PaymentDate, PaymentStatus, PaymentAmount) VALUES(26,'Debit Card','2019-05-18','Completed', 20000);

/* DML queries for insertion in the Delivery table */
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(6,'Mike','2021-11-14','75 Bolyston Street','Pending');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(1,'Duke','2021-12-03','Smith Street','Delivered');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(3,'Sesh','2021-11-05','Symphony','Pending');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(15,'Robert','2021-12-31','Prudential','Delivered');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(5,'Sam','2021-11-21','Commonwealth ave','Delivered');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(9,'Virgil','2021-11-19','Mass Art and Law','Pending');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(7,'Orion','2021-12-13','M G Road','Pending');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(8,'Siraj','2021-11-19','Queens Garden','Delivered');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(11,'Martina','2021-11-08','Residency Club','Delivered');
INSERT INTO DELIVERY(OrderID,DeliveryAgent,DeliveryDate,DeliveryLocation, DeliveryStatus) VALUES(2,'Shayna','2021-12-18','Copley Square','Pending');

/* DML queries for insertion in the Events table */
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/21/2022', 'Exhibition', '2022-11-21 13:00:00', '2022-11-21 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/22/2022', 'Exhibition', '2022-11-22 13:00:00', '2022-11-22 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/23/2022', 'Exhibition', '2022-11-23 13:00:00', '2022-11-23 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/24/2022', 'Exhibition', '2022-11-24 13:00:00', '2022-11-24 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/25/2022', 'Exhibition', '2022-11-25 13:00:00', '2022-11-25 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/26/2022', 'Exhibition', '2022-11-26 13:00:00', '2022-11-26 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'New Jersey', '11/27/2022', 'Exhibition', '2022-11-27 13:00:00', '2022-11-27 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'New Jersey', '11/28/2022', 'Exhibition', '2022-11-28 13:00:00', '2022-11-28 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (102, 'New York', '11/29/2022', 'Exhibition', '2022-11-29 13:00:00', '2022-11-29 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (102, 'New York', '11/30/2022', 'Exhibition', '2022-11-30 13:00:00', '2022-11-30 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'Los Angeles', '10/29/2022', 'Exhibition', '2022-10-29 13:00:00', '2022-10-29 17:00:00',150);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/21/2022', 'Auction', '2023-11-21 13:00:00', '2023-11-21 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/22/2022', 'Auction', '2023-11-22 13:00:00', '2023-11-22 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/23/2022', 'Auction', '2023-11-23 13:00:00', '2023-11-23 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/24/2022', 'Auction', '2023-11-24 13:00:00', '2023-11-24 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/25/2022', 'Online Auction', '2023-11-25 13:00:00', '2023-11-25 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (100, 'Boston', '11/26/2022', 'Online Auction', '2023-11-26 13:00:00', '2023-11-26 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'New Jersey', '11/27/2022', 'Online Exhibition', '2023-11-27 13:00:00', '2023-11-27 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'New Jersey', '11/28/2022', 'Online Exhibition', '2023-11-28 13:00:00', '2023-11-28 17:00:00',100);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (102, 'New York', '11/29/2022', 'Online Exhibition', '2023-11-29 13:00:00', '2023-11-29 17:00:00',250);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (102, 'New York', '11/30/2022', 'Auction', '2023-11-30 13:00:00', '2023-11-30 17:00:00',50);
INSERT INTO EVENTS(ArtGalleryID ,EventLocation, EventDate, EventType, EventStartTime, EventEndTime, Event_Capacity) VALUES (101, 'Los Angeles', '10/29/2022', 'Auction', '2023-10-29 13:00:00', '2023-10-29 17:00:00',150);

/* DML queries for insertion in the Booking table */
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (1, 4, '12/21/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (2, 1, '12/22/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (3, 3, '12/23/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (4, 4, '12/24/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (5, 9, '12/25/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (6, 9, '12/26/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (7, 1, '12/27/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (8, 2, '12/28/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (9, 6, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (10, 5, '12/30/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (11, 9, '11/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (12, 9, '11/14/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 7, '10/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (14, 5, '09/04/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 6, '12/07/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (1, 7, '01/30/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (2, 9, '08/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (3, 3, '03/11/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (4, 2, '02/27/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (5, 1, '12/16/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (6, 3, '04/21/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (7, 4, '12/14/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (8, 8, '06/19/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (9, 3, '02/20/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (10, 2, '02/01/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (11, 1, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (12, 3, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 4, '08/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (14, 2, '07/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 4, '09/15/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 9, '09/15/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 9, '08/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (1, 11, '12/21/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (2, 12, '12/22/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (3, 13, '12/23/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (4, 14, '12/24/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (5, 12, '12/25/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (6, 12, '12/26/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (7, 11, '12/27/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (8, 15, '12/28/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (9, 16, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (10, 15, '12/30/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (11, 17, '11/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (12, 20, '11/14/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 19, '10/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (14, 18, '09/04/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 16, '12/07/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (1, 17, '01/30/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (2, 19, '08/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (3, 13, '03/11/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (4, 12, '02/27/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (5, 19, '12/16/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (6, 20, '04/21/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (7, 20, '12/14/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (8, 18, '06/19/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (9, 12, '02/20/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (10, 12, '02/01/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (11, 11, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (12, 10, '12/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 14, '08/13/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (14, 18, '07/29/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 17, '09/15/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (15, 12, '09/15/2021');
INSERT INTO BOOKING(CustomerID ,EventID, BookingDate) VALUES (13, 12, '08/13/2021');