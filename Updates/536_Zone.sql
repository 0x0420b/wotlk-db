-- Bloodsport Palins - Borean Tundra

-- Duplicates
-- only duplicate removed = 84847
DELETE FROM creature WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM creature_addon WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM creature_movement WHERE id IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM game_event_creature WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM game_event_creature_data WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM creature_battleground WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);
DELETE FROM creature_linking WHERE guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453)
 OR master_guid IN (84847,27587,27588,27589,27590,27591,27592,27593,27594,27595,27596,27597,27598,27599,27600,95025,101983,102006,102013,102014,102015,102016,102020,102457,102458,102463,107200,107201,107202,107203,107204,107424,107437,107451,107452,107453);

-- missing added - UDB free guids reused
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Tundra Wolf
(84847,25675,571,1,1,0,0,3015,5792.94,85.0175,5.90719,300,7,0,6986,0,0,1),
-- Warsong Battleguard
(27587,25242,571,1,1,0,632,2763.38,5910.78,96.6721,5.864306,300,0,0,42540,0,0,0),
-- Den Vermin
(27588,24567,571,1,1,0,0,2915.11,5739.14,103.871,0.880612,300,7,0,6986,0,0,1),
(27589,24567,571,1,1,0,0,2892.22,5774.15,102.81,0.531099,300,7,0,6986,0,0,1),
(27590,24567,571,1,1,0,0,2830.11,5775.07,100.624,2.84408,300,7,0,7984,0,0,1),
-- Nerub'ar Web Lord
(27591,25294,571,1,1,0,0,2709.96,5905.11,89.9558,4.05339,300,10,0,7984,0,0,1),
-- Bloodspore Moth
(27592,25464,571,1,1,0,0,2995.21,5930.61,108.437,2.92084,300,7,0,6986,0,0,1),
(27593,25464,571,1,1,0,0,2922.41,5879.13,113.672,3.45805,300,7,0,6986,0,0,1),
(27594,25464,571,1,1,0,0,2883.1,5895.22,112.982,3.15175,300,70,0,7984,0,0,1),
(27595,25464,571,1,1,0,0,2850.41,5879.22,107.616,0.298391,300,7,0,7984,0,0,1),
(27596,25464,571,1,1,0,0,2813.64,5907.91,106.812,0.167226,300,7,0,6986,0,0,1),
(27597,25464,571,1,1,0,0,2853.88,5800.89,101.154,4.38482,300,7,0,6986,0,0,1),
(27598,25464,571,1,1,0,0,2956.2,5843.66,114.781,3.12425,300,7,0,7984,0,0,1),
(27599,25464,571,1,1,0,0,2915.59,5803.56,118.806,1.5024,300,7,0,7984,0,0,1),
(27600,25464,571,1,1,0,0,2901.39,5851.86,116.811,4.81364,300,7,0,7984,0,0,1),
(95025,25464,571,1,1,0,0,2713.69,5869.62,95.0253,3.15292,300,7,0,6986,0,0,1),
-- Bloodsport Roaster
(101983,25468,571,1,1,0,0,2857.09,5838.7,101.013,3.13684,300,0,0,7984,0,0,0),
(102006,25468,571,1,1,0,0,2903.04,5890.91,112.358,0.275623,300,0,0,7984,0,0,0),
-- Bloodsport Firestarter
(102013,25470,571,1,1,0,0,2924.27,5794.76,116.894,0.00574446,300,7,0,7984,30800, 0,1),
(102014,25470,571,1,1,0,0,2950.99,5800.49,113.415,4.06233,300,7,0,7984,30800, 0,1),
(102015,25470,571,1,1,0,0,2988.26,5870.84,107.637,2.85282,300,7,0,6986,29910, 0,1),
(102016,25470,571,1,1,0,0,2956.9,5885.14,111.734,6.01012,300,7,0,6986,29910, 0,1),
(102020,25470,571,1,1,0,0,2963.94,5919.72,113.91,2.14989,300,7,0,7984,30800, 0,1),
(102457,25470,571,1,1,0,0,2948.98,5946.32,118.802,3.38689,300,7,0,7984,30800, 0,1),
(102458,25470,571,1,1,0,0,2891.53,5935.92,118.512,1.85929,300,7,0,7984,30800, 0,1),
(102463,25470,571,1,1,0,0,2825.81,5908.5,106.982,3.59895,300,7,0,7984,30800, 0,1),
(107200,25470,571,1,1,0,0,2804.34,5879.02,101.808,0.842193,300,7,0,7984,30800, 0,1),
(107201,25470,571,1,1,0,0,2828.32,5857.37,98.9508,0.798994,300,7,0,7984,30800,0, 1),
(107202,25470,571,1,1,0,0,2904.41,5827.38,117.768,5.37002,300,7,0,6986,29910, 0,1),
(107203,25470,571,1,1,0,0,2919.52,5861.34,114.166,1.41161,300,7,0,6986,29910, 0,1),
-- Bloodsport Harvester
(107204,25467,571,1,1,0,0,2940.94,5838.96,117.506,1.31736,300,7,0,6986,0,0, 1),
(107424,25467,571,1,1,0,0,2886.99,5876.7,111.121,5.0912,300,7,0,7984,0,0, 1),
(107437,25467,571,1,1,0,0,2853.18,5894.73,108.538,4.27439,300,7,0,7984,0,0, 1),
(107451,25467,571,1,1,0,0,2920.39,5920.47,116.284,0.170676,300,7,0,6986,0,0, 1),
(107452,25467,571,1,1,0,0,2987.96,5911.48,108.16,2.25591,300,7,0,7984,0,0, 1),
(107453,25467,571,1,1,0,0,2984.67,5944.26,111.246,5.36609,300,7,0,7984,0,0, 1);

-- Update
UPDATE creature SET position_x = 3149.77, position_y = 5818.51, position_z = 87.5325 WHERE guid = 86498;
DELETE FROM creature_addon WHERE guid = 27587;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27587,0,0,1,1,375,0,NULL);
