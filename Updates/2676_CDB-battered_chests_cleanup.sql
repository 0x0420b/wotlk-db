-- More small Battered Chests (2843) updates

-- Add more missing gameobjects
DELETE FROM gameobject WHERE guid BETWEEN 300026 AND 300029;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(300026, 2843, 0, -6490.65, 512.377, 387.494, 0.925024, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Dun Morogh - outdoor
(300027, 2843, 0, -6484.93, 294.773, 372.653, 2.49582, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Dun Morogh - Caves
(300028, 2843, 1, 10504.8, 1064.71, 1325.83, -0.279252, 0, 0, 0, 0, 3600, 3600, 100, 1),	-- Teldrassil - outdoor
(300029, 2843, 0, -8593.03, -169.743, 87.1218, 0.767945, 0, 0, 0, 0, 3600, 3600, 100, 1);	-- Northshire - Caves

-- Place new GOs in relevant pools
DELETE FROM pool_gameobject WHERE guid BETWEEN 300026 AND 300029;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(300027, 31008, 0, 'Battered Chest (2843) - Dun Morogh - Coldridge Valley - Cave #4'),
(300026, 31009, 0, 'Battered Chest (2843) - Dun Morogh - Coldridge Valley #4'),
(300028, 31010, 0, 'Battered Chest (2843) - Teldrassil - Shadowglen #4'),
(300029, 31011, 0, 'Battered Chest (2843) - Elwynn Forest - Northshire - Cave #3');

-- Fix duplicate description
UPDATE pool_gameobject SET description="Battered Chest (2843) - Tirisfal - Deathknell #4" WHERE guid=300006;

-- Update some positions to be more accurate and in sync with other DBs
UPDATE gameobject SET position_x=1900.49, position_y=1487.23, position_z=93.9514, orientation=1.44862, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300005;
UPDATE gameobject SET position_x=2081.69, position_y=1967.03, position_z=101.193, orientation=2.82743, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300002;
UPDATE gameobject SET position_x=10911.3, position_y=848.826, position_z=1329.36, orientation=2.04204, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300015;
UPDATE gameobject SET position_x=10328.0, position_y=1033.01, position_z=1339.31, orientation=1.74533, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300018;
UPDATE gameobject SET position_x=10485.3, position_y=1059.98, position_z=1325.47, orientation=-1.0472, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300019;
UPDATE gameobject SET position_x=-8556.58, position_y=-199.101, position_z=85.8751, orientation=1.93731, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300020;
UPDATE gameobject SET position_x=-9140.58, position_y=-282.026, position_z=71.8892, orientation=1.3439, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300023;
UPDATE gameobject SET position_x=-9038.98, position_y=-303.642, position_z=74.3616, orientation=2.28638, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300022;
UPDATE gameobject SET position_x=-8955.38, position_y=-439.217, position_z=64.7955, orientation=-2.86233, rotation0=0.0, rotation1=0.0, rotation2=0.0, rotation3=0.0 WHERE guid=300025;

-- Uniformise spawn time for GameObjects in starting zones (entry 2843)
UPDATE gameobject SET spawntimesecsmin=3600, spawntimesecsmax=3600 WHERE id=2843;
