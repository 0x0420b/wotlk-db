
-- *** Wintergrasp ***
-- Conditions
SET @conditionId=1442;
DELETE FROM conditions WHERE condition_entry BETWEEN @conditionId AND @conditionId+5;
INSERT INTO conditions(condition_entry,type,value1,value2,comments) VALUES
(@conditionId,1,33280,0,'Wintergrasp - Corporal rank check'),
(@conditionId+1,1,55629,0,'Wintergrasp - First Lieutenant rank check'),
(@conditionId+2,-2,@conditionId,@conditionId+1,'Wintergrasp - First Lieutenant or Corporal rank check'),
(@conditionId+3,-3,@conditionId+2,0,'Wintergrasp - NOT(First Lieutenant or Corporal) rank check'),
(@conditionId+4,38,4197,0,'Wintergrasp - Check allowed alliance vehicles'), -- To be implemented in script
(@conditionId+5,38,4197,1,'Wintergrasp - Check allowed horde vehicles'); -- To be implemented in script

-- creature gossips
UPDATE creature_template SET GossipMenuId=9904 WHERE entry=30400;
UPDATE creature_template SET GossipMenuId=9983 WHERE entry=29676;
UPDATE creature_template SET GossipMenuId=9830 WHERE entry=29672;
UPDATE creature_template SET GossipMenuId=9828 WHERE entry=29674;
UPDATE creature_template SET GossipMenuId=9827 WHERE entry=29673;
UPDATE creature_template SET GossipMenuId=9829 WHERE entry=29675;
UPDATE creature_template SET GossipMenuId=10602 WHERE entry=34953;
-- Gossip menus
DELETE FROM gossip_menu WHERE entry IN (9904,9923,9983,9830,9828,9827);
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
-- horde goblin
(9904,13786,0,@conditionId+5),
(9904,13759,0,@conditionId+2),
(9904,13761,0,@conditionId+3),
-- alliance gnome
(9923,13786,0,@conditionId+4),
(9923,13798,0,@conditionId+2),
(9923,14172,0,@conditionId+3),
-- portals
(9983,13834,0,0),
(9830,13579,0,0),
(9828,13576,0,0),
(9827,13575,0,0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9904,9923);
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUE
-- horde goblin
(9904,0,0,'I\'d like to build a catapult.',1,1,0,0,0,0,0,'',@conditionId+2),
(9904,1,0,'I\'d like to build a demolisher.',1,1,0,0,0,0,0,'',@conditionId+1),
(9904,2,0,'I\'d like to build a siege engine.',1,1,0,0,0,0,0,'',@conditionId+1),
-- alliance gnome
(9923,0,0,'I\'d like to build a catapult.',1,1,0,0,0,0,0,'',@conditionId+2),
(9923,1,0,'I\'d like to build a demolisher.',1,1,0,0,0,0,0,'',@conditionId+1),
(9923,2,0,'I\'d like to build a siege engine.',1,1,0,0,0,0,0,'',@conditionId+1);

-- creature template addons
DELETE FROM creature_template_addon WHERE entry IN (30400,30499);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,auras) VALUES
(30400, 0, 0x0, 0x1, ''),
(30499, 0, 0x0, 0x1, '');

-- missing creatures
DELETE FROM creature WHERE guid IN (100259,100260,100261,100262,100263,100264,100265,100266,100267,100268,101809,101812,101814,101823,101825,101831,101833,101841,101843,101853,101854,101858,101867,
101871,101872,101875,101878,101879,101886,101888,101901,101905,101908,101920,101921,101925,101931,101932,101934,102236,102238,102239,102241,102242,102246,102254,102255,102257);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(100259, 28366, 571, 1, 1, 4538.938, 3601.212, 402.9699, 4.049164, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100260, 28366, 571, 1, 1, 4534.005, 3641.883, 402.9699, 2.670354, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100261, 28366, 571, 1, 1, 4579.415, 3605.478, 402.9699, 5.602507, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100262, 28366, 571, 1, 1, 4583.152, 3626.628, 426.6221, 6.265732, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100263, 28366, 571, 1, 1, 4559.906, 3598.084, 426.6221, 4.869469, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100264, 28366, 571, 1, 1, 4554.502, 3649.916, 426.6221, 1.675516, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100265, 28366, 571, 1, 1, 4575.644, 3646.644, 402.9699, 0.9424778, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100266, 28366, 571, 1, 1, 4531.28, 3621.086, 426.6221, 3.333579, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100267, 28366, 571, 1, 1, 4377.097, 2842.61, 412.7141, 2.460914, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(100268, 28366, 571, 1, 1, 4418.223, 2843.65, 412.7141, 0.8203048, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101809, 28366, 571, 1, 1, 4419.018, 2802.616, 412.7141, 5.550147, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101812, 28366, 571, 1, 1, 4424.336, 2822.964, 436.3663, 6.161012, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101814, 28366, 571, 1, 1, 4372.188, 2822.089, 436.3663, 3.263766, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101823, 28366, 571, 1, 1, 4377.919, 2801.679, 412.7141, 3.979351, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101825, 28366, 571, 1, 1, 4397.767, 2848.351, 436.3663, 1.710423, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101831, 28366, 571, 1, 1, 4398.644, 2796.263, 436.3663, 4.782202, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101833, 28366, 571, 1, 1, 5137.889, 2747.527, 439.9277, 3.159046, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101841, 28366, 571, 1, 1, 5136.843, 2935.265, 439.9297, 3.106686, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101843, 28366, 571, 1, 1, 5163.509, 2960.821, 439.9297, 1.605703, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101853, 28366, 571, 1, 1, 5148.563, 2820.538, 421.7036, 3.368485, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101854, 28366, 571, 1, 1, 5147.75, 2861.868, 421.6299, 3.099253, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101858, 28366, 571, 1, 1, 5163.863, 2721.933, 439.9277, 4.642576, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101867, 28366, 571, 1, 1, 5234.786, 2948.732, 420.9633, 1.623156, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101871, 28366, 571, 1, 1, 5264.585, 2819.8, 421.7385, 3.106686, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101872, 28366, 571, 1, 1, 5265.91, 2976.458, 421.1493, 2.984513, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101875, 28366, 571, 1, 1, 5264.236, 2861.381, 421.6688, 3.124139, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101878, 28366, 571, 1, 1, 5236.104, 2732.727, 421.7318, 4.642576, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101879, 28366, 571, 1, 1, 5252.436, 2632.149, 439.8379, 3.193953, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101886, 28366, 571, 1, 1, 5254.158, 3047.795, 438.5827, 3.141593, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101888, 28366, 571, 1, 1, 5322.184, 2756.658, 421.7285, 4.520403, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101901, 28366, 571, 1, 1, 5322.866, 2923.343, 421.7289, 1.466077, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101905, 28366, 571, 1, 1, 5264.887, 2704.792, 421.7826, 3.211406, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101908, 28366, 571, 1, 1, 5280.969, 3073.374, 438.5827, 1.427122, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101920, 28366, 571, 1, 1, 5278.27, 2605.745, 439.8379, 4.817109, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101921, 28366, 571, 1, 1, 5363.769, 2756.817, 421.7121, 4.572762, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101925, 28366, 571, 1, 1, 5350.781, 2615.847, 421.3257, 4.747295, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101931, 28366, 571, 1, 1, 5390.775, 2615.325, 421.209, 4.607669, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101932, 28366, 571, 1, 1, 4469.772, 1967.243, 465.7305, 1.22173, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(101934, 28366, 571, 1, 1, 4486.326, 1954.655, 442.0783, 0.3490658, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102236, 28366, 571, 1, 1, 4448.807, 1971.795, 442.0783, 2.024582, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102238, 28366, 571, 1, 1, 4436.208, 1954.791, 465.7305, 2.740167, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102239, 28366, 571, 1, 1, 4431.831, 1934.137, 442.0783, 3.413723, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102241, 28366, 571, 1, 1, 4482.229, 1933.906, 465.7305, 5.951573, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102242, 28366, 571, 1, 1, 5363.857, 2923.782, 421.7915, 1.48353, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102246, 28366, 571, 1, 1, 5352.219, 3061.622, 421.1846, 1.675516, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102254, 28366, 571, 1, 1, 5391.083, 3061.721, 419.6995, 1.570796, 1800, 1800, 0, 0, 50000, 0, 0, 0),
(102255, 28366, 571, 1, 1, 4469.187, 1917.206, 441.9947, 5.008491, 1800, 1800, 0, 0, 50000, 0, 0, 0), -- guesswork
(102257, 28366, 571, 1, 1, 4449.022, 1922.292, 465.6470, 4.301631, 1800, 1800, 0, 0, 50000, 0, 0, 0); -- guesswork

-- gameobject updates
-- workshops are always friendly
UPDATE gameobject_template SET faction=35 WHERE entry IN (192030,192031,192032,192033,192028,192029);


-- *** Misc updates - not related to WG ***
UPDATE creature_template SET GossipMenuId=9821 WHERE entry=22468;
UPDATE creature_template SET GossipMenuId=9114 WHERE entry=21088;
DELETE FROM gossip_menu WHERE entry IN (9821,9114);
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9821,13584,0,0),
(9114,10249,0,0);
UPDATE creature_template SET InhabitType=7 WHERE entry IN (33721,27852);

-- missing auras
DELETE FROM creature_addon WHERE guid IN (97216,97215,97220,97217);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,auras) VALUES
(97216, 0, 0x0, 0x1, 55228),
(97215, 0, 0x0, 0x1, 55167),
(97220, 0, 0x0, 0x1, 55230),
(97217, 0, 0x0, 0x1, 61179);
