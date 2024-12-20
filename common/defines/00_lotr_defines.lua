NDefines.NGame.START_DATE = "3018.1.1.12"
NDefines.NGame.END_DATE = "4018.1.1.1"
NDefines.NGame.HANDS_OFF_START_TAG = "RHD"

-- AI hire advisors behaviour
NDefines.NAI.HIGH_COMMAND_ADDED_WEIGHT_FACTOR = 0.5	-- Weight multiplier for high_command advisors over other chosen advisor or idea types
NDefines.NAI.CHIEF_ADDED_WEIGHT_FACTOR = 1.0			-- Weight multiplier for chief roles over other advisor or idea types
NDefines.NAI.ADVISOR_SCORE_CHEAPER_IS_BETTER_FACTOR = 0.5  -- When scoring advisors, this define scales how much the AI prefers cheaper advisors over more expensive ones. 0.0 means no effect, 0.15 means a cost difference of 100 PP modifies the score by 15 %.
NDefines.NAI.DESIGN_COMPANY_SCORE_MULTIPLIER = 1.25              -- score multiplier for hiring a design company
NDefines.NAI.ARMY_CHIEF_SCORE_MULTIPLIER = 0.75                  -- score multiplier for hiring an army chief
NDefines.NAI.AIR_CHIEF_SCORE_MULTIPLIER = 1.0                   -- score multiplier for hiring an air chief
NDefines.NAI.POLITICAL_ADVISOR_SCORE_MULTIPLIER = 1.25           -- score multiplier for hiring political advisors

-- Less civs required for agency
NDefines.NOperatives.AGENCY_CREATION_FACTORIES = 3					-- Number of factories used to create an intelligence agency

-- Advisor and general changes
NDefines.NCharacter.OFFICER_CORP_ADVISOR_ENTRIES_IN_MENU = { "high_command", "theorist", "army_chief", "cavalry_chief", "navy_chief" }
NDefines.NCharacter.OFFICER_CORP_HIGH_COMMAND_SLOTS_IN_MENU = 2 --For Alert manager to count the number of High Command Slots in the UI
NDefines.NCharacter.POLITICAL_ADVISOR_SLOTS_IN_MENU = 2 --For Alert manager to count the number of Political Advisor Slots in the UI
NDefines.NCharacter.DEFAULT_PP_COST_FOR_MILITARY_ADVISOR = 150	-- When an advisor does not have cost assigned this is the default used	
NDefines.NCharacter.SPECIALIST_ADVISOR_MIN_RANK = 3
NDefines.NCharacter.EXPERT_ADVISOR_MIN_RANK = 5
NDefines.NCharacter.GENIUS_ADVISOR_MIN_RANK = 7

-- lowered minimum land-unit speed
NDefines.NMilitary.SLOWEST_SPEED = 2

-- single fort = encampment. Castle = 7 forts
NDefines.NMilitary.BASE_FORT_PENALTY = -0.05

-- Airbase lower capacity
NDefines.NBuildings.AIRBASE_CAPACITY_MULT = 10

-- Max slots shared by factories
NDefines.NBuildings.MAX_SHARED_SLOTS = 26


-- Shore bombardment buff (this is 3x vanilla)
NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.75
NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.3  -- heavy gun attack value is divided by this value * 100 and added to shore bombardment modifier
NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.15 -- light gun attack value is divided by this value * 100 and added to shore bombardment modifier

-- Civilian factories per line lowered
NDefines.NProduction.MAX_CIV_FACTORIES_PER_LINE = 12

-- Tension related defines
NDefines.NDiplomacy.TENSION_NO_CB_WAR = 15							-- Amount of tension generated by a no-CB wargoal : base value 15
NDefines.NDiplomacy.TENSION_CB_WAR = 10								-- Amount of tension generated by a war with a CB : base value 7
NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "3018.1.1.12"	-- Starting at this date, the tension values will be scaled down (will be equal to 1 before that)

-- Better supply from motorization
NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 3.0

-- Lowering attrition damage
NDefines.NSupply.SUPPLY_THRESHOLD_FOR_ARMY_ATTRITION = 0.28        -- at 28% supply army starts to suffer attrition
NDefines.NMilitary.ATTRITION_DAMAGE_ORG = 0.07					   -- damage from attrition to Organisation
NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.05		   -- Chance for loosing equipment when suffer attrition. Scaled up the stronger attrition is. Then scaled down by equipment reliability.
NDefines.NMilitary.ATTRITION_EQUIPMENT_PER_TYPE_LOSS_CHANCE = 0.05 -- Chance for loosing equipment when suffer attrition. Scaled up the stronger attrition is. Then scaled down by equipment reliability.
NDefines.NMilitary.ATTRITION_WHILE_MOVING_FACTOR = 0.75

-- Base speed of manpower mobilization  #in 1/1000 of 1 %
NDefines.NCountry.BASE_MOBILIZATION_SPEED = 0.005

-- Increased XP gain from training air-wings (because we have so few planes)
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.15
NDefines.NAir.AIR_WING_XP_AIR_VS_AIR_COMBAT_GAIN = 8.0
NDefines.NAir.AIR_WING_XP_GROUND_MISSION_COMPLETED_GAIN = 2.8
NDefines.NAir.AIR_WING_XP_RECON_MISSION_COMPLETED_GAIN = 0.5
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 1000					-- Max stats
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 1000
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 1000
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 8000
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 1000
NDefines.NAir.AIR_WING_MAX_SIZE = 100 							-- Max amount of airplanes in wing
NDefines.NAir.AIR_WING_AVERAGE_SIZE = 10 						-- Eyeballed average amount of airplanes in wing. Used when calculating air volunteer.
NDefines.NAir.MANPOWER_LOSS_RATIO_PLANE_SHOT = 1.0
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_IMPACT = -0.6          -- effect on defense due to enemy air superiorty
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_DEFENSE = 0.80	       -- more AA attack will approach this amount of help (diminishing returns)
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_DEFENSE_STEEPNESS = 112 -- how quickly defense approaches the max impact diminishing returns curve
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_SPEED_IMPACT = -0.5     -- effect on speed due to enemy air superiority

-- Increased army XP from training units (slightly)
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.0025

-- AI template unit management related
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 5
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 2100
-- NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.03
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 0.45
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.3
NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 0.3                        -- Weight of military factories when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.7
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 28       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 1.5  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 3.0
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 0.2
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 8.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.8                             -- If no threat, multiply min wanted units by this
NDefines.NAI.WANTED_UNITS_THREAT_MAX = 3.0                             -- Normalized threat is clamped to this
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.15                       -- Factor threat with this if country is at war. this value is overriden by the value in ideology database if that value exceedes this.
NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.15              -- Factor if has dangerous neighbor

NDefines.NAI.WANTED_UNITS_MAX_WANTED_CAP = 300	-- Maximum wanted divisions for a country. This can be exceeded by certain hardcoded multipliers, but not by base calculation logic.
NDefines.NAI.AT_WAR_THREAT_FACTOR = 1.7					-- How much increase in threat does AI feel for being in war against someone
NDefines.NAI.NEIGHBOUR_WAR_THREAT_FACTOR = 1.30 		-- How much increase in threat does AI feel against neighbours who are at war
NDefines.NAI.NEUTRAL_THREAT_PARANOIA = 20				-- How scared neutrals are of everyone
NDefines.NAI.DIFFERENT_FACTION_THREAT = 25				-- Threat caused by not being in the same faction

-- Avoice Equipment over-abundance
NDefines.NProduction.CAPITULATE_STOCKPILES_RATIO = 0.07 -- How much equipment from deployed divisions will be transferred on capitulation

-- Division Designer
NDefines.NMilitary.MAX_DIVISION_BRIGADE_WIDTH = 6			-- Max width of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_HEIGHT = 4		-- Max height of regiments in division designer.
NDefines.NMilitary.MIN_DIVISION_BRIGADE_HEIGHT = 3		-- Min height of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 5			-- Max width of support in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_HEIGHT = 1		-- Max height of support in division designer.

-- Training divisions
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 3000	-- How many deployment lines minimum can be training
NDefines.NProduction.MIN_FIELD_TO_TRAINING_MANPOWER_RATIO = 0.5

-- Speed at which scientists give spell points
NDefines.NProject.BREAKTHROUGH_DAILY_SCIENTIST_SKILL_GAIN = 8

-- Food consumption etc.
NDefines.NMilitary.ARMY_IDLE_FUEL_MULT = 0.05						-- fuel consumption ratio while just existing

-- Resistance
NDefines.NResistance.RESISTANCE_ACTIVITY_CHANCE_AT_MAX_RESISTANCE = 0.08 -- was 0.312
NDefines.NResistance.RESISTANCE_ACTIVITY_MIN_GARRISON_PENETRATE_CHANCE = 0.04 -- was 0.02
NDefines.NResistance.GARRISON_MANPOWER_REINFORCEMENT_SPEED = 300.0	-- Modifier for garrison manpower reinforcement.  This value is the maximum to be delivered which is then modified by distance, was 2000

NDefines.NResistance.RESISTANCE_POP_LOW_CUTOFF = 5000 -- was 10000
NDefines.NResistance.RESISTANCE_POP_VERY_LOW_CUTOFF = 500 -- was 1000

NDefines.NResistance.GARRISON_MANPOWER_LOST_BY_ATTACK = 0.009 	-- Ratio of manpower lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)
NDefines.NResistance.GARRISON_EQUIPMENT_LOST_BY_ATTACK = 0.013 	-- Ratio of equipment lost by garrison at each attack on garrison (this number will be reduced by the hardness of garrison template)
NDefines.NResistance.MAXIMUM_GARRISON_HARDNESS_WHEN_ATTACKED = 0.95   -- Cap to be sure that garrison will suffer lost in attack, even with a almost 100% hardness

NDefines.NResistance.FOREIGN_MANPOWER_MIN_THRESHOLD = 1000 -- was 5k

NDefines.NResistance.GARRISON_STR_POW_MANPOWER = 1.8 -- was 2
NDefines.NResistance.GARRISON_STR_POW_EQUIPMENT = 2 -- was 3

NDefines.NResistance.MIN_DAMAGE_TO_GARRISONS_MODIFIER = 0.05 -- was 0.1