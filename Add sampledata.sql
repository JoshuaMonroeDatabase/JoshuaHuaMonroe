-- 1. Employees
INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Javier Martinez', 'MANAGER', DATE '2024-01-10');

INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Emily Carter', 'SERVER', DATE '2024-02-15');

INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Lucia Fernandez', 'SERVER', DATE '2024-03-01');

INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Michael Turner', 'CASHIER', DATE '2024-04-12');

INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Sofia Navarro', 'SERVER', DATE '2024-05-08');

INSERT INTO REST_EMPLOYEES (EmployeeName, Role, HireDate)
VALUES ('Daniel Brooks', 'CHEF', DATE '2024-01-22');

-- 2. Customers
-- about one-third Chinese names
INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('Wei Zhang', '555-2001', 'wei.zhang@email.com');

INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('Emma Johnson', '555-2002', 'emma.johnson@email.com');

INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('Li Chen', '555-2003', 'li.chen@email.com');

INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('James Wilson', '555-2004', 'james.wilson@email.com');

INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('Sofia Garcia', '555-2005', 'sofia.garcia@email.com');

INSERT INTO REST_CUSTOMERS (CustomerName, Phone, Email)
VALUES ('Mei Lin', '555-2006', 'mei.lin@email.com');

-- 3. Dining Tables
INSERT INTO REST_DINING_TABLES (TableLabel, Capacity, Status)
VALUES ('B1', 2, 'AVAILABLE');

INSERT INTO REST_DINING_TABLES (TableLabel, Capacity, Status)
VALUES ('B2', 4, 'OCCUPIED');

INSERT INTO REST_DINING_TABLES (TableLabel, Capacity, Status)
VALUES ('B3', 4, 'AVAILABLE');

INSERT INTO REST_DINING_TABLES (TableLabel, Capacity, Status)
VALUES ('B4', 6, 'RESERVED');

-- 4. Menu Categories
INSERT INTO REST_MENU_CATEGORIES (CategoryName)
VALUES ('Pintxos');

INSERT INTO REST_MENU_CATEGORIES (CategoryName)
VALUES ('Tapas');

INSERT INTO REST_MENU_CATEGORIES (CategoryName)
VALUES ('Main Dishes');

INSERT INTO REST_MENU_CATEGORIES (CategoryName)
VALUES ('Desserts');

INSERT INTO REST_MENU_CATEGORIES (CategoryName)
VALUES ('Drinks');

-- 5. Menu Items
INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (1, 'Gilda Pintxo', 5.50, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (1, 'Jamon Iberico Pintxo', 8.50, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (2, 'Croquetas de Jamon', 9.50, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (2, 'Tortilla Espanola', 8.75, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (3, 'Bacalao al Pil Pil', 24.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (3, 'Txuleta Steak', 36.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (3, 'Seafood Paella', 28.50, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (4, 'Basque Cheesecake', 9.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (5, 'Txakoli', 11.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (5, 'Sparkling Water', 4.00, 'Y');

-- 6. Orders
-- Order 1: dine-in, Chinese customer
INSERT INTO REST_ORDERS (CustomerID, EmployeeID, TableID, OrderType, OrderStatus, OrderDateTime, Notes)
VALUES (1, 2, 2, 'DINE_IN', 'SERVED', SYSDATE, 'Requested less salty dishes');

-- Order 2: takeout, non-Chinese customer
INSERT INTO REST_ORDERS (CustomerID, EmployeeID, TableID, OrderType, OrderStatus, OrderDateTime, Notes)
VALUES (2, 4, NULL, 'TAKEOUT', 'READY', SYSDATE, 'Pickup in 30 minutes');

-- Order 3: dine-in, Chinese customer
INSERT INTO REST_ORDERS (CustomerID, EmployeeID, TableID, OrderType, OrderStatus, OrderDateTime, Notes)
VALUES (3, 3, 4, 'DINE_IN', 'OPEN', SYSDATE, 'Birthday dinner');

-- Order 4: dine-in, non-Chinese customer
INSERT INTO REST_ORDERS (CustomerID, EmployeeID, TableID, OrderType, OrderStatus, OrderDateTime, Notes)
VALUES (5, 5, 3, 'DINE_IN', 'PAID', SYSDATE, NULL);

-- 7. Takeout Orders
INSERT INTO REST_TAKEOUT_ORDERS (OrderID, PickupName, PickupPhone, PickupTime)
VALUES (2, 'Emma Johnson', '555-2002', SYSDATE + 0.02);

-- 8. Order Items
-- Order 1
INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (1, 1, 2, 5.50, NULL);

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (1, 5, 1, 24.00, 'Less salt');

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (1, 10, 2, 4.00, NULL);

-- Order 2
INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (2, 3, 1, 9.50, NULL);

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (2, 8, 1, 9.00, 'Extra chilled');

-- Order 3
INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (3, 2, 2, 8.50, NULL);

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (3, 6, 1, 36.00, 'Medium rare');

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (3, 9, 2, 11.00, NULL);

-- Order 4
INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (4, 4, 1, 8.75, NULL);

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (4, 7, 1, 28.50, NULL);

INSERT INTO REST_ORDER_ITEMS (OrderID, ItemID, Quantity, UnitPrice, SpecialRequest)
VALUES (4, 8, 2, 9.00, NULL);

-- 9. Payments
INSERT INTO REST_PAYMENTS (OrderID, PaymentMethod, Amount)
VALUES (1, 'CARD', 43.00);

INSERT INTO REST_PAYMENTS (OrderID, PaymentMethod, Amount)
VALUES (2, 'CASH', 18.50);

INSERT INTO REST_PAYMENTS (OrderID, PaymentMethod, Amount)
VALUES (4, 'CARD', 55.25);

COMMIT;