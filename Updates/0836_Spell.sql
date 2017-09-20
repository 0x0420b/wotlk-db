-- Added missing target positions for spells used in Ragnaros encounter for Lava Burst
DELETE FROM spell_target_position WHERE id IN (21886, 21900, 21901, 21902, 21903, 21904, 21905, 21906, 21907);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(21886, 409, 906.695, -828.611, -229.928, 0),
(21900, 409, 843.509, -798.313, -229.432, 0),
(21901, 409, 892.633, -790.41, -228.928, 0),
(21902, 409, 871.54, -839.115, -228.992, 0),
(21903, 409, 827.276, -874.028, -229.594, 0),
(21904, 409, 862.862, -866.955, -228.943, 0),
(21905, 409, 811.001, -822.282, -229.311, 0),
(21906, 409, 819.757, -807.176, -229.033, 0),
(21907, 409, 864.573, -806.463, -229.786, 0);

-- Added missing target positions for spells used in Ragnaros encounter for Son of Flame summoning
DELETE FROM spell_target_position WHERE id  BETWEEN 21110 AND 21117;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(21110, 409, 811.448, -814.058, -233.177, 0),
(21111, 409, 842.542, -797.822, -233.34, 0),
(21112, 409, 870.668, -821.862, -232.938, 0),
(21113, 409, 874.851, -861.112, -232.336, 0),
(21114, 409, 891.442, -789.678, -232.801, 0),
(21115, 409, 824.827, -871.046, -232.421, 0),
(21116, 409, 818.517, -898.278, -232.903, 0),
(21117, 409, 868.206, -895.036, -233.1, 0);
