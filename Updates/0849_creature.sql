-- Bleeding Horror & Rotting Ancestor
UPDATE creature_template SET SpeedWalk = 1 WHERE Entry IN (1529, 1530);
UPDATE creature_template_addon SET auras = 3235 WHERE entry IN (1529, 1530);
