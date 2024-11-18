

DELIMITER $$

CREATE PROCEDURE Item_Ordered_ACID_implementation(
    IN CustomerID INT,
    IN OrderItems JSON -- JSON array of ProductID and Quantity
)
BEGIN
    DECLARE NewOrderID INT;
    DECLARE ProductID INT;
    DECLARE Quantity INT;
    DECLARE AvailableStock INT;
    DECLARE i INT DEFAULT 0;
    DECLARE TotalItems INT;

    -- Start the transaction
    START TRANSACTION;

    -- Step 1: Insert a new order into the Orders table
    INSERT INTO Orders (CustomerID, OrderDate)
    VALUES (CustomerID, CURRENT_DATE());

    -- Get the generated OrderID
    SET NewOrderID = LAST_INSERT_ID();

    -- Get the number of items in the JSON array
    SET TotalItems = JSON_LENGTH(OrderItems);

    -- Step 2: Loop through each item in the JSON array
    WHILE i < TotalItems DO
        -- Extract ProductID and Quantity from the JSON array
        SET ProductID = JSON_UNQUOTE(JSON_EXTRACT(OrderItems, CONCAT('$[', i, '].ProductID')));
        SET Quantity = JSON_UNQUOTE(JSON_EXTRACT(OrderItems, CONCAT('$[', i, '].Quantity')));

        -- Check stock availability
        SELECT Stock INTO AvailableStock
        FROM Products
        WHERE ProductID = ProductID;

        IF AvailableStock IS NULL THEN
            -- Product does not exist
            ROLLBACK;
            SIGNAL SQLSTATE '45000'; #SET MESSAGE_TEXT = CONCAT('ProductID ', ProductID, ' does not exist.');
        ELSEIF AvailableStock < Quantity THEN
            -- Insufficient stock
            ROLLBACK;
            SIGNAL SQLSTATE '45000';
            SET MESSAGE_TEXT = CONCAT('Insufficient stock for ProductID ', ProductID);
        ELSE
            -- Deduct stock from the Products table
            UPDATE Products
            SET Stock = Stock - Quantity
            WHERE ProductID = ProductID;

            -- Add the item to the OrderDetails table
            INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
            VALUES (NewOrderID, ProductID, Quantity);
        END IF;

        -- Increment the loop counter
        SET i = i + 1;
    END WHILE;

    -- Step 3: Commit the transaction
    COMMIT;

    SELECT 'Order transaction completed successfully.' AS SuccessMessage;
END$$

DELIMITER ;
