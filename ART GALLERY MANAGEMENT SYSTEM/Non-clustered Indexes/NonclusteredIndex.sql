--NONCLUSTERED Index on Customer Name
CREATE NONCLUSTERED INDEX Customer_Name_Index

ON CUSTOMER(Customer_FirstName ASC, Customer_LastName ASC);

 
 
--NONCLUSTERED Index on Artist Name
CREATE NONCLUSTERED INDEX Artist_Name_Index

ON ARTIST(Artist_FirstName ASC,Artist_LastName ASC);