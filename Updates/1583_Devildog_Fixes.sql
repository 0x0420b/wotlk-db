-- PICKPOCKETING FIXES
UPDATE creature_template SET PickpocketLootId = 19174 WHERE entry = 19174;
UPDATE creature_template SET Pickpocketlootid = 21779 WHERE entry = 21779;
DELETE FROM pickpocketing_loot_template WHERE entry IN (19174,21779);
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`chanceorquestchance`,`groupid`,`mincountorref`,`maxcount`,`condition_id`) VALUES
('19174','29569','0.5','0','1','1','0'),
('19174','29572','0.5','0','1','1','0'),
('19174','30610','0.18','0','1','1','0'),
('21779','29570','60','0','1','1','0');

-- From patch 2.2 Jungle Remedy could also drop off Kurzen Jungle Fighters
DELETE FROM  creature_loot_template WHERE entry = 937 AND item=2633;
INSERT INTO `creature_loot_template` (`entry`, `item`, `chanceorquestchance`, `mincountorref`, `maxcount`, `condition_id`) VALUES
('937','2633','35','1','1','0');

-- SKINNING LOOT FIX
UPDATE creature_template SET SkinninglootID = 20775 WHERE entry = 20775;
DELETE FROM skinning_loot_template WHERE entry=20775;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`chanceorquestchance`,`groupid`,`mincountorref`,`maxcount`,`condition_id`) VALUES
('20775','21887','86','1','1','2','0'),
('20775','25649','13','1','2','3','0');

-- Mo'arg Doomsmith should drop Mark of Sargeras, not Mark of Kil'jaeden
UPDATE creature_loot_template SET item = 30809 WHERE entry = 16944 AND item = 29425;

-- Wyrmcult Blackwhelp changed from pickpocket to skinning in 2.2
UPDATE creature_template SET PickpocketlootID = 0, SkinninglootID = 21387 WHERE entry = 21387;
-- MISSING SKINNING LOOT
DELETE FROM skinning_loot_template WHERE entry = 21387;
INSERT INTO `skinning_loot_template` (`entry`,`item`,`chanceorquestchance`,`groupid`,`mincountorref`,`maxcount`,`condition_id`) VALUES
('21387','21887','86','1','1','4','0'),
('21387','25649','12','1','2','3','0'),
('21387','35229','0.8','1','1','1','0');

-- MISSING REP
UPDATE quest_template SET Rewrepfaction1 = 1031, Rewrepvalue1 = 350, Rewrepfaction2 = 1038, Rewrepvalue2 = 350  WHERE entry = 11065;
UPDATE quest_template SET Rewrepfaction1 = 1031, Rewrepvalue1 = 350, Rewrepfaction2 = 1038, Rewrepvalue2 = 350  WHERE entry = 11066;

-- Kodo pathing mulgor | TBC-56
DELETE FROM creature_linking WHERE master_guid = 26233;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(26192, 26233, 512),
(26194, 26233, 512),
(26193, 26233, 512),
(26195, 26233, 512);
UPDATE creature SET Movementtype = 2 WHERE guid = 26233;
DELETE FROM creature_movement WHERE id=26233;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26233,1,-1314.02,-927.773,1.76475,100,0,0),
(26233,2,-1305.41,-933.788,2.69096,100,0,0),
(26233,3,-1296.73,-939.696,2.4108,100,0,0),
(26233,4,-1287.92,-945.399,0.820361,100,0,0),
(26233,5,-1279.15,-951.175,-1.04559,100,0,0),
(26233,6,-1270.38,-956.951,-2.84391,100,0,0),
(26233,7,-1261.61,-962.727,-4.82868,100,0,0),
(26233,8,-1248.43,-970.651,-6.86529,100,0,0),
(26233,9,-1235.82,-975.855,-6.03823,100,0,0),
(26233,10,-1223.65,-976.969,-5.23195,100,0,0),
(26233,11,-1217.43,-975.995,-5.10517,100,0,0),
(26233,12,-1207.83,-972.804,-4.91124,100,0,0),
(26233,13,-1202.92,-970.187,-4.44508,100,0,0),
(26233,14,-1185.84,-957.997,-1.57849,100,0,0),
(26233,15,-1178.17,-950.833,-1.0093,100,0,0),
(26233,16,-1170.87,-943.295,-0.579404,100,0,0),
(26233,17,-1164.01,-935.341,-0.632045,100,0,0),
(26233,18,-1157.41,-927.181,-1.47064,100,0,0),
(26233,19,-1150.96,-918.893,-2.83433,100,0,0),
(26233,20,-1145.16,-910.147,-4.02247,100,0,0),
(26233,21,-1139.74,-901.151,-5.02429,100,0,0),
(26233,22,-1134.35,-892.141,-7.25865,100,0,0),
(26233,23,-1128.96,-883.13,-9.70552,100,0,0),
(26233,24,-1123.82,-873.975,-10.7734,100,0,0),
(26233,25,-1118.71,-864.8,-11.7512,100,0,0),
(26233,26,-1113.78,-855.531,-13.6097,100,0,0),
(26233,27,-1108.89,-846.238,-15.7135,100,0,0),
(26233,28,-1104.29,-836.805,-18.0789,100,0,0),
(26233,29,-1100.33,-827.084,-21.2343,100,0,0),
(26233,30,-1097.04,-817.114,-24.9268,100,0,0),
(26233,31,-1094.33,-806.97,-28.6564,100,0,0),
(26233,32,-1091.86,-796.765,-32.0384,100,0,0),
(26233,33,-1089.71,-786.491,-35.0579,100,0,0),
(26233,34,-1087.77,-776.171,-37.8731,100,0,0),
(26233,35,-1084.61,-755.413,-42.925,100,0,0),
(26233,36,-1084.61,-755.413,-42.925,100,0,0),
(26233,37,-1083.51,-744.971,-44.7886,100,0,0),
(26233,38,-1082.64,-734.508,-46.2918,100,0,0),
(26233,39,-1081.57,-713.536,-49.8074,100,0,0),
(26233,40,-1081.55,-703.036,-51.9423,100,0,0),
(26233,41,-1081.82,-692.541,-53.7107,100,0,0),
(26233,42,-1081.82,-692.541,-53.7107,100,0,0),
(26233,43,-1082.85,-671.568,-54.8015,100,0,0),
(26233,44,-1083.84,-661.121,-54.2045,100,0,0),
(26233,45,-1083.84,-661.121,-54.2045,100,0,0),
(26233,46,-1085.05,-650.693,-53.6007,100,0,0),
(26233,47,-1087.71,-640.534,-53.3144,100,0,0),
(26233,48,-1090.39,-630.381,-53.2422,100,0,0),
(26233,49,-1093.06,-620.228,-53.167,100,0,0),
(26233,50,-1095.8,-610.091,-52.9777,100,0,0),
(26233,51,-1098.6,-599.971,-52.9879,100,0,0),
(26233,52,-1101.42,-589.857,-53.267,100,0,0),
(26233,53,-1104.42,-579.794,-53.9687,100,0,0),
(26233,54,-1107.56,-569.777,-55.2718,100,0,0),
(26233,55,-1110.89,-559.819,-56.2012,100,0,0),
(26233,56,-1117.84,-544.968,-56.4211,100,0,0),
(26233,57,-1124.57,-537.86,-56.5004,100,0,0),
(26233,58,-1132.56,-531.058,-56.7675,100,0,0),
(26233,59,-1140.91,-524.684,-57.2449,100,0,0),
(26233,60,-1140.91,-524.684,-57.2449,100,0,0),
(26233,61,-1149.57,-518.754,-57.2603,100,0,0),
(26233,62,-1167.4,-507.701,-54.0041,100,0,0),
(26233,63,-1176.44,-502.359,-51.8603,100,0,0),
(26233,64,-1176.44,-502.359,-51.8603,100,0,0),
(26233,65,-1185.58,-497.192,-50.2028,100,0,0),
(26233,66,-1194.83,-492.225,-49.3065,100,0,0),
(26233,67,-1204.14,-487.373,-49.4536,100,0,0),
(26233,68,-1213.48,-482.582,-50.4576,100,0,0),
(26233,69,-1222.85,-477.84,-52.0784,100,0,0),
(26233,70,-1232.22,-473.098,-53.625,100,0,0),
(26233,71,-1250.96,-463.614,-54.2325,100,0,0),
(26233,72,-1260.35,-458.927,-53.0862,100,0,0),
(26233,73,-1269.76,-454.258,-52.2099,100,0,0),
(26233,74,-1269.76,-454.258,-52.2099,100,0,0),
(26233,75,-1288.63,-445.05,-51.6535,100,0,0),
(26233,76,-1288.63,-445.05,-51.6535,100,0,0),
(26233,77,-1307.84,-436.624,-50.9543,100,0,0),
(26233,78,-1317.52,-432.555,-50.1641,100,0,0),
(26233,79,-1317.52,-432.555,-50.1641,100,0,0),
(26233,80,-1336.93,-424.539,-47.5572,100,0,0),
(26233,81,-1346.67,-420.613,-46.6575,100,0,0),
(26233,82,-1356.49,-416.899,-46.3442,100,0,0),
(26233,83,-1366.44,-413.56,-46.5896,100,0,0),
(26233,84,-1366.44,-413.56,-46.5896,100,0,0),
(26233,85,-1383.71,-409.145,-47.0476,100,0,0),
(26233,86,-1388.23,-408.72,-47.1469,100,0,0),
(26233,87,-1396.98,-408.772,-47.2679,100,0,0),
(26233,88,-1407.42,-409.849,-47.2066,100,0,0),
(26233,89,-1417.82,-411.282,-47.3775,100,0,0),
(26233,90,-1428.16,-413.106,-47.2524,100,0,0),
(26233,91,-1438.45,-415.214,-47.1169,100,0,0),
(26233,92,-1448.67,-417.594,-47.4044,100,0,0),
(26233,93,-1458.88,-420.033,-47.5592,100,0,0),
(26233,94,-1468.75,-422.388,-47.2796,100,0,0),
(26233,95,-1478.78,-425.503,-46.5175,100,0,0),
(26233,96,-1487.71,-428.583,-45.8581,100,0,0),
(26233,97,-1495.18,-431.562,-45.7707,100,0,0),
(26233,98,-1500.34,-433.762,-46.0116,100,0,0),
(26233,99,-1519.44,-442.49,-46.8066,100,0,0),
(26233,100,-1528.85,-447.139,-46.0312,100,0,0),
(26233,101,-1538.05,-452.191,-44.9029,100,0,0),
(26233,102,-1544.12,-456.337,-44.4521,100,0,0),
(26233,103,-1552.2,-463.026,-44.2713,100,0,0),
(26233,104,-1562,-473.464,-43.7746,100,0,0),
(26233,105,-1566.89,-480.271,-43.3215,100,0,0),
(26233,106,-1570.07,-486.115,-43.1566,100,0,0),
(26233,107,-1574.36,-495.698,-43.527,100,0,0),
(26233,108,-1578.07,-505.517,-44.8216,100,0,0),
(26233,109,-1581.35,-515.491,-46.7112,100,0,0),
(26233,110,-1584.18,-525.601,-48.3021,100,0,0),
(26233,111,-1586.78,-535.758,-48.7043,100,0,0),
(26233,112,-1589.31,-545.949,-48.1542,100,0,0),
(26233,113,-1591.81,-556.146,-47.414,100,0,0),
(26233,114,-1594.32,-566.343,-46.8636,100,0,0),
(26233,115,-1596.82,-576.54,-46.7213,100,0,0),
(26233,116,-1599.33,-586.737,-46.5441,100,0,0),
(26233,117,-1601.83,-596.934,-46.253,100,0,0),
(26233,118,-1604.33,-607.118,-45.8565,100,0,0),
(26233,119,-1606.84,-617.315,-45.0674,100,0,0),
(26233,120,-1609.39,-627.465,-43.885,100,0,0),
(26233,121,-1611.97,-637.642,-42.5159,100,0,0),
(26233,122,-1614.56,-647.819,-41.37,100,0,0),
(26233,123,-1617.05,-657.65,-40.2792,100,0,0),
(26233,124,-1617.05,-657.65,-40.2792,100,0,0),
(26233,125,-1619.4,-667.885,-38.9523,100,0,0),
(26233,126,-1621.74,-678.12,-37.3774,100,0,0),
(26233,127,-1624.01,-688.371,-34.6517,100,0,0),
(26233,128,-1625.91,-698.696,-29.5338,100,0,0),
(26233,129,-1627.24,-709.111,-25.1243,100,0,0),
(26233,130,-1627.88,-719.588,-22.3726,100,0,0),
(26233,131,-1627.9,-730.075,-20.9471,100,0,0),
(26233,132,-1627.46,-738.442,-20.7611,100,0,0),
(26233,133,-1623.89,-755.2,-21.8202,100,0,0),
(26233,134,-1619.04,-766.019,-19.951,100,0,0),
(26233,135,-1616.37,-770.117,-18.5315,100,0,0),
(26233,136,-1609.86,-778.353,-14.479,100,0,0),
(26233,137,-1605.04,-784.339,-11.3661,100,0,0),
(26233,138,-1605.04,-784.339,-11.3661,100,0,0),
(26233,139,-1596.23,-790.046,-8.19194,100,0,0),
(26233,140,-1587.41,-795.753,-5.48232,100,0,0),
(26233,141,-1578.6,-801.461,-3.884,100,0,0),
(26233,169,-1540.65,-820.367,-6.06833,100,0,0),
(26233,170,-1530.39,-822.581,-4.83437,100,0,0),
(26233,171,-1520.23,-825.242,-1.96134,100,0,0),
(26233,172,-1510.09,-827.966,0.153517,100,0,0),
(26233,173,-1500,-830.814,1.29886,100,0,0),
(26233,174,-1489.97,-833.919,-1.35076,100,0,0),
(26233,175,-1479.94,-837.027,-1.94799,100,0,0),
(26233,176,-1469.91,-840.136,2.33062,100,0,0),
(26233,177,-1459.89,-843.245,5.66787,100,0,0),
(26233,178,-1449.87,-846.35,7.09989,100,0,0),
(26233,179,-1439.79,-849.298,6.86574,100,0,0),
(26233,180,-1419.55,-854.882,0.700845,100,0,0),
(26233,181,-1409.42,-857.674,-3.98243,100,0,0),
(26233,182,-1399.3,-860.466,-5.3647,100,0,0),
(26233,183,-1389.24,-863.462,-5.33414,100,0,0),
(26233,184,-1379.37,-867.052,-7.18867,100,0,0),
(26233,185,-1370.27,-871.48,-8.71059,100,0,0),
(26233,186,-1362.27,-878.276,-7.92151,100,0,0),
(26233,187,-1354.78,-885.632,-6.50567,100,0,0),
(26233,188,-1347.6,-893.28,-5.65334,100,0,0),
(26233,189,-1335.3,-907.609,-3.6505,100,0,0),
(26233,190,-1328.38,-915.511,-1.43196,100,0,0),
(26233,191,-1321.14,-923.084,0.823039,100,0,0);
