-- 4 missing dragons added: Obsidia, Rivendark, Furywing, Insidion
-- Source TDB
-- also moved objects to TBC RANGE

-- missing spawns added
DELETE FROM creature_addon WHERE guid BETWEEN 160761 AND 160764;
DELETE FROM creature_movement WHERE id BETWEEN 160761 AND 160764;
DELETE FROM game_event_creature WHERE guid BETWEEN 160761 AND 160764;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 160761 AND 160764;
DELETE FROM creature_battleground WHERE guid BETWEEN 160761 AND 160764;
DELETE FROM creature_linking WHERE guid BETWEEN 160761 AND 160764
 OR master_guid BETWEEN 160761 AND 160764;
DELETE FROM creature WHERE guid BETWEEN 160761 AND 160764;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Obsidia 23282
('160761','23282','530','1','0','0','2011.64','7213.34','497.217','0','720','720','0','0','0','0','0','2'),
-- Rivendark 23061
('160762','23061','530','1','0','0','2289.83','7195.03','456.316','0','720','720','0','0','0','0','0','2'),
-- Furywing 23261
('160763','23261','530','1','0','0','4045.91','4914.19','361.612','0','720','720','0','0','0','0','0','2'),
-- Insidion 23281
('160764','23281','530','1','0','0','3893.82','6067.05','392.508','0','720','720','0','0','0','0','0','2');
-- Waypoints
UPDATE creature_template SET MovementType = 2 WHERE entry IN (23282,23061,23261,23281);
DELETE FROM creature_movement_template WHERE entry IN (23282,23061,23261,23281);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
-- 23282
(23282,0,1,2060.91,7215.12,497.217,100,0,0,NULL),
(23282,0,2,2108.56,7202.19,497.217,100,0,0,NULL),
(23282,0,3,2155.72,7186.68,497.217,100,0,0,NULL),
(23282,0,4,2203.21,7175.34,497.217,100,0,0,NULL),
(23282,0,5,2251.97,7163.65,497.217,100,0,0,NULL),
(23282,0,6,2296.35,7152.57,497.217,100,0,0,NULL),
(23282,0,7,2344.65,7140.99,497.217,100,0,0,NULL),
(23282,0,8,2390.76,7121.33,497.217,100,0,0,NULL),
(23282,0,9,2434.69,7100.82,497.217,100,0,0,NULL),
(23282,0,10,2478.16,7077.78,497.217,100,0,0,NULL),
(23282,0,11,2526.49,7064.32,497.217,100,0,0,NULL),
(23282,0,12,2575.9,7061.91,497.217,100,0,0,NULL),
(23282,0,13,2622.53,7072.71,497.217,100,0,0,NULL),
(23282,0,14,2670.9,7085.05,497.217,100,0,0,NULL),
(23282,0,15,2714.95,7108.4,497.217,100,0,0,NULL),
(23282,0,16,2752.93,7140.26,497.217,100,0,0,NULL),
(23282,0,17,2774.98,7184.98,497.217,100,0,0,NULL),
(23282,0,18,2766.88,7233.41,497.217,100,0,0,NULL),
(23282,0,19,2733.92,7269.04,497.217,100,0,0,NULL),
(23282,0,20,2688.75,7276.65,497.217,100,0,0,NULL),
(23282,0,21,2641.17,7259.36,497.217,100,0,0,NULL),
(23282,0,22,2596.13,7239.19,497.217,100,0,0,NULL),
(23282,0,23,2548.46,7226.16,497.217,100,0,0,NULL),
(23282,0,24,2501.6,7211.38,497.217,100,0,0,NULL),
(23282,0,25,2453.11,7199.98,497.217,100,0,0,NULL),
(23282,0,26,2405.11,7192.81,497.217,100,0,0,NULL),
(23282,0,27,2359.49,7177.67,497.217,100,0,0,NULL),
(23282,0,28,2311.12,7166.88,497.217,100,0,0,NULL),
(23282,0,29,2263.86,7179.79,497.217,100,0,0,NULL),
(23282,0,30,2226.36,7212.38,497.217,100,0,0,NULL),
(23282,0,31,2194.03,7250.32,497.217,100,0,0,NULL),
(23282,0,32,2156.12,7281.98,497.217,100,0,0,NULL),
(23282,0,33,2110.34,7290.64,497.217,100,0,0,NULL),
(23282,0,34,2062.15,7291.46,497.217,100,0,0,NULL),
(23282,0,35,2015.35,7307.77,497.217,100,0,0,NULL),
(23282,0,36,1968.22,7323.25,497.217,100,0,0,NULL),
(23282,0,37,1920.12,7326.57,497.217,100,0,0,NULL),
(23282,0,38,1872.02,7314.75,497.217,100,0,0,NULL),
(23282,0,39,1835.11,7281.13,497.217,100,0,0,NULL),
(23282,0,40,1814.26,7236.68,497.217,100,0,0,NULL),
(23282,0,41,1833.94,7191.12,497.217,100,0,0,NULL),
(23282,0,42,1874.71,7163.79,497.217,100,0,0,NULL),
(23282,0,43,1923.19,7167.38,497.217,100,0,0,NULL),
(23282,0,44,1967.37,7190.95,497.217,100,0,0,NULL),
(23282,0,45,2011.64,7213.34,497.217,100,0,0,NULL),
(23282,1,1,2426.23,6977.06,368.789,100,1000,2328201,NULL),
-- 23061
(23061,0,1,2337.89,7189.83,456.316,100,0,0,NULL),
(23061,0,2,2386.93,7187.46,456.316,100,0,0,NULL),
(23061,0,3,2435.93,7188.45,456.316,100,0,0,NULL),
(23061,0,4,2478.51,7197.97,456.316,100,0,0,NULL),
(23061,0,5,2526.87,7207.8,456.316,100,0,0,NULL),
(23061,0,6,2573.82,7222.37,456.316,100,0,0,NULL),
(23061,0,7,2619.86,7240.87,456.316,100,0,0,NULL),
(23061,0,8,2664.41,7261.09,456.316,100,0,0,NULL),
(23061,0,9,2711.65,7272.88,456.316,100,0,0,NULL),
(23061,0,10,2758.45,7257.4,456.316,100,0,0,NULL),
(23061,0,11,2780.5,7213.08,456.316,100,0,0,NULL),
(23061,0,12,2774.11,7164.37,456.316,100,0,0,NULL),
(23061,0,13,2744.99,7125.34,456.316,100,0,0,NULL),
(23061,0,14,2707.23,7092.52,456.316,100,0,0,NULL),
(23061,0,15,2662.87,7071.4,456.316,100,0,0,NULL),
(23061,0,16,2614.2,7058.21,456.316,100,0,0,NULL),
(23061,0,17,2565.21,7055.04,456.316,100,0,0,NULL),
(23061,0,18,2517.21,7065.71,456.316,100,0,0,NULL),
(23061,0,19,2474.07,7089.08,456.316,100,0,0,NULL),
(23061,0,20,2427.14,7104.75,456.316,100,0,0,NULL),
(23061,0,21,2379.09,7117.87,456.316,100,0,0,NULL),
(23061,0,22,2330.58,7126.79,456.316,100,0,0,NULL),
(23061,0,23,2281.2,7132.03,456.316,100,0,0,NULL),
(23061,0,24,2232.04,7133.09,456.316,100,0,0,NULL),
(23061,0,25,2183.11,7133.6,456.316,100,0,0,NULL),
(23061,0,26,2134,7136.21,456.316,100,0,0,NULL),
(23061,0,27,2087.93,7153.8,456.316,100,0,0,NULL),
(23061,0,28,2054.12,7190.44,456.316,100,0,0,NULL),
(23061,0,29,2011.55,7215.84,456.316,100,0,0,NULL),
(23061,0,30,1963.17,7227.48,456.316,100,0,0,NULL),
(23061,0,31,1917.54,7208.64,456.316,100,0,0,NULL),
(23061,0,32,1871.09,7190.21,456.316,100,0,0,NULL),
(23061,0,33,1822.86,7181.09,456.316,100,0,0,NULL),
(23061,0,34,1773.85,7182.7,456.316,100,0,0,NULL),
(23061,0,35,1740.1,7217.58,456.316,100,0,0,NULL),
(23061,0,36,1733.91,7266.91,456.316,100,0,0,NULL),
(23061,0,37,1766.79,7300.08,456.316,100,0,0,NULL),
(23061,0,38,1814.62,7311.39,456.316,100,0,0,NULL),
(23061,0,39,1863.87,7315.84,456.316,100,0,0,NULL),
(23061,0,40,1912.88,7313.7,456.316,100,0,0,NULL),
(23061,0,41,1960.55,7303.18,456.316,100,0,0,NULL),
(23061,0,42,2007.86,7288.89,456.316,100,0,0,NULL),
(23061,0,43,2054.94,7271.1,456.316,100,0,0,NULL),
(23061,0,44,2100.89,7252.25,456.316,100,0,0,NULL),
(23061,0,45,2147.99,7235.72,456.316,100,0,0,NULL),
(23061,0,46,2194.88,7221.17,456.316,100,0,0,NULL),
(23061,0,47,2241.2,7205.49,456.316,100,0,0,NULL),
(23061,0,48,2289.83,7195.03,456.316,100,0,0,NULL),
(23061,1,1,2066.22,7389.76,372.359,100,1000,2306101,NULL),
-- 23261
(23261,0,1,4057.03,4962.77,361.612,100,0,0,NULL),
(23261,0,2,4053.2,5011.8,361.612,100,0,0,NULL),
(23261,0,3,4052.46,5060.95,361.612,100,0,0,NULL),
(23261,0,4,4053.65,5109.91,361.612,100,0,0,NULL),
(23261,0,5,4053.26,5158.96,361.612,100,0,0,NULL),
(23261,0,6,4049.45,5207.94,361.612,100,0,0,NULL),
(23261,0,7,4041.68,5251.51,361.612,100,0,0,NULL),
(23261,0,8,4038.73,5300.97,361.612,100,0,0,NULL),
(23261,0,9,4040.51,5349.67,361.612,100,0,0,NULL),
(23261,0,10,4043.06,5398.79,361.612,100,0,0,NULL),
(23261,0,11,4046.15,5447.84,361.612,100,0,0,NULL),
(23261,0,12,4053.93,5496.79,361.612,100,0,0,NULL),
(23261,0,13,4068.87,5542.62,361.612,100,0,0,NULL),
(23261,0,14,4066.99,5591.75,361.612,100,0,0,NULL),
(23261,0,15,4053.57,5639.87,361.612,100,0,0,NULL),
(23261,0,16,4037.27,5686.93,361.612,100,0,0,NULL),
(23261,0,17,4014.02,5730.72,361.612,100,0,0,NULL),
(23261,0,18,3988.54,5772.89,361.612,100,0,0,NULL),
(23261,0,19,3966.26,5816.79,361.612,100,0,0,NULL),
(23261,0,20,3947.24,5862.56,361.612,100,0,0,NULL),
(23261,0,21,3928.41,5908.81,361.612,100,0,0,NULL),
(23261,0,22,3932.79,5957.5,361.612,100,0,0,NULL),
(23261,0,23,3947.28,6004.66,361.612,100,0,0,NULL),
(23261,0,24,3929.28,6050.74,361.612,100,0,0,NULL),
(23261,0,25,3881.02,6060.04,361.612,100,0,0,NULL),
(23261,0,26,3834.01,6043.28,361.612,100,0,0,NULL),
(23261,0,27,3812.44,5999.02,361.612,100,0,0,NULL),
(23261,0,28,3804.87,5950.09,361.612,100,0,0,NULL),
(23261,0,29,3829.84,5907.25,361.612,100,0,0,NULL),
(23261,0,30,3858.82,5867.79,361.612,100,0,0,NULL),
(23261,0,31,3889.9,5828.43,361.612,100,0,0,NULL),
(23261,0,32,3920.99,5789.04,361.612,100,0,0,NULL),
(23261,0,33,3948.72,5748.27,361.612,100,0,0,NULL),
(23261,0,34,3971.72,5704.24,361.612,100,0,0,NULL),
(23261,0,35,3983.51,5656.17,361.612,100,0,0,NULL),
(23261,0,36,3991.1,5608.38,361.612,100,0,0,NULL),
(23261,0,37,3994.9,5559.08,361.612,100,0,0,NULL),
(23261,0,38,3994.37,5510.29,361.612,100,0,0,NULL),
(23261,0,39,3995.17,5461.3,361.612,100,0,0,NULL),
(23261,0,40,3996.76,5412.01,361.612,100,0,0,NULL),
(23261,0,41,3998.8,5363.44,361.612,100,0,0,NULL),
(23261,0,42,3991.57,5314.28,361.612,100,0,0,NULL),
(23261,0,43,3970.13,5269.34,361.612,100,0,0,NULL),
(23261,0,44,3953.14,5222.13,361.612,100,0,0,NULL),
(23261,0,45,3937.27,5175.01,361.612,100,0,0,NULL),
(23261,0,46,3922.6,5128.04,361.612,100,0,0,NULL),
(23261,0,47,3921.25,5079.44,361.612,100,0,0,NULL),
(23261,0,48,3923.93,5031.54,361.612,100,0,0,NULL),
(23261,0,49,3926.66,4982.02,361.612,100,0,0,NULL),
(23261,0,50,3939.91,4934.33,361.612,100,0,0,NULL),
(23261,0,51,3965.7,4892.08,361.612,100,0,0,NULL),
(23261,0,52,4006.36,4883.67,361.612,100,0,0,NULL),
(23261,0,53,4045.91,4914.19,361.612,100,0,0,NULL),
(23261,1,1,3873.24,5230.21,271.532,100,1000,2326101,NULL),
-- 23281
(23281,0,1,3925.47,6029.5,392.508,100,0,0,NULL),
(23281,0,2,3938.97,5981.24,392.508,100,0,0,NULL),
(23281,0,3,3942.93,5932.12,392.508,100,0,0,NULL),
(23281,0,4,3955.21,5884.47,392.508,100,0,0,NULL),
(23281,0,5,3972.29,5837.08,392.508,100,0,0,NULL),
(23281,0,6,3993.95,5792.93,392.508,100,0,0,NULL),
(23281,0,7,4011.21,5746.19,392.508,100,0,0,NULL),
(23281,0,8,4020.96,5697.28,392.508,100,0,0,NULL),
(23281,0,9,4024.18,5648.02,392.508,100,0,0,NULL),
(23281,0,10,4026.6,5599.42,392.508,100,0,0,NULL),
(23281,0,11,4026.85,5550.05,392.508,100,0,0,NULL),
(23281,0,12,4026.86,5501.14,392.508,100,0,0,NULL),
(23281,0,13,4028.34,5452.07,392.508,100,0,0,NULL),
(23281,0,14,4030.6,5403.51,392.508,100,0,0,NULL),
(23281,0,15,4030.42,5354.29,392.508,100,0,0,NULL),
(23281,0,16,4034.89,5305.03,392.508,100,0,0,NULL),
(23281,0,17,4036.91,5256.31,392.508,100,0,0,NULL),
(23281,0,18,4039.6,5207.4,392.508,100,0,0,NULL),
(23281,0,19,4042.62,5158.38,392.508,100,0,0,NULL),
(23281,0,20,4044.14,5109.4,392.508,100,0,0,NULL),
(23281,0,21,4055.73,5061.05,392.508,100,0,0,NULL),
(23281,0,22,4074.66,5019.07,392.508,100,0,0,NULL),
(23281,0,23,4073.9,4970.12,392.508,100,0,0,NULL),
(23281,0,24,4055.59,4924.23,392.508,100,0,0,NULL),
(23281,0,25,4016.14,4893.17,392.508,100,0,0,NULL),
(23281,0,26,3967.71,4893.43,392.508,100,0,0,NULL),
(23281,0,27,3942.15,4936.81,392.508,100,0,0,NULL),
(23281,0,28,3939.93,4985.97,392.508,100,0,0,NULL),
(23281,0,29,3958.47,5027.59,392.508,100,0,0,NULL),
(23281,0,30,3976.41,5068.93,392.508,100,0,0,NULL),
(23281,0,31,3989.6,5110.75,392.508,100,0,0,NULL),
(23281,0,32,3983.44,5153.64,392.508,100,0,0,NULL),
(23281,0,33,3962.46,5197.79,392.508,100,0,0,NULL),
(23281,0,34,3957.36,5246.87,392.508,100,0,0,NULL),
(23281,0,35,3971.21,5293.97,392.508,100,0,0,NULL),
(23281,0,36,3995.19,5327.17,392.508,100,0,0,NULL),
(23281,0,37,4003.43,5376.97,392.508,100,0,0,NULL),
(23281,0,38,3993.08,5424.28,392.508,100,0,0,NULL),
(23281,0,39,3989.17,5470.56,392.508,100,0,0,NULL),
(23281,0,40,3989.76,5519.64,392.508,100,0,0,NULL),
(23281,0,41,3989.63,5568.55,392.508,100,0,0,NULL),
(23281,0,42,3982.74,5617.76,392.508,100,0,0,NULL),
(23281,0,43,3975.15,5662.21,392.508,100,0,0,NULL),
(23281,0,44,3965.21,5708.47,392.508,100,0,0,NULL),
(23281,0,45,3938.43,5750.99,392.508,100,0,0,NULL),
(23281,0,46,3908.25,5785.25,392.508,100,0,0,NULL),
(23281,0,47,3875.19,5821.7,392.508,100,0,0,NULL),
(23281,0,48,3839.98,5853.03,392.508,100,0,0,NULL),
(23281,0,49,3805.81,5886.93,392.508,100,0,0,NULL),
(23281,0,50,3774.81,5922.07,392.508,100,0,0,NULL),
(23281,0,51,3750.26,5965.65,392.508,100,0,0,NULL),
(23281,0,52,3733.89,6012.81,392.508,100,0,0,NULL),
(23281,0,53,3737.2,6050.02,392.508,100,0,0,NULL),
(23281,0,54,3759.75,6085.06,392.508,100,0,0,NULL),
(23281,0,55,3848.76,6088.41,392.508,100,0,0,NULL),
(23281,0,56,3893.82,6067.05,392.508,100,0,0,NULL),
(23281,1,1,4155.96,5435.81,274.754,100,1000,2328101,NULL);
-- Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2328201,2306101,2326101,2328101);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 2328201
(2328201,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Obsidia - Pause Waypoints'),
(2328201,0,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Obsidia - Send AI Event 5 (A) to Self'),
(2328201,0,0,35,5,0,0,23364,30,7,0,0,0,0,0,0,0,0,'Obsidia - Black Dragon Whelpling Send AI Event 5 (A) to Self'),
(2328201,0,0,40,0,0,0,185933,5319006,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 01'),
(2328201,0,0,40,0,0,0,185933,5319003,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 01'),
(2328201,0,0,40,0,0,0,185933,5319001,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 01'),
(2328201,0,0,40,0,0,0,185933,5319015,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 01'),
(2328201,0,0,40,0,0,0,185934,5319030,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 02'),
(2328201,0,0,40,0,0,0,185934,5319029,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 02'),
(2328201,0,0,40,0,0,0,185934,5319028,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 02'),
(2328201,0,0,40,0,0,0,185934,5319027,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Apexis Shard 02'),
(2328201,0,0,40,0,0,0,185929,5319033,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Dragonkin Nest 01'),
(2328201,0,0,40,0,0,0,185930,5319036,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Dragonkin Nest 02'),
(2328201,0,0,40,0,0,0,185931,5319040,23,0,0,0,0,0,0,0,0,'Obsidia - Despawn Dragonkin Nest 03'),
-- 2306101
(2306101,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rivendark - Pause Waypoints'),
(2306101,0,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Rivendark - Send AI Event 5 (A) to Self'),
(2306101,0,0,35,5,0,0,23364,30,7,0,0,0,0,0,0,0,0,'Rivendark - Black Dragon Whelpling Send AI Event 5 (A) to Self'),
(2306101,0,0,40,0,0,0,185933,5319009,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 01'),
(2306101,0,0,40,0,0,0,185933,5319008,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 01'),
(2306101,0,0,40,0,0,0,185933,5319007,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 01'),
(2306101,0,0,40,0,0,0,185933,5319002,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 01'),
(2306101,0,0,40,0,0,0,185934,5319021,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 02'),
(2306101,0,0,40,0,0,0,185934,5319020,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 02'),
(2306101,0,0,40,0,0,0,185934,5319019,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 02'),
(2306101,0,0,40,0,0,0,185934,5319031,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Apexis Shard 02'),
(2306101,0,0,40,0,0,0,185929,5319034,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Dragonkin Nest 01'),
(2306101,0,0,40,0,0,0,185930,5319038,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Dragonkin Nest 02'),
(2306101,0,0,40,0,0,0,185931,5319042,23,0,0,0,0,0,0,0,0,'Rivendark - Despawn Dragonkin Nest 03'),
-- 2326101
(2326101,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Furywing - Pause Waypoints'),
(2326101,0,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Furywing - Send AI Event 5 (A) to Self'),
(2326101,0,0,35,5,0,0,23364,30,7,0,0,0,0,0,0,0,0,'Furywing - Black Dragon Whelpling Send AI Event 5 (A) to Self'),
(2326101,0,0,40,0,0,0,185933,5319014,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 01'),
(2326101,0,0,40,0,0,0,185933,5319013,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 01'),
(2326101,0,0,40,0,0,0,185933,5319011,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 01'),
(2326101,0,0,40,0,0,0,185933,5319010,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 01'),
(2326101,0,0,40,0,0,0,185934,5319025,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 02'),
(2326101,0,0,40,0,0,0,185934,5319024,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 02'),
(2326101,0,0,40,0,0,0,185934,5319018,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 02'),
(2326101,0,0,40,0,0,0,185934,5319017,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Apexis Shard 02'),
(2326101,0,0,40,0,0,0,185929,5319035,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Dragonkin Nest 01'),
(2326101,0,0,40,0,0,0,185930,5319039,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Dragonkin Nest 02'),
(2326101,0,0,40,0,0,0,185931,5319043,23,0,0,0,0,0,0,0,0,'Furywing - Despawn Dragonkin Nest 03'),
-- 2328101
(2328101,0,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Insidion - Pause Waypoints'),
(2328101,0,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Insidion - Send AI Event 5 (A) to Self'),
(2328101,0,0,35,5,0,0,23364,30,7,0,0,0,0,0,0,0,0,'Insidion - Black Dragon Whelpling Send AI Event 5 (A) to Self'),
(2328101,0,0,40,0,0,0,185933,5319004,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 01'),
(2328101,0,0,40,0,0,0,185933,5319000,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 01'),
(2328101,0,0,40,0,0,0,185933,5319012,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 01'),
(2328101,0,0,40,0,0,0,185933,5319005,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 01'),
(2328101,0,0,40,0,0,0,185934,5319022,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 02'),
(2328101,0,0,40,0,0,0,185934,5319016,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 02'),
(2328101,0,0,40,0,0,0,185934,5319026,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 02'),
(2328101,0,0,40,0,0,0,185934,5319023,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Apexis Shard 02'),
(2328101,0,0,40,0,0,0,185929,5319032,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Dragonkin Nest 01'),
(2328101,0,0,40,0,0,0,185930,5319037,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Dragonkin Nest 02'),
(2328101,0,0,40,0,0,0,185931,5319041,23,0,0,0,0,0,0,0,0,'Insidion - Despawn Dragonkin Nest 03');
-- Relays
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 10125 AND 10132;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10125,0,41,0,0,0,23282,160761,87,0,0,0,0,0,0,0,0,'Respawn Static Obsidia'),
(10126,7000,41,0,0,0,23282,160761,87,0,0,0,0,0,0,0,0,'Respawn Static Obsidia (7s delay)'),
(10127,0,41,0,0,0,23061,160762,87,0,0,0,0,0,0,0,0,'Respawn Static Rivendark'),
(10128,7000,41,0,0,0,23061,160762,87,0,0,0,0,0,0,0,0,'Respawn Static Rivendark (7s delay)'),
(10129,0,41,0,0,0,23261,160763,87,0,0,0,0,0,0,0,0,'Respawn Static Furywing'),
(10130,7000,41,0,0,0,23261,160763,87,0,0,0,0,0,0,0,0,'Respawn Static Furywing (7s delay)'),
(10131,0,41,0,0,0,23281,160764,87,0,0,0,0,0,0,0,0,'Respawn Static Insidion'),
(10132,7000,41,0,0,0,23281,160764,87,0,0,0,0,0,0,0,0,'Respawn Static Insidion (7s delay)');

-- remove old wotlk spawns
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (185933,185934,185929,185930,185931));
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (185933,185934,185929,185930,185931));
DELETE FROM gameobject WHERE id IN (185933,185934,185929,185930,185931);

-- TBC Range
DELETE FROM game_event_gameobject WHERE guid BETWEEN 5319000 AND 5319043;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 5319000 AND 5319043;
DELETE FROM gameobject WHERE guid BETWEEN 5319000 AND 5319043;
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
-- Apexis Shard 01 
(5319000,185933,530,1,4143.33,5440.28,274.215,6.02139,0,0,-0.130526,0.991445,-180,-180,100,1),
(5319001,185933,530,1,2425.72,7000.9,367.373,4.13643,0,0,-0.878817,0.47716,-180,-180,100,1),
(5319002,185933,530,1,2066.11,7373.35,370.845,2.04204,0,0,0.85264,0.522499,-180,-180,100,1),
(5319003,185933,530,1,2427.44,7003.11,367.322,1.11701,0,0,0.529919,0.848048,-180,-180,100,1),
(5319004,185933,530,1,4144.66,5441.74,274.192,3.38594,0,0,-0.992546,0.12187,-180,-180,100,1),
(5319005,185933,530,1,4143.42,5443.04,274.237,2.87979,0,0,0.991445,0.130528,-180,-180,100,1),
(5319006,185933,530,1,2425.66,7002.48,367.874,3.38594,0,0,-0.992546,0.12187,-180,-180,100,1),
(5319007,185933,530,1,2064.21,7373.82,370.952,3.33359,0,0,-0.995396,0.0958512,-180,-180,100,1),
(5319008,185933,530,1,2065.64,7371.52,370.791,1.11701,0,0,0.529919,0.848048,-180,-180,100,1),
(5319009,185933,530,1,2063.3,7371.97,370.849,4.85202,0,0,-0.656058,0.75471,-180,-180,100,1),
(5319010,185933,530,1,3890.01,5227.71,269.931,3.64774,0,0,-0.968147,0.250381,-180,-180,100,1),
(5319011,185933,530,1,3890.01,5226.13,269.877,5.74214,0,0,-0.267238,0.963631,-180,-180,100,1),
(5319012,185933,530,1,4141.61,5441.49,274.597,4.4855,0,0,-0.782608,0.622515,-180,-180,100,1),
(5319013,185933,530,1,3891.74,5228.53,269.888,1.11701,0,0,0.529919,0.848048,-180,-180,100,1),
(5319014,185933,530,1,3892.39,5225.98,269.759,0.157079,0,0,0.0784588,0.996917,-180,-180,100,1),
(5319015,185933,530,1,2428.47,7001.33,367.367,1.44862,0,0,0.66262,0.748956,-180,-180,100,1),
-- Apexis Shard 02
(5319016,185934,530,1,4144.2,5440.89,274.193,4.01426,0,0,-0.906307,0.422619,-180,-180,100,1),
(5319017,185934,530,1,3890.06,5226.99,269.889,1.81514,0,0,0.788011,0.615662,-180,-180,100,1),
(5319018,185934,530,1,3892.72,5227.35,269.792,4.99164,0,0,-0.601814,0.798636,-180,-180,100,1),
(5319019,185934,530,1,2065.15,7373.63,370.852,6.02139,0,0,-0.130526,0.991445,-180,-180,100,1),
(5319020,185934,530,1,2063.33,7373.16,370.965,1.48353,0,0,0.67559,0.737278,-180,-180,100,1),
(5319021,185934,530,1,2063.75,7371.39,370.809,2.37364,0,0,0.927183,0.374608,-180,-180,100,1),
(5319022,185934,530,1,4144.15,5442.34,274.21,5.89921,0,0,-0.190808,0.981627,-180,-180,100,1),
(5319023,185934,530,1,4142.25,5442.66,274.288,1.0472,0,0,0.5,0.866025,-180,-180,100,1),
(5319024,185934,530,1,3890.78,5228.41,269.926,0.104719,0,0,0.0523357,0.99863,-180,-180,100,1),
(5319025,185934,530,1,3891.18,5225.74,269.805,3.21142,0,0,-0.999391,0.0349061,-180,-180,100,1),
(5319026,185934,530,1,4142.3,5440.81,274.284,2.47837,0,0,0.945518,0.325568,-180,-180,100,1),
(5319027,185934,530,1,2427.91,7000.82,367.979,3.83973,0,0,-0.939692,0.342021,-180,-180,100,1),
(5319028,185934,530,1,2426.65,7000.54,367.393,2.61799,0,0,0.965925,0.258821,-180,-180,100,1),
(5319029,185934,530,1,2425.59,7001.74,367.354,1.48353,0,0,0.67559,0.737278,-180,-180,100,1),
(5319030,185934,530,1,2428.11,7002.52,367.357,4.39823,0,0,-0.809016,0.587786,-180,-180,100,1),
(5319031,185934,530,1,2066.41,7372.39,371.586,3.83973,0,0,-0.939692,0.342021,-180,-180,100,1),
-- Dragonkin Nest 01
(5319032,185929,530,1,4143.11,5441.57,274.26,0.750491,0,0,0.366501,0.930418,720,720,100,1),
(5319033,185929,530,1,2426.72,7001.63,367.345,5.93412,0,0,-0.173648,0.984808,720,720,100,1),
(5319034,185929,530,1,2064.72,7372.71,370.805,5.93412,0,0,-0.173648,0.984808,720,720,100,1),
(5319035,185929,530,1,3891.08,5227.13,269.86,5.34071,0,0,-0.45399,0.891007,720,720,100,1),
-- Dragonkin Nest 02
(5319036,185930,530,1,2429.29,6998.49,367.414,6.00393,0,0,-0.139173,0.990268,720,720,100,1),
(5319037,185930,530,1,4146.5,5443.79,274.374,4.76475,0,0,-0.688354,0.725375,720,720,100,1),
(5319038,185930,530,1,2068.75,7374.34,371.058,6.17847,0,0,-0.0523357,0.99863,720,720,100,1),
(5319039,185930,530,1,3887.61,5227.25,270.184,2.75761,0,0,0.981627,0.190812,720,720,100,1),
-- Dragonkin Nest 03 
(5319040,185931,530,1,2423.91,6999.49,367.486,0.0174525,0,0,0.00872612,0.999962,720,720,100,1),
(5319041,185931,530,1,4142.85,5437.99,274.267,2.21656,0,0,0.894934,0.446199,720,720,100,1),
(5319042,185931,530,1,2065.04,7375.88,371.023,0.0174525,0,0,0.00872612,0.999962,720,720,100,1),
(5319043,185931,530,1,3889.19,5223.55,269.853,0.0174525,0,0,0.00872612,0.999962,720,720,100,1);
