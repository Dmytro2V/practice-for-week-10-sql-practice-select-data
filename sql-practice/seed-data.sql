DROP TABLE IF EXISTS puppies;

.print ---------- CREATING TABLE puppies ----------;
CREATE TABLE puppies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100),
  age_yrs DECIMAL(2,1),
  breed VARCHAR(100),
  weight_lbs INT,
  microchipped BOOLEAN
);

INSERT INTO puppies
VALUES
  (1, 'Cooper', 1, 'Miniature Schnauzer', 18, 1),
  (2, 'Indie', 0.5, 'Yorkshire Terrier', 13, 1),
  (3, 'Kota', 0.7, 'Australian Shepherd', 26, 0),
  (4, 'Zoe', 0.8, 'Korean Jindo', 32, 1),
  (5, 'Charley', 1.5, 'Basset Hound', 25, 0),
  (6, 'Ladybird', 0.6, 'Labradoodle', 20, 1),
  (7, 'Callie', 0.9, 'Corgi', 16, 0),
  (8, 'Jaxson', 0.4, 'Beagle', 19, 1),
  (9, 'Leinni', 1, 'Miniature Schnauzer', 25, 1),
  (10, 'Max', 1.6, 'German Shepherd', 65, 0);

.print --------   Step 1: Select all rows, all columns;
SELECT * FROM puppies;

.print --------   Step 2: Select specific columns;
SELECT name, age_yrs, weight_lbs FROM puppies;

.print --------   Step 3: Select one row by its primary key;
SELECT name, age_yrs, weight_lbs FROM puppies WHERE id = 5;

.print --------   Step 4: Select rows matching a specific value;
SELECT name, age_yrs, weight_lbs FROM puppies WHERE microchipped = TRUE;
-- checked : also works with true, and with 1

.print --------   Step 5 INTERMEDIATE: Select rows greater than a value;
SELECT name, age_yrs, weight_lbs FROM puppies WHERE weight_lbs > 25;

.print --------   Step 6 ADVANCED: Select rows with multiple criteria;
SELECT name, age_yrs, weight_lbs FROM puppies WHERE weight_lbs > 25 AND microchipped = true;