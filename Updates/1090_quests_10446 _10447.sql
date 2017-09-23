-- Script quest The Final Code (H)q.10447 (A)q.10446
UPDATE creature SET spawntimesecsmin = 45, spawntimesecsmax = 45 WHERE id IN (21898,20809); -- Proper respawn for Mana Bomb Lightning Trigger and Mana Bomb Channel Trigger

DELETE FROM spell_script_target WHERE entry = 35958;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(35958,1,16769,0), -- Firewing Warlock 
(35958,1,1410,0), -- Firewing Bloodwarder
(35958,1,5355,0); -- Firewing Defender

DELETE FROM dbscripts_on_event WHERE id IN (13470);
INSERT INTO dbscripts_on_event (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(13470,0,35,5,55,0,0,0,0,0,20809,5,7,'Mana Bomb Channel Trigger - Send AI Event 5 (A)',0,0,0,0),
(13470,0,8,21039,1,0,0,0,0,0,0,0,0,'q.10446/10447 - Give Kill Credit',0,0,0,0),
(13470,0,18,500,0,0,0,0,0,0,20809,5,7,'q.10446/10447 - Mana Bomb Channel Trigger - Despawn Self',0,0,0,0),
(13470,6,0,0,0,0,2000001387,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 5...',0,0,0,0),
(13470,7,0,0,0,0,2000001388,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 4...',0,0,0,0),
(13470,8,0,0,0,0,2000001389,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 3...',0,0,0,0),
(13470,9,0,0,0,0,2000001390,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 2...',0,0,0,0),
(13470,10,0,0,0,0,2000001391,0,0,0,20767,5,0,'Mana Bomb Explosion Trigger - 1...',0,0,0,0),
(13470,12,15,35513,0,0,0,0,0,0,20767,5,7,'Mana Bomb Explosion Trigger - Cast Mana Bomb Explosion',0,0,0,0);

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 10021 AND 10024;
INSERT INTO dbscripts_on_relay (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(10021,0,14,32783,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Remove Aura 32783',0,0,0,0),
(10021,0,36,0,0,0,0,0,0,0,0,0,2,'q.10446/10447 - Firewing Warlock - Set Facing to Mana Bomb Channel Trigger',0,0,0,0),
(10021,1,45,0,10004,0,0,0,0,0,0,0,2,'q.10446/10447 - Firewing Warlock - Start Relay Script (50% chance to sit)',0,0,0,0),
(10022,0,1,0,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Dummy Event (for randomization)',0,0,0,0),
(10023,0,28,1,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Set Stand State Sit',0,0,0,0),
(10024,0,36,1,0,0,0,0,0,0,0,0,0,'q.10446/10447 - Firewing Warlock - Reset Facing',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id BETWEEN 10004 AND 10006;
INSERT INTO dbscript_random_templates (id,type,target_id,chance) VALUES
(10004,1,10023,30),
(10004,1,10022,70), -- Dummy
(10005,0,2000001392,0),
(10005,0,2000001393,0),
(10005,0,2000001394,0),
(10005,0,2000001395,0),
(10006,0,2000001396,0),
(10006,0,2000001397,0),
(10006,0,2000001398,0),
(10006,0,2000001399,0),
(10006,0,2000001400,0),
(10006,0,2000001401,0);

DELETE FROM dbscript_string WHERE entry BETWEEN 2000001387 AND 2000001401;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001387, '5...', 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001388, '4...', 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001389, '3...', 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001390, '2...', 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001391, '1...', 0, 3, 0, 0, 'Mana Bomb Explosion Trigger (Entry: 20767)'),
(2000001392, 'The %s turns to face his impending doom.', 0, 2, 0, 0, '(Mana Bomb Explosion) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001393, 'Oh no!', 0, 0, 0, 0, '(Mana Bomb Explosion) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001394, 'The %s looks on in disbelief.', 0, 2, 0, 0, '(Mana Bomb Explosion) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001395, 'They set it off!', 0, 0, 0, 0, '(Mana Bomb Explosion) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001396, 'You won\'t escape alive!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001397, 'I will have your energy and then your life!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001398, 'For Kael\'thas!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001399, 'You know too much!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001400, 'They mustn\'t escape!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)'),
(2000001401, 'Kill them before they get away!', 0, 0, 0, 0, '(Aggro) Firewing Defender/Warlock/Bloodwarder (Entries: 5355/16769/1410)');
