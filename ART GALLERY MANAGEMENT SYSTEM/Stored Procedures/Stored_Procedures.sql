/* Stored Procedure to find out the Artist who is preferred by most customers. */
CREATE OR ALTER PROCEDURE PopularArtistByCustomer @artist_fname VARCHAR(30),
@artist_lname VARCHAR(30), @Msg VARCHAR(1000) OUTPUT
AS
BEGIN
IF NOT EXISTS (
SELECT * FROM ARTIST
WHERE Artist_FirstName = @artist_fname AND Artist_LastName = @artist_lname
) SET @Msg = 'Artist not found in the directory'
ELSE IF NOT EXISTS (
SELECT o.OrderID
FROM ORDERS o JOIN ARTWORK a ON o.ArtworkID = a.ArtWorkID
JOIN ARTIST ar ON a.ArtistID = ar.ArtistID
WHERE ar.Artist_FirstName = @artist_fname AND ar.Artist_LastName = @artist_lname
) SET @Msg = 'No orders registered for this artist'
ELSE
SELECT c.Customer_FirstName, c.Customer_LastName, COUNT(o.OrderID) as Artwork_Purchased
FROM Customer c JOIN ORDERS o on c.CustomerID = o.CustomerID JOIN ARTWORK a ON a.ArtWorkID = o.ArtworkID
JOIN ARTIST ar ON a.ArtistID = ar.ArtistID
WHERE ar.Artist_FirstName = @artist_fname AND ar.Artist_LastName = @artist_lname AND o.OrderType = 'P'
GROUP BY c.Customer_FirstName, c.Customer_LastName
ORDER BY COUNT(o.OrderID) DESC
END;
/*execute below queries to run Stored Procedure - PopularArtistByCustomer */
DECLARE @artfname VARCHAR(30), @artlname VARCHAR(30), @TxtMsg VARCHAR(1000)
SET @artfname = 'Ava'
SET @artlname = 'Smith'
EXEC PopularArtistByCustomer @artfname, @artlname, @TxtMsg OUTPUT
PRINT @TxtMsg


/*Stored Procedure to find out customers who prefer rental order*/
CREATE OR ALTER PROCEDURE CustomerPreferringRentalOrder @art_category VARCHAR(30), @Msg VARCHAR(1000) OUTPUT
AS
BEGIN
IF NOT EXISTS (
select * from ARTWORK
where ArtCategory = @art_category
) SET @Msg = 'No Art Found In This Category'
ELSE
SELECT o.CustomerID, c.Customer_FirstName, c.Customer_LastName
FROM ORDERS o JOIN ARTWORK a ON o.ArtworkID = a.ArtWorkID
JOIN Customer c on o.CustomerID = c.CustomerID
WHERE a.ArtCategory = @art_category AND o.OrderType = 'R'
END;
/*execute below queries to run Stored Procedure - CustomerPreferringRentalOrder */
DECLARE @artcategory VARCHAR(30), @TxtMsg VARCHAR(1000)
SET @artcategory = 'Sculpture'
EXEC CustomerPreferringRentalOrder @artcategory, @TxtMsg OUTPUT
PRINT @TxtMsg


/*Stored Procedure to find out management staff record who joined art gallery between the given start date and end date*/
CREATE OR ALTER PROCEDURE FindManagementStaffRecord @startDate dateTime , @endDate dateTime, 
@ErrorMsg VARCHAR(1000) OUTPUT
AS
BEGIN
IF NOT EXISTS(
SELECT * FROM MANAGEMENT_STAFF
WHERE DateOfJoining between @startDate AND @endDate
) SET @ErrorMsg = 'No staff members joined between these dates'
ELSE
SELECT s.StaffID, s.Staff_FirstName, s.Staff_LastName, ms.DateOfJoining
FROM STAFF s JOIN MANAGEMENT_STAFF ms
ON s.StaffID = ms.StaffID
WHERE DateOfJoining between @startDate AND @endDate
END;
/*execute below queries to run Stored Procedure - FindManagementStaffRecord */
DECLARE @startDt DATETIME, @endDt DATETIME, @TxtMsg VARCHAR(1000)
SET @startDt = '2001-09-17'
SET @endDt = '2005-07-17'
EXEC FindManagementStaffRecord @startDt, @endDt, @TxtMsg OUTPUT
PRINT @TxtMsg


/*Create a Stored Procedure to update the desired customer details such as phone number, email address, address*/ 
CREATE OR ALTER PROCEDURE UpdateCustomer @FirstName VARCHAR(50), @LastName VARCHAR(50), 
@NewAddr VARCHAR(50), @NewPhone CHAR(10), @NewEmail varchar(25),
@Msg VARCHAR(1000) OUTPUT
AS
BEGIN
IF NOT EXISTS(
SELECT * FROM CUSTOMER
WHERE @firstname = Customer_FirstName AND @lastname = Customer_Lastname
) SET @Msg = 'Customer does not exist in the directory'
ELSE
UPDATE CUSTOMER
	   SET CustomerAddress = ISNULL(@Newaddr, CustomerAddress),
	   CustomerPhone = ISNULL(@Newphone, CustomerPhone),
	   CustomerEmail = ISNULL(@NewEmail, CustomerEmail)
WHERE Customer_FirstName = @firstname AND Customer_Lastname = @lastname
END;
/*execute below queries to run Stored Procedure - GetAllCustomers */
DECLARE @Custfname VARCHAR(50), @Custlname VARCHAR(50), @Newaddress VARCHAR(50), 
@Newphoneno CHAR(10), @TxtMsg VARCHAR(1000), @NewEmailAddr varchar(25)
SET @Custfname = 'John'
SET @Custlname = 'William'
SET @Newaddress = '6th New Street'
SET @Newphoneno = 9930142983
SET @NewEmailAddr = null
EXEC UpdateCustomer @Custfname, @Custlname, @Newaddress, @Newphoneno, @NewEmailAddr, @TxtMsg OUTPUT
PRINT @TxtMsg


/*Stored Procedure to find out preferred art category of a customer*/
CREATE OR ALTER PROCEDURE PreferredArtCategory @Customer_ID int,
@Msg VARCHAR(1000) OUTPUT AS
BEGIN
IF NOT EXISTS (
select * from CUSTOMER
where CustomerID = @Customer_ID
) SET @Msg = 'No Customer Found In The Directory'
ELSE
SELECT top 1 count(c.CustomerID) as total_purchase, a.ArtCategory as Art_Category
FROM Customer c JOIN ORDERS o on c.CustomerID = o.CustomerID
JOIN ARTWORK a on o.ArtworkID = a.ArtWorkID
where c.CustomerID = @Customer_ID
group by a.ArtCategory
order by total_purchase desc
END;
/*execute below queries to run Stored Procedure - GetAllCustomers */
DECLARE @cust_id int, @TxtMsg VARCHAR(1000)
SET @cust_id = 11
EXEC PreferredArtCategory @cust_id, @TxtMsg OUTPUT
PRINT @TxtMsg


/*Stored Procedure to the number of attendee's for the events in the given location*/
CREATE OR ALTER PROCEDURE CheckEventAttendeeCount @EventLocation varchar(30), @Msg VARCHAR(1000) OUTPUT
AS
BEGIN
IF NOT EXISTS(
SELECT * FROM EVENTS
WHERE EventLocation = @EventLocation
) SET @Msg = 'No Event is scheduled at the given location'
ELSE
SELECT e.EventLocation as 'Event Location', count(c.CustomerID) AS 'Attendee Count'
	   FROM Events e JOIN Customer c ON e.ArtGalleryID=c.ArtGalleryID
	   WHERE EventLocation=@EventLocation
	   GROUP BY EventLocation
END;
/*execute below queries to run Stored Procedure - CheckEventAttendeeCount */
DECLARE @Event_Location varchar(30), @TxtMsg VARCHAR(1000)
SET @Event_Location = 'boston'
EXEC CheckEventAttendeeCount @Event_Location, @TxtMsg OUTPUT
PRINT @TxtMsg