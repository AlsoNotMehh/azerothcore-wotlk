-- DB update 2026_05_31_01 -> 2026_06_05_00
-- Patch 3.2.2: Stoneclaw Totem pulses no longer break stealth.
-- Keep every rank consistent with rank 1: AURA_CC | DONT_BREAK_STEALTH.
INSERT INTO `spell_custom_attr` (`spell_id`, `attributes`) VALUES
(5729, 96),
(6393, 96),
(6394, 96),
(6395, 96),
(10423, 96),
(10424, 96),
(25512, 96),
(58586, 96),
(58587, 96),
(58588, 96)
ON DUPLICATE KEY UPDATE `attributes` = `attributes` | 96;
