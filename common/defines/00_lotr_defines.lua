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

-- increased fort penalty (because they're castles now)
NDefines.NMilitary.BASE_FORT_PENALTY = -0.4

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
NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.07		   -- Chance for loosing equipment when suffer attrition. Scaled up the stronger attrition is. Then scaled down by equipment reliability.
NDefines.NMilitary.ATTRITION_EQUIPMENT_PER_TYPE_LOSS_CHANCE = 0.07 -- Chance for loosing equipment when suffer attrition. Scaled up the stronger attrition is. Then scaled down by equipment reliability.
NDefines.NMilitary.ATTRITION_WHILE_MOVING_FACTOR = 0.8

-- Base speed of manpower mobilization  #in 1/1000 of 1 %
NDefines.NCountry.BASE_MOBILIZATION_SPEED = 0.005

-- Increased XP gain from training air-wings (because we have so few planes)
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.15
NDefines.NAir.AIR_WING_XP_AIR_VS_AIR_COMBAT_GAIN = 8.0
NDefines.NAir.AIR_WING_XP_GROUND_MISSION_COMPLETED_GAIN = 2.8
NDefines.NAir.AIR_WING_XP_RECON_MISSION_COMPLETED_GAIN = 0.5

-- Increased army XP from training units (slightly)
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.0025

-- AI template unit management related
NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 5
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 2100
-- NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.03
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 0.4
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.3
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.6
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 28       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 1.5,  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 3.0
NDefines.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 0.2
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 5.0    -- How quickly is desire to update/create templates accumulated?
