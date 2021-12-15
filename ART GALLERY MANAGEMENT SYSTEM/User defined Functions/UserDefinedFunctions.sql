/* User Defined Function to compute the rental duration of an artwork.
This function computes the date difference between start date and end date of rental.
*/
CREATE OR ALTER FUNCTION RentalDuration (@order_id INT)
RETURNS INT
AS
BEGIN
   DECLARE @rentdur INT
   SELECT @rentdur = DATEDIFF(Day, StartDate, EndDate)
   FROM RENTALORDER
   WHERE OrderID = @order_id
   RETURN @rentdur
END;

/*This command adds a column named Rent_Duration to the table RentalOrder
and executes the user defined function named RentalDuration to compute the value of rent duration for the specified order*/
ALTER TABLE RENTALORDER ADD [Rent_Duration] AS dbo.RentalDuration(OrderID);


/*User defined function to calculate total revenue by order type (purchase order or rental).
This function sums the payment amount for the completed order based on order type*/
CREATE OR ALTER FUNCTION TotalRevByOrderType (@order_type VARCHAR(30))
RETURNS FLOAT
AS
BEGIN
   DECLARE @totalrev FLOAT
   IF NOT EXISTS(
       SELECT * FROM ORDERS
       WHERE OrderType = @order_type
   )
   RETURN 0
   ELSE(
       SELECT @totalrev = SUM(PaymentAmount)
       FROM PAYMENT p JOIN ORDERS o ON o.OrderID = p.OrderID
       WHERE OrderType = @order_type AND PaymentStatus = 'Completed'
   )
   RETURN @totalrev
END;