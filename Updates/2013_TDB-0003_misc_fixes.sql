-- Spells need to proc on DOT tick taken, not dot tick done since they are on target, not owner and they proc themselves
DELETE FROM spell_proc_event WHERE entry IN(32065,35244,36659);
INSERT INTO spell_proc_event(entry,procFlags) VALUES
(32065,0x00080000),
(35244,0x00080000),
(36659,0x00080000);

-- new Shadowfiend level stats from TBC sniffs, 66, 67 and 70 sniffed, rest filled
UPDATE pet_levelstats SET mana=100 WHERE creature_entry IN(19668);
DELETE FROM pet_levelstats WHERE creature_entry IN(19668) AND level IN(66,67,68,69,70);
INSERT INTO pet_levelstats (creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES
('19668', '66', '1160', '2846', '100', '0', '0', '0', '0', '0'),
('19668', '67', '1193', '2933', '100', '0', '0', '0', '0', '0'),
('19668', '68', '1227', '3010', '100', '0', '0', '0', '0', '0'),
('19668', '69', '1261', '3095', '100', '0', '0', '0', '0', '0'),
('19668', '70', '1296', '3155', '100', '0', '0', '0', '0', '0');

-- Enchantress Volali 19251 - Remove Male Model Option
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 18775;

-- missing spawns added -- TDB 530x range used
DELETE FROM `creature_addon` WHERE `guid` IN (58922);
DELETE FROM creature WHERE `guid` IN (5309001,5309002,5309003);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5309001, 16938, 530, 1, 0, 0, -567.9635, 4784.752, 36.39353, 0.2792527, 300, 300, 0, 0, 1, 1, 0, 0), 
(5309002, 16938, 530, 1, 0, 0, -553.8755, 4740.128, 36.71443, 2.356194, 300, 300, 0, 0, 1, 1, 0, 0), 
(5309003, 17058, 530, 1, 0, 0, -554.1119, 4746.274, 35.73817, 0.5762176, 300, 300, 5, 0, 1, 1, 0, 1);

-- Dreghood Brute 16938 - Illidari Taskmaster 17058 Groups
DELETE FROM `creature_linking` WHERE `master_guid` IN (59451,59452,59453,59454,59455,59456,59457,59458,59459,59460,59462,59463,5309003);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(58906,59451,3),(58907,59451,3),
(58908,59452,3),(58909,59452,3),
(58910,59453,3),(58911,59453,3),
(58913,59454,3),(58919,59454,3),(5309001,59454,3),
(58916,59455,3),(58917,59455,3),(58918,59455,3),
(58915,59456,3),(58921,59456,3),
(58923,59457,3),(58924,59457,3),
(58926,59458,3),(58927,59458,3),
(58928,59459,3),(58929,59459,3),
(58925,59460,3),(58930,59460,3),(58931,59460,3),
(58920,59462,3),(58932,59462,3),
(58933,59463,3),(58934,59463,3),
(5309002,5309003,3);
