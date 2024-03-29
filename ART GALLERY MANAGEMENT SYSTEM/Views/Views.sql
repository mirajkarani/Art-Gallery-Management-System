﻿/*View to calculate total revenue by order type (purchase order or rental)*/
CREATE VIEW RevenueByOrderType AS
SELECT OrderType, SUM(PaymentAmount) as TotalRevenue
FROM PAYMENT p JOIN ORDERS o ON o.OrderID = p.OrderID
WHERE PaymentStatus = 'Completed'
GROUP BY OrderType;
 
/*View to determine popular artist based on number of purchase orders*/
CREATE OR ALTER VIEW ArtistTotalSales AS
SELECT ar.Artist_FirstName + ' ' + Artist_LastName as ArtistName, COUNT(o.OrderID) As No_Of_Orders
FROM ORDERS o JOIN ARTWORK a ON o.ArtworkID = a.ArtWorkID
JOIN ARTIST ar ON ar.ArtistID = a.ArtistID
GROUP BY ar.Artist_FirstName, ar.Artist_LastName;
 
/*View to determine popular event locations based on count of bookings*/ 
CREATE VIEW PopularEventLocations AS
SELECT EventLocation, COUNT(BookingID) as No_Of_Bookings
FROM EVENTS e JOIN BOOKING b ON b.EventID = e.EventID
GROUP BY EventLocation;
 
/*View to determine customers present at the event location*/
Create VIEW CUSTOMERDETAILS
AS
Select c.Customer_FirstName, c.Customer_LastName, e.EventLocation, e.EventStartTime
from Customer c join Events e on c.ArtGalleryID=e.ArtGalleryID;
 
/*View to determine the customers who bought artworks along with the cost*/​​
Create View Customerpurchase
as select o.OrderID, c.Customer_FirstName, c.Customer_LastName, p.TotalCost
from (Orders o join Customer c on o.CustomerID=c.CustomerID)
join PURCHASEORDER p on o.OrderID=p.OrderID
 
 /*View to determine artwork order per customer*/
CREATE OR ALTER VIEW ArtworkOrderPerCustomer AS
SELECT ar.Artist_FirstName + ' ' + Artist_LastName as ArtistName, COUNT(o.OrderID) As No_Of_Orders
FROM ORDERS o JOIN ARTWORK a ON o.ArtworkID = a.ArtWorkID
JOIN ARTIST ar ON ar.ArtistID = a.ArtistID
GROUP BY ar.Artist_FirstName, ar.Artist_LastName;

/*View to determine revenue generated by artist*/
CREATE OR ALTER VIEW RevenueGeneratedByArtist AS
SELECT a.Artist_FirstName + ' ' + a.Artist_LastName as ArtistName, SUM(PaymentAmount) AS Total_Revenue
FROM ORDERS o JOIN PAYMENT p ON o.OrderID = p.OrderID
JOIN ARTWORK ar ON ar.ArtWorkID = o.ArtworkID
JOIN ARTIST a ON a.ArtistID = ar.ArtistID
GROUP BY Artist_FirstName, Artist_LastName;
 /*view to determine count of bookings per date*/
CREATE OR ALTER VIEW BookingPerDate AS
SELECT CONVERT(DATE, EventStartTime) AS EventDate, COUNT(BookingID) AS No_Of_Bookings
FROM EVENTS JOIN BOOKING
ON EVENTS.EventID = BOOKING.EventID
GROUP BY EventStartTime;

/*View to determine customer sales for the year 2021*/
CREATE OR ALTER VIEW CustomerSalesYear AS
SELECT COUNT(o.CustomerID) As Customer, o.CustomerID, DateOfOrder, PaymentAmount
FROM ORDERS o
JOIN PAYMENT p ON o.OrderID = p.OrderID
WHERE DateOfOrder LIKE '2021%'
GROUP BY DateOfOrder, PaymentAmount, o.CustomerID;
 
 /*View to determine artwork delivery status for the year 2021*/
CREATE OR ALTER VIEW ArtWorkDeliveryStatus AS
SELECT DeliveryStatus, DeliveryID
FROM DELIVERY WHERE DeliveryDate LIKE '2021%';

/*View to determing the popular event type based on the count of bookings*/
CREATE OR ALTER VIEW PopularEventType AS
SELECT e.EventType, count(b.BookingID) as 'Count Of Bookings'
FROM Events e JOIN BOOKING b ON e.EventID = b.BookingID
GROUP BY e.EventType;