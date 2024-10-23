-- Task 1: Insert a new record into the account table
INSERT INTO account (first_name, last_name, email_address, password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Task 2: Update Tony Stark's account type to "Admin"
UPDATE account
SET account_type = 'Admin'
WHERE email_address = 'tony@starkent.com';

-- Task 3: Delete the Tony Stark record from the account table
DELETE FROM account
WHERE email_address = 'tony@starkent.com';

-- Task 4: Update the description of the "GM Hummer" record
UPDATE inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_model = 'GM Hummer';

-- Task 5: Use an INNER JOIN to select make, model, and classification name for "Sport" category
SELECT inv_make, inv_model, classification.classification_name
FROM inventory
INNER JOIN classification ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

-- Task 6: Update all inventory records to modify inv_image and inv_thumbnail paths
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');