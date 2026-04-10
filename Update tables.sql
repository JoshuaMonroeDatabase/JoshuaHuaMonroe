-- Add new items
INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (5, 'Rioja Reserva', 14.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (5, 'Spanish Red Sangria', 12.00, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (5, 'Cava Sparkling Wine', 13.50, 'Y');

INSERT INTO REST_MENU_ITEMS (CategoryID, ItemName, Price, IsAvailable)
VALUES (3, 'Grilled Octopus', 26.00, 'Y');

-- Remove some dishes from menu
UPDATE REST_MENU_ITEMS
SET IsAvailable = 'N'
WHERE ItemName = 'Tortilla Espanola';

UPDATE REST_MENU_ITEMS
SET IsAvailable = 'N'
WHERE ItemName = 'Seafood Paella';

-- Update prices
UPDATE REST_MENU_ITEMS
SET Price = 9.50
WHERE ItemName = 'Basque Cheesecake';

UPDATE REST_MENU_ITEMS
SET Price = 25.50
WHERE ItemName = 'Bacalao al Pil Pil';

UPDATE REST_MENU_ITEMS
SET Price = 38.00
WHERE ItemName = 'Txuleta Steak';

UPDATE REST_MENU_ITEMS
SET Price = 12.50
WHERE ItemName = 'Txakoli';

COMMIT;