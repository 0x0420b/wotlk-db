-- Tortured Drake 
UPDATE creature SET position_x = -7393.304, position_y = -1070.783, position_z = 479.7934, orientation = 3.228859 WHERE guid = 139969;
UPDATE creature SET position_x = -7344.755, position_y = -958.0862, position_z = 481.6852, orientation = 5.811946 WHERE guid = 139968;
DELETE FROM creature_template_addon WHERE entry = 13976;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(13976,0,7,1,16,0,0,NULL);
