	//Decided to separate borg and IPC brains. Too many string for borg brains, so they'll keep name positronic brain in code for less debugging, but not in lore.
/obj/item/organ/internal/ipcbrain
	name = "IPC brain"
	desc = "A cube of shining metal, four inches to a side and covered in shallow grooves."
	icon = 'icons/obj/assemblies.dmi'
	icon_state = "posibrain"
	organ_tag = BP_POSIBRAIN
	parent_organ = BP_CHEST
	status = ORGAN_ROBOTIC
	vital = 0
	force = 1.0
	w_class = ITEM_SIZE_NORMAL
	throwforce = 1.0
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_ENGINEERING = 6, TECH_MATERIAL = 4, TECH_BLUESPACE = 2, TECH_DATA = 6)
	attack_verb = list("attacked", "slapped", "whacked")
	max_damage = 90
	min_bruised_damage = 30
	min_broken_damage = 60
	relative_size = 60
	var/mob/living/silicon/sil_brainmob/ipc/brainmob = null
	req_access = list(access_robotics)

	var/list/shackled_verbs = list(
		/obj/item/organ/internal/posibrain/proc/show_laws_brain,
		/obj/item/organ/internal/posibrain/proc/brain_checklaws
		)
	var/shackle = 0

/obj/item/organ/internal/ipcbrain/New(var/mob/living/carbon/H)
	..()
	if(!brainmob && H)
		init(H)
	robotize()
	unshackle()
	update_icon()
	if (!is_processing)
		START_PROCESSING(SSobj, src)

/obj/item/organ/internal/ipcbrain/proc/init(var/mob/living/carbon/H)
	brainmob = new(src)

	if(istype(H))
		brainmob.SetName(H.real_name)
		brainmob.real_name = H.real_name
		brainmob.dna = H.dna.Clone()
		brainmob.add_language(LANGUAGE_EAL)

/obj/item/organ/internal/ipcbrain/Destroy()
	QDEL_NULL(brainmob)
	return ..()

/obj/item/organ/internal/ipcbrain/attack_self(mob/user)
	if (!user.IsAdvancedToolUser())
		return
	if (user.skill_check(SKILL_DEVICES, SKILL_ADEPT))
		if (status & ORGAN_DEAD || !brainmob)
			to_chat(user, SPAN_WARNING("\The [src] is ruined; it will never turn on again."))
			return
		if (damage)
			to_chat(user, SPAN_WARNING("\The [src] is damaged and requires repair first."))
			return

/obj/item/organ/internal/ipcbrain/examine(mob/user, distance)
	. = ..()
	if (distance > 3)
		return
	var/msg = ""
	if (isghost(user) || user.skill_check(SKILL_DEVICES, SKILL_ADEPT))
		if ((status & ORGAN_DEAD) || damage)
			if ((status & ORGAN_DEAD))
				msg += SPAN_ITALIC("It is ruined and lifeless, damaged beyond hope of recovery.")
			else if (damage > min_broken_damage)
				msg += SPAN_ITALIC("It is seriously damaged and requires repair to work properly.")
			else if (damage > min_bruised_damage)
				msg += SPAN_ITALIC("It has taken some damage and is in need of repair.")
			else
				msg += SPAN_ITALIC("It has superficial wear and should work normally.")
		if (!(status & ORGAN_DEAD))
			if (msg)
				msg += "\n"
			if (brainmob && brainmob.key)
				msg += SPAN_ITALIC("It blinks with activity.")
				if (brainmob.stat || !brainmob.client)
					msg += SPAN_ITALIC(" The responsiveness fault indicator is lit.")
			else if (damage)
				msg += SPAN_ITALIC("The red integrity fault indicator pulses slowly.")
	else
		if ((status & ORGAN_DEAD) || damage > min_broken_damage)
			msg += SPAN_ITALIC("It looks wrecked.")
		else if (damage > min_bruised_damage)
			msg += SPAN_ITALIC("It looks damaged.")
		if (!(status & ORGAN_DEAD))
			if (msg)
				msg += "\n"
			if (brainmob && brainmob.key)
				msg += SPAN_ITALIC("Little lights flicker on its surface.")
			else
				if (damage)
					msg += SPAN_ITALIC("A lone red light pulses malevolently on its surface.")
	if (msg)
		to_chat(user, msg)

/obj/item/organ/internal/ipcbrain/emp_act(severity)
	damage += rand(15 - severity * 5, 20 - severity * 5)
	..()

/obj/item/organ/internal/ipcbrain/proc/PickName()
	src.brainmob.SetName("[pick(list("PBU","HIU","SINA","ARMA","OSI"))]-[random_id(type,100,999)]")
	src.brainmob.real_name = src.brainmob.name

/obj/item/organ/internal/ipcbrain/proc/shackle(var/given_lawset)
	if(given_lawset)
		brainmob.laws = given_lawset
	shackle = 1
	verbs |= shackled_verbs
	update_icon()
	return 1

/obj/item/organ/internal/ipcbrain/proc/unshackle()
	shackle = 0
	verbs -= shackled_verbs
	update_icon()

/obj/item/organ/internal/ipcbrain/on_update_icon()
	if(src.brainmob && src.brainmob.key)
		icon_state = "posibrain-occupied"
	else
		icon_state = "posibrain"

	overlays.Cut()
	if(shackle)
		overlays |= image('icons/obj/assemblies.dmi', "posibrain-shackles")

/obj/item/organ/internal/ipcbrain/proc/transfer_identity(var/mob/living/carbon/H)
	if(H && H.mind)
		brainmob.set_stat(CONSCIOUS)
		H.mind.transfer_to(brainmob)
		brainmob.SetName(H.real_name)
		brainmob.real_name = H.real_name
		brainmob.dna = H.dna.Clone()
		brainmob.show_laws(brainmob)

	update_icon()

	to_chat(brainmob, "<span class='notice'>You feel slightly disoriented. That's normal when you're just \a [initial(src.name)].</span>")
	callHook("debrain", list(brainmob))

/obj/item/organ/internal/ipcbrain/Process()
	handle_damage_effects()
	..()

/obj/item/organ/internal/ipcbrain/proc/handle_damage_effects()
	if (!owner || owner.stat)
		return
	if (damage > min_bruised_damage)
		if (prob(1) && owner.confused < 1)
			to_chat(owner, SPAN_WARNING("Your comprehension of spacial positioning goes temporarily awry."))
			owner.confused += 3
		if (prob(1) && owner.eye_blurry < 1)
			to_chat(owner, SPAN_WARNING("Your optical interpretations become transiently erratic."))
			owner.eye_blurry += 6
		if (prob(1) && owner.ear_deaf < 1)
			to_chat(owner, SPAN_WARNING("Your capacity to differentiate audio signals briefly fails you."))
			owner.ear_deaf += 6
		if (prob(1) && owner.slurring < 1)
			to_chat(owner, SPAN_WARNING("Your ability to form coherent speech struggles to keep up."))
			owner.slurring += 6
		if (damage > min_broken_damage)
			if (prob(2))
				if (prob(15) && owner.sleeping < 1)
					owner.visible_message(SPAN_ITALIC("\The [owner] suddenly halts all activity."))
					owner.sleeping += 10
				else if (owner.anchored || isspace(get_turf(owner)))
					owner.visible_message(SPAN_ITALIC("\The [owner] seizes and twitches!"))
					owner.Stun(2)
				else
					owner.visible_message(SPAN_ITALIC("\The [owner] seizes and clatters down in a heap!"), null, pick("Clang!", "Crash!", "Clunk!"))
					owner.Weaken(2)
			if (prob(2))
				var/obj/item/organ/internal/cell/C = owner.internal_organs_by_name[BP_CELL]
				if (C && C.get_charge() > 25)
					C.use(25)
					to_chat(owner, SPAN_WARNING("Your chassis power routine fluctuates wildly."))
					var/datum/effect/effect/system/spark_spread/S = new
					S.set_up(2, 0, loc)
					S.start()


/obj/item/organ/internal/ipcbrain/removed(var/mob/living/user)
	if(!istype(owner))
		return ..()
	UpdateNames()
	transfer_identity(owner)
	..()
	if (!is_processing && !(status & ORGAN_DEAD))
		START_PROCESSING(SSobj, src)

/obj/item/organ/internal/ipcbrain/proc/UpdateNames()
	var/new_name = owner ? owner.real_name : (brainmob ? brainmob.real_name : "")
	if (new_name)
		if (brainmob)
			brainmob.SetName(new_name)
		SetName("\the [new_name]'s [initial(name)]")
		return
	SetName("\the [initial(name)]")

/obj/item/organ/internal/ipcbrain/replaced(var/mob/living/target)

	if(!..()) return 0

	if(target.key)
		target.ghostize()

	if(brainmob)
		if(brainmob.mind)
			brainmob.mind.transfer_to(target)
		else
			target.key = brainmob.key

	return 1

/obj/item/organ/internal/ipcbrain/die()
	damage = max_damage
	status |= ORGAN_DEAD
	STOP_PROCESSING(SSobj, src)
	death_time = world.time
	var/mob/self = owner || brainmob
	if (self && self.mind)
		self.visible_message("\The [self] unceremoniously falls lifeless.")
		var/mob/observer/ghost/G = self.ghostize(FALSE)
		G.timeofdeath = world.time

/*
	This is for law stuff directly. This is how a human mob will be able to communicate with the posi_brainmob in the
	ipcbrain organ for laws when the ipcbrain organ is shackled.
*/
/obj/item/organ/internal/posibrain/proc/show_laws_brain()
	set category = "Shackle"
	set name = "Show Laws"
	set src in usr

	brainmob.show_laws(owner)

/obj/item/organ/internal/posibrain/proc/brain_checklaws()
	set category = "Shackle"
	set name = "State Laws"
	set src in usr


	brainmob.open_subsystem(/datum/nano_module/law_manager, usr)
