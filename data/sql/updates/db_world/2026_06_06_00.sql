-- DB update 2026_06_05_00 -> 2026_06_06_00
-- Correct installations that previously applied AURA_CC to Stoneclaw Totem pulses.
INSERT INTO `spell_custom_attr` (`spell_id`, `attributes`) VALUES
(5729, 64),
(6393, 64),
(6394, 64),
(6395, 64),
(10423, 64),
(10424, 64),
(25512, 64),
(58586, 64),
(58587, 64),
(58588, 64)
ON DUPLICATE KEY UPDATE `attributes` = (`attributes` & ~32) | 64;
