-- Reavij
UPDATE creature_template SET gossipmenuid = 7616 WHERE entry = 18012;
DELETE FROM gossip_menu WHERE entry = 7616;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(7616,9268,0,0);

-- remove old one
DELETE FROM npc_gossip WHERE npc_guid = 63714;
