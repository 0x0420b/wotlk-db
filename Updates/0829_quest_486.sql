-- script for quest 486
-- Ursal the Mauler 
DELETE FROM dbscripts_on_creature_death WHERE id = 2039;
INSERT INTO dbscripts_on_creature_death (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2039,0,28,0,0,2852,46212,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 1 - set stand state'),
(2039,0,28,0,0,2852,46213,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 2 - set stand state'),
(2039,0,28,0,0,2852,46214,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 3 - set stand state'),
(2039,0,28,0,0,2852,46215,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 4 - set stand state'),
(2039,1,25,1,0,2852,46212,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 1 - set stand state'),
(2039,1,25,1,0,2852,46213,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 2 - set stand state'),
(2039,1,25,1,0,2852,46214,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 3 - set stand state'),
(2039,1,25,1,0,2852,46215,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 4 - set stand state'),
(2039,2,0,0,0,2852,46212,16,2000001159,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 1 - say line 1'),
(2039,3,23,2853,0,2852,46212,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 1 - morph into Freed Druid of the Talon'),
(2039,4,23,2853,0,2852,46213,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 2 - morph into Freed Druid of the Talon'),
(2039,4,23,2853,0,2852,46214,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 3 - morph into Freed Druid of the Talon'),
(2039,5,23,2853,0,2852,46215,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 4 - morph into Freed Druid of the Talon'),
(2039,3,20,2,0,2852,46212,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 1 - set waypoint movement'),
(2039,4,20,2,0,2852,46213,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 2 - set waypoint movement'),
(2039,4,20,2,0,2852,46214,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 3 - set waypoint movement'),
(2039,5,20,2,0,2852,46215,16,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon 4 - set waypoint movement');

DELETE FROM db_script_string WHERE entry = 2000001159;
INSERT INTO db_script_string (entry, content_default, comment) VALUES 
(2000001159, 'The nightmare of Ursal is over! We are free!', 'Enslaved Druid of the Talon');

UPDATE creature_template SET MovementType = 2 WHERE entry = 2039;
UPDATE creature SET MovementType = 2 WHERE id = 2039;
DELETE FROM creature_movement_template WHERE entry = 2039;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES 
(2039, 1, 9126.92, 1838.24, 1327.72),
(2039, 2, 9130.38, 1838.8, 1327.49),
(2039, 3, 9133.83, 1839.37, 1327.41),
(2039, 4, 9131.32, 1838.38, 1327.59),
(2039, 5, 9123.09, 1836.68, 1328.18),
(2039, 6, 9119.33, 1833.02, 1328.6),
(2039, 7, 9115.33, 1823.32, 1328.29),
(2039, 8, 9112.83, 1816.78, 1326.97),
(2039, 9, 9111.58, 1816.75, 1327.09),
(2039, 10, 9110.26, 1827, 1328.74),
(2039, 11, 9105.49, 1832.93, 1328.29),
(2039, 12, 9100.95, 1840.46, 1327.68),
(2039, 13, 9105.24, 1843.42, 1327.53),
(2039, 14, 9109.59, 1840.99, 1327.5),
(2039, 15, 9120.07, 1836.26, 1328.29);

-- Enslaved Druid of the Talon
UPDATE creature_template SET InhabitType = 4 WHERE entry = 2852;
UPDATE creature SET spawntimesecsmin = 250, spawntimesecsmax = 250 WHERE id = 2852;
DELETE FROM creature_movement_template WHERE entry = 2852;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id) VALUES 
(2852, 1, 9091.11, 1857.64, 1333.71, 0),
(2852, 2, 9091.11, 1857.64, 1333.71, 0),
(2852, 3, 9079.52, 1872.34, 1334.99, 0),
(2852, 4, 9024.94, 1885.46, 1334.4, 285201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 285201;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(285201,0,23,2852,0,0,0,0,0,0,0,0,0,0,0,0,'Freed Druid of the Talon - morph back into Enslaved Druid of the Talon'),
(285201,1,18,0,0,0,0,4,0,0,0,0,0,0,0,0,'Enslaved Druid of the Talon despawn');
