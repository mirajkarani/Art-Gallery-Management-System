/* DDL query for creating Art Gallery Database */
CREATE DATABASE ARTGALLERYDATABASE;
GO;

USE ARTGALLERYDATABASE;
GO;

/* DDL query for creating Art Gallery table */
CREATE TABLE ARTGALLERY(
ArtGalleryID int not null IDENTITY(100,1),
ArtGalleryName varchar(25) NOT NULL,
ArtGalleryLocation varchar(25),
CONSTRAINT [prim_artgallery] PRIMARY KEY CLUSTERED 
(ArtGalleryID ASC
)
)ON [PRIMARY];

/* DDL query for creating Artist table */
CREATE TABLE ARTIST(
ArtistID int not null IDENTITY(1,1),
Artist_FirstName varchar(25),
Artist_LastName varchar(25),
ArtistAddress varchar(25),
ArtistPhone char(10),
ArtistEmail varchar(25),
ArtistDOB date,
ArtGalleryID int not null,
CONSTRAINT FK_ArtGallery FOREIGN KEY (ArtGalleryID)
REFERENCES ArtGallery(ArtGalleryID),
CONSTRAINT PK_Artist PRIMARY KEY CLUSTERED 
(ArtistID ASC
),
)ON [PRIMARY];

/* DDL query for creating Artwork table */
CREATE TABLE ARTWORK(
ArtWorkID int not null IDENTITY(1,1),
ArtWorkName varchar(200),
[Description] varchar(50),
DateOfCreation date,
Quantity int,
Price money,
ArtCategory varchar(25),
ArtistID int not null,
CONSTRAINT FK_ArtWork FOREIGN KEY (ArtistID)
REFERENCES ARTIST(ArtistID),
CONSTRAINT PK_ArtWork PRIMARY KEY CLUSTERED 
(ArtWorkID ASC
),
)ON [PRIMARY];

/* DDL query for creating Customer table */
CREATE TABLE CUSTOMER(
CustomerID int not null IDENTITY(1,1),
Customer_FirstName varchar(25),
Customer_LastName varchar(25),
CustomerAddress varchar(25),
CustomerDOB date,
CustomerEmail varchar(25),
CustomerPhone char(10),
ArtGalleryID int not null,
CONSTRAINT FK_CUSTOMER FOREIGN KEY (ArtGalleryID)
REFERENCES ArtGallery(ArtGalleryID),
CONSTRAINT PK_Customer PRIMARY KEY CLUSTERED
(CustomerID ASC
),
)ON [PRIMARY];

/* DDL query for creating Staff table */
CREATE TABLE STAFF(
StaffID int not null IDENTITY(1,1),
Staff_FirstName varchar(25),
Staff_LastName varchar(25),
StaffEmail varchar(25),
StaffPhone char(10),
StaffAddress varchar(25),
StaffType varchar(1) CONSTRAINT 
StaffType_CHK CHECK (StaffType IN ('M',
'E', 'D') ),
ArtGalleryID int not null,
CONSTRAINT FK_Staff FOREIGN KEY (ArtGalleryID)
REFERENCES ArtGallery(ArtGalleryID),
CONSTRAINT PK_Staff PRIMARY KEY CLUSTERED 
(StaffID ASC
),
)ON [PRIMARY];

/* DDL query for creating Management Staff table */
CREATE TABLE MANAGEMENT_STAFF(
StaffID int not null PRIMARY KEY REFERENCES STAFF(StaffID),
AnnualSalary float,
DateOfJoining date);

/* DDL query for creating Event Staff table */
CREATE TABLE EVENT_STAFF(
StaffID int not null PRIMARY KEY REFERENCES STAFF(StaffID),
ContractNo int,
BillingRate float);

/* DDL query for creating Delivery Staff table */
CREATE TABLE DELIVERY_STAFF(
StaffID int not null PRIMARY KEY REFERENCES STAFF(StaffID),
LocationServed varchar(25),
NoOfDeliveries int,
WeeklySalary float);

/* DDL query for creating Orders table */
CREATE TABLE ORDERS
(
    OrderID INT NOT NULL IDENTITY(1,1),
    DateOfOrder DATE DEFAULT(GETDATE()),
    OrderDescription VARCHAR(25),
    OrderQuantity INT,
    OrderType VARCHAR(1), 
    CONSTRAINT OrderType_CHK CHECK (OrderType IN ('P','R')),
    ArtworkID INT NOT NULL,
    CustomerID INT NOT NULL,
    CONSTRAINT FK1_Orders FOREIGN KEY (ArtworkID) REFERENCES ArtWork(ArtworkID),
    CONSTRAINT FK2_Orders FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT PK_Order PRIMARY KEY CLUSTERED(OrderID ASC),
)ON [PRIMARY];

/* DDL query for creating Purchase Order table */
CREATE TABLE PURCHASEORDER 
(
    OrderID INT NOT NULL PRIMARY KEY REFERENCES ORDERS(OrderID),
    TotalCost MONEY
);

/* DDL query for creating Rental Order table */
CREATE TABLE RENTALORDER
(
    OrderID INT NOT NULL PRIMARY KEY REFERENCES ORDERS(OrderID),
    StartDate DATE,
    EndDate DATE,
    PricePerDay MONEY
);

/* DDL query for creating Payment table */
CREATE TABLE PAYMENT(
PaymentID int not null IDENTITY(1,1),
PaymentType varchar(25),
PaymentDate date default(getdate()),
PaymentStatus varchar(25),
PaymentAmount money,
OrderID int not null,
CONSTRAINT FK_Payment FOREIGN KEY (OrderID)
REFERENCES Orders(OrderID),
CONSTRAINT PK_Payment PRIMARY KEY CLUSTERED
(PaymentID ASC
),
)ON [PRIMARY];

/* DDL query for creating Delivery table */
CREATE TABLE DELIVERY(
DeliveryID int not null IDENTITY(1,1),
DeliveryAgent varchar(25),
DeliveryDate date default(getdate()),
DeliveryLocation varchar(25),
DeliveryStatus VARCHAR(25),
OrderID int not null,
CONSTRAINT FK_Delivery FOREIGN KEY (OrderID)
REFERENCES Orders(OrderID),
CONSTRAINT PK_Delivery PRIMARY KEY CLUSTERED
(DeliveryID ASC
),
)ON [PRIMARY];

/* DDL query for creating Events table */
Create table EVENTS(EventID int not null IDENTITY(1,1),
EventLocation varchar(30),
EventDate date,
EventType varchar(30),
Event_Capacity int,
EventStartTime DATETIME,
EventEndTime DATETIME,
ArtGalleryID int not null,
constraint FK_EVENTS Foreign key (ArtGalleryID)
REFERENCES ArtGallery(ArtGalleryID),
Constraint PK_EVENTS PRIMARY KEY CLUSTERED(EventID ASC),
) ON [PRIMARY];

/* DDL query for creating Booking table */
Create table BOOKING(BookingID int not null IDENTITY(1,1),
CustomerID int not null,
EventID int not null,
BookingDate date,
constraint FK1_BOOKING Foreign key (CustomerID)
REFERENCES Customer(CustomerID),
constraint FK2_BOOKING Foreign key (EventID)
REFERENCES EVENTS(EventID),
Constraint PK_BOOKING PRIMARY KEY CLUSTERED(BookingID ASC),
) ON [PRIMARY];