// Station voidsuits

//Engineering
/obj/item/clothing/head/helmet/space/void/engineering
	name = "engineering voidsuit helmet"
	desc = "A sturdy looking voidsuit helmet rated to protect against radiation."
	icon_state = "rig0-engineering"
	item_state = "eng_helm"
	item_state_slots = list(
		slot_l_hand_str = "eng_helm",
		slot_r_hand_str = "eng_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	siemens_coefficient = 0.3

/obj/item/clothing/suit/space/void/engineering
	name = "engineering voidsuit"
	desc = "A run-of-the-mill service voidsuit with all the plating and radiation protection required for industrial work in vacuum."
	icon_state = "rig-engineering"
	item_state_slots = list(
		slot_l_hand_str = "eng_voidsuit",
		slot_r_hand_str = "eng_voidsuit",
	)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	siemens_coefficient = 0.3
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/device/t_scanner,/obj/item/rcd,/obj/item/rpd)

/obj/item/clothing/suit/space/void/engineering/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/space/void/engineering/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	boots = /obj/item/clothing/shoes/magboots

//Mining
/obj/item/clothing/head/helmet/space/void/mining
	name = "mining voidsuit helmet"
	desc = "A scuffed voidsuit helmet with a boosted communication system and reinforced armor plating."
	icon_state = "rig0-mining"
	item_state = "mining_helm"
	item_state_slots = list(
		slot_l_hand_str = "mining_helm",
		slot_r_hand_str = "mining_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	light_overlay = "helmet_light_dual_alt"
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE

/obj/item/clothing/suit/space/void/mining
	icon_state = "rig-mining"
	name = "mining voidsuit"
	desc = "A grimy, decently armored voidsuit with purple blazes and extra insulation."
	item_state_slots = list(
		slot_l_hand_str = "mining_voidsuit",
		slot_r_hand_str = "mining_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/stack/flag,/obj/item/device/suit_cooling_unit,/obj/item/storage/ore,/obj/item/device/t_scanner,/obj/item/pickaxe, /obj/item/rcd,/obj/item/rpd)

/obj/item/clothing/suit/space/void/mining/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/mining
	boots = /obj/item/clothing/shoes/magboots

//Medical
/obj/item/clothing/head/helmet/space/void/medical
	name = "medical voidsuit helmet"
	desc = "A bulbous voidsuit helmet with minor radiation shielding and a massive visor."
	icon_state = "rig0-medical"
	item_state = "medical_helm"
	item_state_slots = list(
		slot_l_hand_str = "medical_helm",
		slot_r_hand_str = "medical_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

/obj/item/clothing/suit/space/void/medical
	icon_state = "rig-medical"
	name = "medical voidsuit"
	desc = "A sterile voidsuit with minor radiation shielding and a suite of self-cleaning technology. Standard issue in most orbital medical facilities."
	item_state_slots = list(
		slot_l_hand_str = "medical_voidsuit",
		slot_r_hand_str = "medical_voidsuit",
	)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/firstaid,/obj/item/device/scanner/health,/obj/item/stack/medical)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

/obj/item/clothing/suit/space/void/medical/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/medical
	boots = /obj/item/clothing/shoes/magboots

//Security
/obj/item/clothing/head/helmet/space/void/security
	name = "security voidsuit helmet"
	desc = "A comfortable voidsuit helmet with cranial armor and eight-channel surround sound."
	icon_state = "rig0-sec"
	item_state = "sec_helm"
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	siemens_coefficient = 0.3
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/security
	icon_state = "rig-sec"
	name = "security voidsuit"
	desc = "A somewhat clumsy voidsuit layered with impact and laser-resistant armor plating. Specially designed to dissipate minor electrical charges."
	item_state_slots = list(
		slot_l_hand_str = "sec_voidsuit",
		slot_r_hand_str = "sec_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR
		)
	allowed = list(/obj/item/gun,/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/melee/baton)
	siemens_coefficient = 0.3

/obj/item/clothing/suit/space/void/security/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/security
	boots = /obj/item/clothing/shoes/magboots

//Atmospherics
/obj/item/clothing/head/helmet/space/void/atmos
	desc = "A flame-retardant voidsuit helmet with a self-repairing visor and light anti-radiation shielding."
	name = "atmospherics voidsuit helmet"
	icon_state = "rig0-atmos"
	item_state = "atmos_helm"
	item_state_slots = list(
		slot_l_hand_str = "atmos_helm",
		slot_r_hand_str = "atmos_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	light_overlay = "helmet_light_dual"
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

/obj/item/clothing/suit/space/void/atmos
	desc = "A durable voidsuit with advanced temperature-regulation systems as well as minor radiation protection. Well worth the price."
	icon_state = "rig-atmos"
	name = "atmos voidsuit"
	item_state_slots = list(
		slot_l_hand_str = "atmos_voidsuit",
		slot_r_hand_str = "atmos_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/device/t_scanner,/obj/item/rcd,/obj/item/rpd)

/obj/item/clothing/suit/space/void/atmos/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/atmos
	boots = /obj/item/clothing/shoes/magboots

//Surplus Voidsuits

//Engineering
/obj/item/clothing/head/helmet/space/void/engineering/alt
	name = "reinforced engineering voidsuit helmet"
	desc = "A heavy, radiation-shielded voidsuit helmet with a surprisingly comfortable interior."
//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/helmet.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/helmet.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_head_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi',
		)
//[/INF]
	icon_state = "rig0-engineeringalt"
	item_state = "engalt_helm"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/engineering/alt
	name = "reinforced engineering voidsuit"
	desc = "A bulky industrial voidsuit. It's a few generations old, but a reliable design and radiation shielding make up for the lack of climate control."
//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/suit.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/suit.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_suit_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_suit_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_suit_skrell.dmi',
		)
//[/INF]
	icon_state = "rig-engineeringalt"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

/obj/item/clothing/suit/space/void/engineering/alt/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 2

/obj/item/clothing/suit/space/void/engineering/alt/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/alt
	boots = /obj/item/clothing/shoes/magboots

//Mining
/obj/item/clothing/head/helmet/space/void/mining/alt
	name = "frontier mining voidsuit helmet"
	desc = "An armored voidsuit helmet. Someone must have through they were pretty cool when they painted a mohawk on it."
	icon_state = "rig0-miningalt"
	item_state = "miningalt_helm"

/obj/item/clothing/suit/space/void/mining/alt
	name = "frontier mining voidsuit"
	icon_state = "rig-miningalt"
	desc = "A cheap prospecting voidsuit. What it lacks in comfort it makes up for in armor plating and street cred."

/obj/item/clothing/suit/space/void/mining/alt/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/mining/alt
	boots = /obj/item/clothing/shoes/magboots

//Medical
/obj/item/clothing/head/helmet/space/void/medical/alt
	name = "streamlined medical voidsuit helmet"
	desc = "A trendy, lightly radiation-shielded voidsuit helmet trimmed in a fetching blue."
	icon_state = "rig0-medicalalt"
	item_state = "medicalalt_helm"
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	light_overlay = "helmet_light_dual_green"

/obj/item/clothing/suit/space/void/medical/alt
	name = "streamlined medical voidsuit"
	icon_state = "rig-medicalalt"
	desc = "A more recent and stylish model of Vey-Med voidsuit, with a minor upgrade to radiation shielding."
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/firstaid,/obj/item/device/scanner/health,/obj/item/stack/medical)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/clothing/suit/space/void/medical/alt/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 0

/obj/item/clothing/suit/space/void/medical/alt/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/medical/alt
	boots = /obj/item/clothing/shoes/magboots

//Security
/obj/item/clothing/head/helmet/space/void/security/alt
//INF	name = "riot security voidsuit helmet"
	desc = "A somewhat tacky voidsuit helmet, a fact mitigated by heavy armor plating."
//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/helmet.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/helmet.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_head_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi',
		)
//[/INF]
	icon_state = "rig0-secalt"
	item_state = "secalt_helm"
	light_overlay = "helmet_light_secalt"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL, //INF WAS ARMOR_BALLISTIC_SMALL
		laser = ARMOR_LASER_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR)

/obj/item/clothing/suit/space/void/security/alt
//INF	name = "riot security voidsuit"
	icon_state = "rig-secalt"
	desc = "A heavily armored voidsuit, designed to intimidate people who find black intimidating. Surprisingly slimming."
//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/suit.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/suit.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_suit_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_suit_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_suit_skrell.dmi',
		)
//[/INF]
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL, //INF WAS ARMOR_BALLISTIC_SMALL
		laser = ARMOR_LASER_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_MINOR)
	allowed = list(/obj/item/gun,/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/melee/baton)

/obj/item/clothing/suit/space/void/security/alt/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/security/alt
	boots = /obj/item/clothing/shoes/magboots

//Atmospherics
/obj/item/clothing/head/helmet/space/void/atmos/alt
	name = "heavy duty atmospherics voidsuit helmet"
	desc = "A voidsuit helmet plated with an expensive heat and radiation resistant ceramic."
//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/helmet.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/helmet.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_head_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_head_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_head_skrell.dmi',
		)
//[/INF]
	icon_state = "rig0-atmosalt"
	item_state = "atmosalt_helm"
	light_overlay = "hardhat_light"

/obj/item/clothing/suit/space/void/atmos/alt
	name = "heavy duty atmos voidsuit"
	desc = "An expensive voidsuit, rated to withstand extreme heat and even minor radiation without exceeding room temperature within."
	//[INF]
	sprite_sheets = list(
		SPECIES_TAJARA = 'icons/mob/species/tajaran/suit.dmi',
		SPECIES_EROSAN = 'infinity/icons/mob/species/erosan/suit.dmi',
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_suit_resomi.dmi',
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_suit_unathi.dmi',
		SPECIES_SKRELL = 'icons/mob/species/skrell/onmob_suit_skrell.dmi',
		)
//[/INF]
	icon_state = "rig-atmosalt"

/obj/item/clothing/suit/space/void/atmos/alt/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/atmos/alt
	boots = /obj/item/clothing/shoes/magboots

//Misc
/obj/item/clothing/head/helmet/space/void/engineering/salvage
	name = "salvage voidsuit helmet"
	desc = "A heavily modified salvage voidsuit helmet. It has been fitted with radiation-resistant plating."
	icon_state = "rig0-salvage"
	item_state = "salvage_helm"
	item_state_slots = list(
		slot_l_hand_str = "eng_helm",
		slot_r_hand_str = "eng_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/clothing/head/helmet/space/void/engineering/salvage/engi
	name = "engineering salvage voidsuit helmet"
	desc = "A heavily modified salvage voidsuit helmet. It has been fitted with radiation-resistant plating, and an engineer paintjob."
	icon_state = "rig0-salvage-engi"
	item_state = "salvage_helm-engi"

/obj/item/clothing/head/helmet/space/void/engineering/salvage/med
	name = "medical salvage voidsuit helmet"
	desc = "A heavily modified salvage voidsuit helmet. It has been fitted with radiation-resistant plating, and a medical paintjob."
	icon_state = "rig0-salvage-med"
	item_state = "salvage_helm-med"

/obj/item/clothing/head/helmet/space/void/engineering/salvage/pilot
	name = "pilot salvage voidsuit helmet"
	desc = "A heavily modified salvage voidsuit helmet. It has been fitted with radiation-resistant plating, and a pilot paintjob."
	icon_state = "rig0-salvage-pilot"
	item_state = "salvage_helm-pilot"

/obj/item/clothing/suit/space/void/engineering/salvage
	name = "salvage voidsuit"
	desc = "A hand-me-down salvage voidsuit. It has obviously had a lot of repair work done to its radiation shielding."
	icon_state = "rig-salvage"
	item_state_slots = list(
		slot_l_hand_str = "eng_voidsuit",
		slot_r_hand_str = "eng_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/device/t_scanner,/obj/item/rcd,/obj/item/rpd)

/obj/item/clothing/suit/space/void/engineering/salvage/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/salvage
	boots = /obj/item/clothing/shoes/magboots

//Pilot
/obj/item/clothing/head/helmet/space/void/pilot
	desc = "A pilot atmos resistant helmet for space and planet exploration."
	name = "pilot voidsuit helmet"
	icon = 'infinity/icons/obj/clothing/obj_head.dmi'
	item_icons = list(slot_head_str = 'infinity/icons/mob/onmob/onmob_head.dmi')
	icon_state = "pilot_helm"
	item_state = "pilot_helm"
	sprite_sheets = list(
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_head_unathi.dmi',//INF
		SPECIES_SKRELL = 'infinity/icons/mob/species/skrell/onmob_head_skrell.dmi',//INF
		SPECIES_TAJARA = 'infinity/icons/mob/species/tajaran/onmob_head_tajaran.dmi',//INF
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_head_resomi.dmi'//INF
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'infinity/icons/obj/clothing/species/unathi/obj_head_unathi.dmi',//INF
		SPECIES_SKRELL = 'infinity/icons/obj/clothing/species/skrell/obj_head_skrell.dmi',//INF
		SPECIES_TAJARA = 'infinity/icons/obj/clothing/species/tajaran/obj_head_tajaran.dmi',//INF
		SPECIES_RESOMI = 'infinity/icons/obj/clothing/species/resomi/obj_head_resomi.dmi'//INF
		)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	light_overlay = "helmet_light_dual"
	tint = TINT_NONE //inf

/obj/item/clothing/suit/space/void/pilot
	desc = "A pilot atmos resistant voidsuit for space and planet exploration."
	icon_state = "void_pilot"
	item_state = "void_pilot"
	name = "pilot voidsuit"
	icon = 'infinity/icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'infinity/icons/mob/onmob/onmob_suit.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'infinity/icons/mob/species/unathi/onmob_suit_unathi.dmi',//INF
		SPECIES_SKRELL = 'infinity/icons/mob/species/skrell/onmob_suit_skrell.dmi',//INF
		SPECIES_TAJARA = 'infinity/icons/mob/species/tajaran/onmob_suit_tajaran.dmi',//INF
		SPECIES_RESOMI = 'infinity/icons/mob/species/resomi/onmob_suit_resomi.dmi'//INF
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'infinity/icons/obj/clothing/species/unathi/obj_suit_unathi.dmi',//INF
		SPECIES_SKRELL = 'infinity/icons/obj/clothing/species/skrell/obj_suit_skrell.dmi',//INF
		SPECIES_TAJARA = 'infinity/icons/obj/clothing/species/tajaran/obj_suit_tajaran.dmi',//INF
		SPECIES_RESOMI = 'infinity/icons/obj/clothing/species/resomi/obj_suit_resomi.dmi'//INF
		)
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/device/t_scanner,/obj/item/rcd,/obj/item/rpd)
	tint = 1 //INF, WAS NOTHING (0)

/obj/item/clothing/suit/space/void/pilot/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/pilot
	boots = /obj/item/clothing/shoes/magboots

//Ceti
/obj/item/clothing/suit/space/void/ceti
	name = "CTI Voidsuit"
	desc = "A xenoarcheology voidsuit designed for CTI researchers, by CTI researchers. Tools not included."
	icon_state = "rig-ceti"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/stack/flag,/obj/item/storage/excavation,/obj/item/pickaxe,/obj/item/device/scanner/health,/obj/item/device/measuring_tape,/obj/item/device/ano_scanner,/obj/item/device/depth_scanner,/obj/item/device/core_sampler,/obj/item/device/gps,/obj/item/pinpointer/radio,/obj/item/device/radio/beacon,/obj/item/pickaxe/xeno,/obj/item/storage/bag/fossils)

/obj/item/clothing/head/helmet/space/void/ceti
	name = "CTI voidsuit helmet"
	desc = "A specially made voidsuit helmet designed for use by CTI affiliated researchers."
	icon_state = "rig0-ceti"
	item_state = "helm-ceti"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	light_overlay = "helmet_light"

/obj/item/clothing/suit/space/void/ceti/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/ceti
	boots = /obj/item/clothing/shoes/magboots
