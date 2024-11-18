/*This sql code depicts a concurrent scenario where two transactions are initiated at the same time
Row locking is implemented to make sure that Stock_Quantity is not accessed by Taylor's order before Alex's order is completed
This helps handle concurrency*/


-- Transaction 1: Alex's Order
START TRANSACTION;

-- Lock the row for ProductID = 101
SELECT StockQuantity
FROM Products
WHERE ProductID = 101
FOR UPDATE;

-- Check stock availability
SELECT StockQuantity FROM Products WHERE ProductID = 101;

-- Decrease stock by 5
UPDATE Products
SET StockQuantity = StockQuantity - 5
WHERE ProductID = 101;

-- Commit transaction
COMMIT;



-- Transaction 2: Taylor's Order
START TRANSACTION;

-- Lock the row for ProductID = 101 (will wait if locked by Transaction 1)
SELECT StockQuantity
FROM Products
WHERE ProductID = 101
FOR UPDATE;

-- Check stock availability
SELECT StockQuantity FROM Products WHERE ProductID = 101;

-- Decrease stock by 5
UPDATE Products
SET StockQuantity = StockQuantity - 5
WHERE ProductID = 101;

-- Commit transaction
COMMIT;

