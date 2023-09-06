effects_content_string = """




########################
### Effects: $NAME$
########################


ea_$NAME$_passed_effect = {
	if = {
		limit = { has_idea = ea_resolution_$NAME$_idea_1 }
		swap_ideas = { remove_idea = ea_resolution_$NAME$_idea_1 add_idea = ea_resolution_$NAME$_idea_2 }
		set_global_flag = { flag = ea_resolution_$NAME$_passed value = 2 }
	}
	else_if = {
		limit = { has_idea = ea_resolution_alliance_idea_2 }
		swap_ideas = { remove_idea = ea_resolution_alliance_idea_2 add_idea = ea_resolution_alliance_idea_3 }
		set_global_flag = { flag = ea_resolution_$NAME$_passed value = 3 }
	}
	else = {
		add_ideas = ea_resolution_alliance_idea_1
		set_global_flag = { flag = ea_resolution_$NAME$_passed value = 1 }
	}
}

ea_$NAME$_add_to_new_member = {
	if = {
		limit = { has_global_flag = ea_resolution_$NAME$_passed }

		if = {
			limit = { has_global_flag = { flag = ea_resolution_$NAME$_passed value = 1 } }
			add_ideas = ea_resolution_$NAME$_idea_1
		}
		else_if = {
			limit = { has_global_flag = { flag = ea_resolution_$NAME$_passed value = 2 } }
			add_ideas = ea_resolution_$NAME$_idea_2
		}
		else_if = {
			limit = { has_global_flag = { flag = ea_resolution_$NAME$_passed value = 3 } }
			add_ideas = ea_resolution_$NAME$_idea_3
		}
	}
}

ea_$NAME$_add_to_queue = {
	add_to_array = { global.ea_proposers_queue = ROOT }
	add_to_array = { global.ea_resolutions_queue = token:ea_resolution_$NAME$ }

	custom_effect_tooltip = ea_propose_resolution_tt
	effect_tooltip = { ea_resolution_$NAME$_effect = yes }
}
"""



triggers_content_string = """




########################
### Triggers: $NAME$
########################


ea_$NAME$_unlocked = {
    has_global_flag = ea_$NAME$_resolutions_unlocked
}

ea_$NAME$_can_be_passed = {
	custom_trigger_tooltip = {
		tooltip = ea_resolution_unlocked_tt
		OR = {
			has_global_flag = { flag = ea_resolution_$NAME$_passed value < 2 }
			AND = {
				has_global_flag = { flag = ea_resolution_$NAME$_passed value < 3 }
				has_global_flag = ea_$NAME$_advanced_resolutions_unlocked
			}
		}
	}
	custom_trigger_tooltip = {
		tooltip = ea_resolution_is_in_queue_tt		
		NOT = { is_in_array = { global.ea_resolutions_queue = token:ea_resolution_$NAME$ } }
	}
	custom_trigger_tooltip = {
		tooltip = ea_already_passing_resolution_tt		
		NOT = { is_in_array = { global.ea_proposers_queue = ROOT } }
	}
}
"""


decisions_content_string = """

	# Propose resolution: $NAME$
	propose_ea_resolution_$NAME$ = {
        icon = GFX_decision_generic_naval
		cost = elven_alliance_proposal_cost?25

        available = {
            NOT = { has_global_flag = ea_assembly_in_recess }
        }
		visible = {
			NOT = { has_global_flag = ea_vote_in_progress }
			ea_industry_$NAME$ = yes
			ea_$NAME$_can_be_passed = yes
		}

		ai_will_do = {
			factor = 0
		}

		fire_only_once = no

		complete_effect = {
			propose_ea_resolution_$NAME$ = yes
		}
	}
"""



name_list = { "alliance", "industry", "expansion", "trade", "peace", "research", "hegemony", "martial", "union" }

print("# This file was generated by _generate_ea_resolutions.py")

for name in name_list:
    print(effects_content_string.replace("$NAME$", name))

for name in name_list:
    print(triggers_content_string.replace("$NAME$", name))

for name in name_list:
    print(decisions_content_string.replace("$NAME$", name))