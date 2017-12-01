DROP DATABASE IF EXISTS iphobe;
CREATE DATABASE iphone;
GRANT ALL PRIVILEGES ON DATABASE iphone TO postgres;
\connect iphone;


CREATE TABLE model(
model_id serial primary key,
name varchar(255),
memory_Gb real,
battery_capacity_mAh int,
cpu_id  int,
display_id int);


CREATE TABLE display(
display_id serial primary key,
screen_size_inch real,
pixel_resolution varchar(255),
type_of_display varchar(255),
pixels_per_inch int);


CREATE TABLE cpu(
cpu_id serial primary key,
cpu_name varchar(255),
frequency_ghz real,
number_of_cores smallint,
L2_cache_mb real,
cpu_manufacturer_id int);


CREATE TABLE cpu_manufacturer(
cpu_manufacturer_id serial primary key,
manufacturer_name varchar(255),
location_country varchar(255),
year_of_foundation int,
current_CEO varchar(255));


CREATE TABLE storage(
storage_id serial primary key,
storage_gb int);


CREATE TABLE color(
color_id serial primary key,
color varchar(255));


CREATE TABLE available_color(
model_id int,
color_id int);


CREATE TABLE available_storage(
model_id int,
storage_id int);


INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Samsung S3C6400 ARM', 0.62, 1, NULL, 1);	
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Samsung S5PC100 ARM', 0.833, 1, 0.256, 1); 
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A4', 1.0, 1, 0.512, 1);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A5', 1.0, 2, 1.0, 2);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A6', 1.3, 2, 1.0, 1);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A7', 1.4, 2, 1.0, 1);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A8', 1.4, 2, 1.0, 3);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A9', 1.8, 2, 3.0, 3);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple A10', 2.34, 4, 3.0, 3);		
INSERT INTO cpu(cpu_id, cpu_name, frequency_ghz, number_of_cores, L2_cache_mb, cpu_manufacturer_id) VALUES (DEFAULT, 'Apple 11', 2.74, 6, 3.0, 3);


INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 2G', 0.128, 1400, 1, 1);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 3G', 0.128, 1150, 1, 1);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 3GS', 0.256, 1219, 2, 1);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 4', 0.512, 1420, 3, 2);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 4S', 0.512, 1430, 4, 2);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 5', 1.0, 1440, 5, 3);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 5S', 1.0, 1560, 6, 3);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 5C', 1.0, 1520, 5, 3);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone SE', 2.0, 1642, 8, 3);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 6', 1.0, 1810, 7, 4);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 6 Plus', 1, 2915, 7, 5);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 6S', 2, 1715, 8, 4);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 6S Plus', 2, 2750, 8, 5);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 7', 2, 1960, 9, 4);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 7 Plus', 3, 2900, 9, 5);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 8', 2, 1821, 10, 4);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone 8 Plus', 3, 2675, 10, 5);
INSERT INTO model(model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) VALUES (DEFAULT,'iPhone X', 3, 2716, 10, 6);


INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 3.5,'320x480', 'LED', 163);
INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 3.5,'640x960', 'LED', 326);
INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 4.0,'640x1136', 'LED', 326);
INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 4.7,'750x1334', 'LED', 326);
INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 5.5,'1080x1920', 'LED', 401);
INSERT INTO display(display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) VALUES (DEFAULT, 5.8,'2436×1125', 'OLED', 458);


INSERT INTO cpu_manufacturer(cpu_manufacturer_id, manufacturer_name, location_country, year_of_foundation, current_ceo) VALUES (DEFAULT, 'Samsung Electronics', 'Republic of Korea', 1969, 'Kwon Oh-hyun');
INSERT INTO cpu_manufacturer(cpu_manufacturer_id, manufacturer_name, location_country, year_of_foundation, current_ceo) VALUES (DEFAULT, 'Apple inc.', 'USA', 1976, 'Tim Cook');
INSERT INTO cpu_manufacturer(cpu_manufacturer_id, manufacturer_name, location_country, year_of_foundation, current_ceo) VALUES (DEFAULT, 'TSMC', 'Taiwan', 1987, 'C.C.Wei');


INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 4);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 8);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 16);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 32);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 64);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 128);
INSERT INTO storage(storage_id, storage_gb) VALUES(DEFAULT, 256);


INSERT INTO color(color_id, color) VALUES(DEFAULT, 'silver');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'black');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'white');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'rose');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'yellow');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'blue');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'green');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'space grey');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'gold');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'rose gold');
INSERT INTO color(color_id, color) VALUES(DEFAULT, '(PRODUCT)RED');
INSERT INTO color(color_id, color) VALUES(DEFAULT, 'black onix');


INSERT INTO available_color(model_id, color_id) VALUES(1,1),
(2,2), (2,3), (3,2), (3,3), (4,2), (4,3), (5,2), (5,3), (6,2), (6,3), (7,8), (7,9), 
(7,1), (8,3), (8,4), (8,5), (8,6), (8,7), (9,1), (9,8), (9,9), (9,10), (10,1), (11,1),
(10,8), (11,8), (10,9), (11,9), (12,1), (13,1), (12,8), (13,8), (12,9), (13,9), (12,10), (13,10),
(14,1), (14,2), (15,1), (15,2), (14,12), (15,12), (14,9), (14,10), (15,9), (15,10), (14,11), (15,11), (16,1),  
(17,1),  (16,8),  (16,9),  (17,8),  (17,9),  (18,1),  (18,8);


INSERT INTO available_storage(model_id, storage_id) VALUES(1,1),
(1,2),  (1,3),  (2,2),  (2,3),  (3,2),  (3,3),  (3,4),  (4,2),  (4,3),  (4,4),  (5,2), 
(5,3),  (5,4),  (5,5),  (6,3),  (6,4),  (6,5),  (7,3),  (7,4),  (7,5),  (8,2),  (8,3),  
(8,4),  (9,3),  (9,4),  (9,5),  (9,6),  (10,3),  (10,4),  (10,5),  (10,6),  (11,3),  (11,5),  
(11,6),  (12,3),  (12,4),  (12,5),  (12,6),  (13,3),  (13,4),  (13,5),  (13,6),  (14,4),  (14,6),
(14,7),  (15,4),  (15,6),  (15,7),  (16,5),  (16,7),  (17,5),  (17,7),  (18,5),  (18,7);


ALTER TABLE model
ADD UNIQUE (name),
ADD CHECK (memory_gb >0),
ADD CHECK (battery_capacity_mAh > 0),
ADD CHECK (display_id > 0),
ADD CHECK (cpu_id > 0),
ADD FOREIGN KEY (cpu_id) REFERENCES  cpu (cpu_id),
ADD FOREIGN KEY (display_id) REFERENCES display (display_id),
ALTER COLUMN name SET NOT NULL,
ALTER COLUMN memory_gb SET NOT NULL,
ALTER COLUMN battery_capacity_mAh SET NOT NULL,
ALTER COLUMN cpu_id SET NOT NULL,
ALTER COLUMN display_id SET NOT NULL;


ALTER TABLE display
ADD CHECK (screen_size_inch > 0),
ADD CHECK (pixels_per_inch > 0),
ALTER COLUMN screen_size_inch SET NOT NULL,
ALTER COLUMN pixel_resolution SET NOT NULL,
ALTER COLUMN type_of_display SET NOT NULL,
ALTER COLUMN pixels_per_inch SET NOT NULL;


ALTER TABLE cpu
ADD UNIQUE (cpu_name),
ADD CHECK (frequency_ghz > 0),
ADD CHECK (number_of_cores > 0),
ADD CHECK (L2_cache_mb > 0),
ADD CHECK (cpu_manufacturer_id > 0),
ALTER COLUMN cpu_name SET NOT NULL,
ALTER COLUMN frequency_ghz SET NOT NULL,
ALTER COLUMN number_of_cores SET NOT NULL,
ALTER COLUMN cpu_manufacturer_id SET NOT NULL,
ADD FOREIGN KEY (cpu_manufacturer_id) REFERENCES cpu_manufacturer (cpu_manufacturer_id);


ALTER TABLE cpu_manufacturer
ADD CHECK (year_of_foundation > 0),
ALTER COLUMN manufacturer_name SET NOT NULL,
ALTER COLUMN location_country SET NOT NULL,
ALTER COLUMN year_of_foundation SET NOT NULL,
ALTER COLUMN current_CEO SET NOT NULL;


ALTER TABLE storage
ADD UNIQUE (storage_gb),
ADD CHECK (storage_gb > 0),
ALTER COLUMN storage_gb SET NOT NULL;


ALTER TABLE color
ADD UNIQUE (color),
ALTER COLUMN color SET NOT NULL;


ALTER TABLE available_storage
ADD FOREIGN KEY (storage_id) REFERENCES storage (storage_id),
ADD FOREIGN KEY (model_id) REFERENCES model (model_id),
ADD PRIMARY KEY (model_id, storage_id);


ALTER TABLE available_color
ADD FOREIGN KEY (color_id) REFERENCES color (color_id),
ADD FOREIGN KEY (model_id) REFERENCES model (model_id),
ADD PRIMARY KEY (model_id, color_id);


























