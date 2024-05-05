----------------------------------------------
-- Sound
----------------------------------------------
UPDATE UnitPromotions SET Sound = 'AS2D_IF_LEVELUP';

----------------------------------------------
-- Available UnitCombat
----------------------------------------------
CREATE TEMP TABLE PromotionClass_UnitCombats (
	PromotionClass TEXT,
	UnitCombatType TEXT
);

INSERT INTO PromotionClass_UnitCombats
VALUES
	-- Land Melee tree
	('SHOCK', 'UNITCOMBAT_MELEE'),
	('SHOCK', 'UNITCOMBAT_GUN'),
	('SHOCK', 'UNITCOMBAT_MOUNTED'),
	('SHOCK', 'UNITCOMBAT_ARMOR'),
	('DRILL', 'UNITCOMBAT_MELEE'),
	('DRILL', 'UNITCOMBAT_GUN'),
	('DRILL', 'UNITCOMBAT_MOUNTED'),
	('DRILL', 'UNITCOMBAT_ARMOR'),
	('FORMATION', 'UNITCOMBAT_MELEE'),
	('FORMATION', 'UNITCOMBAT_GUN'),
	('FORMATION', 'UNITCOMBAT_MOUNTED'),
	('FORMATION', 'UNITCOMBAT_ARMOR'),
	('COVER', 'UNITCOMBAT_MELEE'),
	('COVER', 'UNITCOMBAT_GUN'),
	('AMBUSH', 'UNITCOMBAT_MELEE'),
	('AMBUSH', 'UNITCOMBAT_GUN'),
	('MEDIC', 'UNITCOMBAT_MELEE'),
	('MEDIC', 'UNITCOMBAT_GUN'),
	('MEDIC', 'UNITCOMBAT_MOUNTED'),
	('CHARGE', 'UNITCOMBAT_MOUNTED'),
	('CHARGE', 'UNITCOMBAT_ARMOR'),
	('AIR_DEFENSE', 'UNITCOMBAT_GUN'),
	-- Land Ranged tree
	('BARRAGE', 'UNITCOMBAT_ARCHER'),
	('ACCURACY', 'UNITCOMBAT_ARCHER'),
	('MEDIC', 'UNITCOMBAT_ARCHER'),
	('COVER', 'UNITCOMBAT_ARCHER'),
	('AIR_DEFENSE', 'UNITCOMBAT_ARCHER'),
	('TANK_HUNTER', 'UNITCOMBAT_ARCHER'),
	('HELI_MOBILITY', 'UNITCOMBAT_ARCHER'),
	-- Siege tree
	('SIEGE', 'UNITCOMBAT_SIEGE'),
	('FIELD', 'UNITCOMBAT_SIEGE'),
	('COVER', 'UNITCOMBAT_SIEGE'),
	('SPLASH', 'UNITCOMBAT_SIEGE'),
	-- Recon tree
	('SURVIVALISM', 'UNITCOMBAT_RECON'),
	('TRAILBLAZER', 'UNITCOMBAT_RECON'),
	('SCOUTING', 'UNITCOMBAT_RECON'),
	('MEDIC', 'UNITCOMBAT_RECON'),
	-- Naval Melee tree
	('HULL', 'UNITCOMBAT_NAVALMELEE'),
	('BOARDING_PARTY', 'UNITCOMBAT_NAVALMELEE'),
	('NAVIGATOR', 'UNITCOMBAT_NAVALMELEE'),
	('COVER', 'UNITCOMBAT_NAVALMELEE'),
	('MEDIC', 'UNITCOMBAT_NAVALMELEE'),
	('AIR_DEFENSE', 'UNITCOMBAT_NAVALMELEE'),
	-- Naval Ranged tree
	('TARGETING', 'UNITCOMBAT_NAVALRANGED'),
	('BOMBARDMENT', 'UNITCOMBAT_NAVALRANGED'),
	('AIR_DEFENSE', 'UNITCOMBAT_NAVALRANGED'),
	-- Submarine tree
	('TORPEDO', 'UNITCOMBAT_SUBMARINE'),
	('NAVIGATOR', 'UNITCOMBAT_SUBMARINE'),
	-- Carrier tree
	('FLIGHT_DECK', 'UNITCOMBAT_CARRIER'),
	('ARMOR_PLATING', 'UNITCOMBAT_CARRIER'),
	-- Fighter tree
	('ACE_PILOT', 'UNITCOMBAT_FIGHTER'),
	('DOGFIGHTING', 'UNITCOMBAT_FIGHTER'),
	('AIR_SUPREMACY', 'UNITCOMBAT_FIGHTER'),
	-- Bomber tree
	('AIR_SIEGE', 'UNITCOMBAT_BOMBER'),
	('AIR_TARGETING', 'UNITCOMBAT_BOMBER'),
	('AIR_AMBUSH', 'UNITCOMBAT_BOMBER'),
	('AIR_PENETRATION', 'UNITCOMBAT_BOMBER'),
	-- Others
	('INTERCEPTOR', 'UNITCOMBAT_GUN'),
	('INTERCEPTOR', 'UNITCOMBAT_NAVALMELEE'),
	('INTERCEPTOR', 'UNITCOMBAT_CARRIER'),
	('BUFFALO', 'UNITCOMBAT_MELEE'),
	('BUFFALO', 'UNITCOMBAT_GUN'),
	('FALLOUT_RESISTANCE', 'UNITCOMBAT_WORKER'),
	('DIPLO_BOOST', 'UNITCOMBAT_DIPLOMACY');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	a.Type, b.UnitCombatType
FROM UnitPromotions a, PromotionClass_UnitCombats b
WHERE a.RankList = b.PromotionClass;

DROP TABLE PromotionClass_UnitCombats;

-- Standalone pickable promotions
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	-- Land Melee tree
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_MELEE'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_GUN'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_MELEE'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_GUN'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_MARCH', 'UNITCOMBAT_MELEE'),
	('PROMOTION_MARCH', 'UNITCOMBAT_GUN'),
	('PROMOTION_MARCH', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_MARCH', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_BLITZ', 'UNITCOMBAT_MELEE'),
	('PROMOTION_BLITZ', 'UNITCOMBAT_GUN'),
	('PROMOTION_BLITZ', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_BLITZ', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_MELEE'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_GUN'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_AMPHIBIOUS', 'UNITCOMBAT_MELEE'),
	('PROMOTION_AMPHIBIOUS', 'UNITCOMBAT_GUN'),
	('PROMOTION_WOODSMAN', 'UNITCOMBAT_MELEE'),
	('PROMOTION_WOODSMAN', 'UNITCOMBAT_GUN'),
	('PROMOTION_SIEGE', 'UNITCOMBAT_MELEE'),
	('PROMOTION_SIEGE', 'UNITCOMBAT_GUN'),
	('PROMOTION_SENTRY', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_SENTRY', 'UNITCOMBAT_ARMOR'),
	-- Land Ranged tree
	('PROMOTION_BARRAGE_4', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_ACCURACY_4', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_RANGE', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_LOGISTICS', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SKIRMISHER_MOBILITY', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SKIRMISHER_POWER', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SKIRMISHER_MARCH', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SKIRMISHER_SENTRY', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_ENVELOPMENT', 'UNITCOMBAT_ARCHER'),
	-- Siege tree
	('PROMOTION_VOLLEY', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_RANGE', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_LOGISTICS', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_BARRAGE_4', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_ACCURACY_4', 'UNITCOMBAT_SIEGE'),
	-- Recon tree
	('PROMOTION_FROGMAN', 'UNITCOMBAT_RECON'),
	('PROMOTION_SCREENING', 'UNITCOMBAT_RECON'),
	-- Naval Melee tree
	('PROMOTION_COASTAL_RAIDER_4', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_BOARDING_PARTY_4', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_BREACHER', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_NAVAL_SIEGE', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_PRESS_GANGS', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_PIRACY', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_ENCIRCLEMENT', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_MINELAYER', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_COASTAL_TERROR', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_DAMAGE_REDUCTION', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_SUPPLY', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_BLITZ', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_SEE_INVISIBLE_SUBMARINE', 'UNITCOMBAT_NAVALMELEE'),
	-- Naval Ranged tree
	('PROMOTION_TARGETING_4', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_BOMBARDMENT_4', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_BETTER_BOMBARDMENT', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_SPLASH_1', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_SENTRY', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_SUPPLY', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_LOGISTICS', 'UNITCOMBAT_NAVALRANGED'),
	-- Submarine tree
	('PROMOTION_TARGETING_4', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_ACCURACY_4', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_SUPPLY', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_PRESS_GANGS', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_HUNTER_KILLER', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_TRUE_WOLFPACK', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_PREDATOR', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_PERISCOPE_DEPTH', 'UNITCOMBAT_SUBMARINE'),
	-- Carrier tree
	('PROMOTION_SENTRY', 'UNITCOMBAT_CARRIER'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_CARRIER'),
	('PROMOTION_SUPPLY', 'UNITCOMBAT_CARRIER'),
	-- Fighter tree
	('PROMOTION_ANTI_FIGHTER', 'UNITCOMBAT_FIGHTER'),
	('PROMOTION_AERIAL_TORPEDO', 'UNITCOMBAT_FIGHTER'),
	('PROMOTION_BOMB_RACK', 'UNITCOMBAT_FIGHTER'),
	('PROMOTION_AIR_REPAIR', 'UNITCOMBAT_FIGHTER'),
	('PROMOTION_AIR_RANGE', 'UNITCOMBAT_FIGHTER'),
	-- Bomber tree
	('PROMOTION_EVASION', 'UNITCOMBAT_BOMBER'),
	('PROMOTION_AIR_LOGISTICS', 'UNITCOMBAT_BOMBER'),
	('PROMOTION_AIR_RANGE', 'UNITCOMBAT_BOMBER');

-- Global promotions from buildings
-- Great Lighthouse
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_NAVIGATOR_2', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_NAVIGATOR_2', 'UNITCOMBAT_CARRIER');

-- Himeji Castle
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_HIMEJI_CASTLE', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1;

-- Statue of Zeus
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_STATUE_ZEUS', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 OR Type = 'UNITCOMBAT_WORKER';

-- Alhambra
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_ALHAMBRA', 'UNITCOMBAT_MOUNTED');

-- Arsenale di Venezia
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_ARSENALE', Type
FROM UnitCombatInfos
WHERE IsNaval = 1;

-- Grand Canal
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_TREASURE_FLEET', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_TREASURE_FLEET', 'UNITCOMBAT_NAVALRANGED');

-- Local promotions from buildings
-- Heroic Epic/Order
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_MORALE', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsNaval = 0 AND IsAerial = 0;

-- Dojo
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_MELEE'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_GUN'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_ARMOR');

-- Promotions from policies
-- Progress
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_FASTER_WORKER', 'UNITCOMBAT_WORKER');

-- Authority
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_HONOR_BONUS', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1;

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_KILL_HEAL', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsRanged = 0;

-- Imperialism
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_NAVAL_TRADITION', Type
FROM UnitCombatInfos
WHERE IsNaval = 1;

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_IMPERIALISM_OPENER', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsRanged = 0 AND IsAerial = 0;

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
SELECT
	'PROMOTION_FASTER_GENERAL', Type
FROM Units
WHERE Class = 'UNITCLASS_GREAT_GENERAL';

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
SELECT
	'PROMOTION_BETTER_LEADERSHIP', Type
FROM Units
WHERE Class IN ('UNITCLASS_GREAT_GENERAL', 'UNITCLASS_GREAT_ADMIRAL');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_NAVAL_DEFENSE_BOOST', Type
FROM UnitCombatInfos
WHERE IsNaval = 1 OR IsAerial = 1;

-- Order
DELETE FROM UnitPromotions_UnitCombats
WHERE PromotionType = 'PROMOTION_NATIONALISM';

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_NATIONALISM', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsNaval = 0 AND IsAerial = 0;

-- Autocracy
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_LIGHTNING_WARFARE_GUN', 'UNITCOMBAT_GUN'),
	('PROMOTION_LIGHTNING_WARFARE_ARMOR', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_MARE_NOSTRUM', 'UNITCOMBAT_NAVALRANGED');

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
SELECT
	'PROMOTION_FAST_GENERAL', Type
FROM Units
WHERE Class = 'UNITCLASS_GREAT_GENERAL';

-- Promotions from technologies
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_ICE_BREAKERS', 'UNITCOMBAT_WORKER'),
	('PROMOTION_ICE_BREAKERS', 'UNITCOMBAT_WORKBOAT');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	a.Type, b.Type
FROM UnitPromotions a, UnitCombatInfos b
WHERE b.IsMilitary = 1 AND b.IsNaval = 0 AND b.IsAerial = 0 -- Civilians handled in DLL
AND a.Type IN (
	'PROMOTION_EMBARKATION',
	'PROMOTION_ALLWATER_EMBARKATION'
);

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
SELECT
	'PROMOTION_ICE_BREAKERS', Type
FROM Units
WHERE Class = 'UNITCLASS_ARCHAEOLOGIST';

-- Promotions from Natural Wonders
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_EVERLASTING_YOUTH', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsRanged = 0 AND IsNaval = 0 AND IsAerial = 0;

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_ALTITUDE_TRAINING', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1 AND IsNaval = 0 AND IsAerial = 0;

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_SACRED_STEPS', 'UNITCOMBAT_WORKER'),
	('PROMOTION_SACRED_STEPS', 'UNITCOMBAT_WORKBOAT'),
	('PROMOTION_SACRED_STEPS', 'UNITCOMBAT_MISSIONARY'),
	('PROMOTION_SACRED_STEPS', 'UNITCOMBAT_INQUISITOR'),
	('PROMOTION_SACRED_STEPS', 'UNITCOMBAT_SETTLER');

-- Promotions from events
INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	'PROMOTION_MORALE_EVENT', Type
FROM UnitCombatInfos
WHERE IsMilitary = 1;

-- Barbarian promotions
CREATE TEMP TABLE BarbarianPromotions (PromotionType TEXT);

INSERT INTO BarbarianPromotions
VALUES
	('PROMOTION_MARSH_WALKER'),
	('PROMOTION_WHITE_WALKER'),
	('PROMOTION_WOODS_WALKER'),
	('PROMOTION_DESERT_WALKER'),
	('PROMOTION_HILL_WALKER');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
SELECT
	b.PromotionType, a.Type
FROM UnitCombatInfos a, BarbarianPromotions b
WHERE a.IsMilitary = 1 AND a.IsNaval = 0 AND a.IsAerial = 0;

DROP TABLE BarbarianPromotions;

----------------------------------------------
-- CannotBeChosen, LostWithUpgrade
----------------------------------------------

-- Default
UPDATE UnitPromotions SET CannotBeChosen = 0, LostWithUpgrade = 0;

UPDATE UnitPromotions
SET LostWithUpgrade = 1
WHERE Type IN (
	'PROMOTION_DEFENSIVE_EMBARKATION',
	'PROMOTION_ANTI_MOUNTED_I',
	'PROMOTION_CITY_SIEGE',
	'PROMOTION_CITY_ASSAULT',
	'PROMOTION_CITY_PENALTY',
	'PROMOTION_SMALL_CITY_PENALTY',
	'PROMOTION_BIG_CITY_PENALTY',
	'PROMOTION_OCEAN_IMPASSABLE_UNTIL_ASTRONOMY',
	'PROMOTION_OCEAN_IMPASSABLE',
	'PROMOTION_HOVERING_UNIT',
	'PROMOTION_ONLY_DEFENSIVE',
	'PROMOTION_NO_DEFENSIVE_BONUSES',
	'PROMOTION_MUST_SET_UP',
	'PROMOTION_RANGED_SUPPORT_FIRE',
	'PROMOTION_COMMANDO',
	'PROMOTION_SELL_EXOTIC_GOODS',
	'PROMOTION_FEARED_ELEPHANT',
	'PROMOTION_ONLY_ATTACKS_CITIES',
	'PROMOTION_NAVAL_MISFIRE',
	'PROMOTION_SIEGE_INACCURACY',
	'PROMOTION_COVERING_FIRE_1',
	'PROMOTION_COVERING_FIRE_2',
	'PROMOTION_CAN_MOVE_AFTER_ATTACKING',
	'PROMOTION_BARBARIAN_BONUS',
	'PROMOTION_NAVAL_INACCURACY',
	'PROMOTION_OCEAN_HALF_MOVES',
	'PROMOTION_ANTI_SUBMARINE_I',
	'PROMOTION_ANTI_SUBMARINE_II',
	'PROMOTION_CONSCRIPT',
	'PROMOTION_INVISIBLE_SUBMARINE',
	'PROMOTION_FIELD_WORKS_0',
	'PROMOTION_FIELD_WORKS_1',
	'PROMOTION_FIELD_WORKS_2',
	'PROMOTION_FIELD_WORKS_3',
	'PROMOTION_ROUGH_TERRAIN_HALF_TURN',
	'PROMOTION_SKIRMISHER_DOCTRINE',
	'PROMOTION_ALHAMBRA',
	'PROMOTION_MECH',
	'PROMOTION_SCOUT_XP_PILLAGE',
	'PROMOTION_AIR_SWEEP',
	'PROMOTION_AIR_MISFIRE',
	'PROMOTION_AIR_RECON',
	'PROMOTION_RECON_RANGE_1',
	'PROMOTION_RECON_RANGE_2',
	'PROMOTION_CARGO_I',
	'PROMOTION_CARGO_II',
	'PROMOTION_CARGO_III',
	'PROMOTION_CARGO_IV',
	'PROMOTION_EMISSARY',
	'PROMOTION_ENVOY',
	'PROMOTION_DIPLOMAT',
	'PROMOTION_AMBASSADOR',
	'PROMOTION_GREAT_GENERAL',
	'PROMOTION_GREAT_ADMIRAL',
	'PROMOTION_GREAT_DIPLOMAT',
	'PROMOTION_STEALTH',
	'PROMOTION_ANTI_HELICOPTER',
	'PROMOTION_ANTI_TANK',
	'PROMOTION_NUCLEAR_SILO',
	'PROMOTION_PARADROP',
	'PROMOTION_EXTENDED_PARADROP',
	'PROMOTION_UNWELCOME_EVANGELIST',
	'PROMOTION_SUPPLY_BOOST',
	-- Exists in base game but unused in VP
	'PROMOTION_SIGHT_PENALTY',
	'PROMOTION_EXTRA_SIGHT_I',
	'PROMOTION_EXTRA_SIGHT_II',
	'PROMOTION_EXTRA_SIGHT_III',
	'PROMOTION_EXTRA_SIGHT_IV',
	'PROMOTION_ANTI_MOUNTED_II',
	'PROMOTION_CITY_SIEGE_II',
	'PROMOTION_DEFENSE_PENALTY',
	'PROMOTION_MOUNTED_PENALTY',
	'PROMOTION_ROUGH_TERRAIN_ENDS_TURN',
	'PROMOTION_ANTI_GUNPOWDER',
	'PROMOTION_NAVAL_BONUS',
	'PROMOTION_STEAM_POWERED'
);

-- Lost with upgrade promotions can never be chosen (or it'll feel really bad)
UPDATE UnitPromotions
SET CannotBeChosen = 1
WHERE LostWithUpgrade = 1
-- Only as free promotions
OR NOT EXISTS (SELECT 1 FROM UnitPromotions_UnitCombats WHERE PromotionType = Type)
-- Others
OR RankList IN (
	'EMBARKATION',
	'AUTHORITY',
	'IMPERIALISM'
)
OR Type IN (
	'PROMOTION_MORALE', -- Heroic Epic, Order
	'PROMOTION_HIMEJI_CASTLE', -- Himeji Castle
	'PROMOTION_STATUE_ZEUS', -- Statue of Zeus
	'PROMOTION_BUSHIDO', -- Dojo
	'PROMOTION_IKLWA', -- Ikanda
	'PROMOTION_ARSENALE', -- Arsenale di Venezia
	'PROMOTION_TREASURE_FLEET', -- Grand Canal
	'PROMOTION_EVERLASTING_YOUTH', -- Fountain of Youth
	'PROMOTION_ALTITUDE_TRAINING', -- Mt. Kilimanjaro
	'PROMOTION_SACRED_STEPS', -- Sri Pada
	'PROMOTION_FASTER_WORKER', -- Organization
	'PROMOTION_NATIONALISM', -- Patriotic War
	'PROMOTION_LIGHTNING_WARFARE_GUN', -- Lightning Warfare
	'PROMOTION_LIGHTNING_WARFARE_ARMOR', -- Lightning Warfare
	'PROMOTION_MARE_NOSTRUM', -- Mare Nostrum
	'PROMOTION_ICE_BREAKERS', -- Ballistics
	'PROMOTION_FALLOUT_REDUCTION', -- Penicilin
	'PROMOTION_FALLOUT_IMMUNITY', -- Nanotechnology
	'PROMOTION_MORALE_EVENT', -- Event
	-- Barbarians
	'PROMOTION_MARSH_WALKER',
	'PROMOTION_WHITE_WALKER',
	'PROMOTION_WOODS_WALKER',
	'PROMOTION_DESERT_WALKER',
	'PROMOTION_HILL_WALKER'
);
