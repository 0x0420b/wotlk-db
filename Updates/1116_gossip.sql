-- ----------------------------
-- Ranger Valanna (Entry: 16219)
UPDATE creature_template SET GossipMenuId = 7159 WHERE entry = 16219;

DELETE FROM gossip_menu WHERE entry = 7159;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(7159, 8424, 0, 0),
(7159, 8505, 0, 1277), -- q.9145 rewarded
(7159, 8427, 0, 1278); -- q.9143 rewarded

DELETE FROM conditions WHERE condition_entry IN(1277,1278);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1277, 8, 9145, 0), -- q.9145 rewarded
(1278, 8, 9143, 0); -- q.9143 rewarded

-- Missing text. Text ID unknown. Use a really high ID until we find the correct one.
DELETE FROM npc_text WHERE ID = 8427;
INSERT INTO npc_text (ID, text0_1, prob0) VALUES
(8427, 'I\'m sure that help from Farstrider Enclave will be here soon to help me and this useless lieutenant get to safety. You might not want to stick around; I\'ve heard all sorts of strange sounds coming from the lake and that village over yonder.', 1);
