-- Trigger to check if the artwork quantity is available
CREATE OR ALTER TRIGGER ArtworkSales ON ORDERS
AFTER INSERT
AS
BEGIN
IF NOT EXISTS (
    SELECT * FROM ARTWORK JOIN INSERTED
    ON ARTWORK.ArtWorkID = INSERTED.ArtworkID
    WHERE Quantity > 0
)
  BEGIN
     RAISERROR ('Artwork is currently out of stock', 16, 1);
     ROLLBACK TRANSACTION;
     RETURN
  END
  ELSE IF NOT EXISTS (
    SELECT * FROM ARTWORK JOIN INSERTED
    ON ARTWORK.ArtWorkID = INSERTED.ArtworkID
    WHERE INSERTED.OrderQuantity <= ARTWORK.Quantity
  )
  BEGIN
     RAISERROR ('Order Quantity cannot be greater than available quantity', 16, 1);
     ROLLBACK TRANSACTION;
     RETURN
  END
 ELSE
     UPDATE ARTWORK
     SET ARTWORK.Quantity = ARTWORK.Quantity - INSERTED.OrderQuantity
     FROM ARTWORK JOIN INSERTED
     ON ARTWORK.ArtWorkID = INSERTED.ArtworkID
END;



--Trigger to determine the capacity of the event
CREATE OR ALTER TRIGGER EventBookingSales ON BOOKING
AFTER INSERT
AS
BEGIN
  IF NOT EXISTS (
      SELECT * FROM EVENTS, INSERTED WHERE Event_Capacity > 0
      AND EVENTS.EventID = INSERTED.EventID
  )
   BEGIN
       RAISERROR ('Event Capacity is full', 16, 1);
       ROLLBACK TRANSACTION;
       RETURN
   END 
   ELSE
       UPDATE EVENTS
       SET Event_Capacity = Event_Capacity - 1
       FROM EVENTS, INSERTED
       WHERE EVENTS.EventID = INSERTED.EventID
END;