-- q.10310 'Sabotage the Warp-Gate!' - UPDATE
-- Drijya - gossip corrected
DELETE FROM npc_gossip WHERE npc_guid = 72042;
UPDATE creature_template SET GossipMenuId = 8101 WHERE entry = 20281;
DELETE FROM gossip_menu WHERE entry = 8101;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8101, 10019, 0, 0),
(8101, 10039, 0, 1164);
DELETE FROM conditions WHERE condition_entry = 1164;
INSERT INTO conditions (condition_entry,type,value1,value2) VALUE
(1164,8,10310,0);

-- Faction & Equipment corrected
-- Legion Shocktrooper
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, EquipmentTemplateId = 1707 WHERE Entry = 20402;
-- Legion Destroyer
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, EquipmentTemplateId = 293 WHERE Entry = 20403;
