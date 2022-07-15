/obj/structure/closet/secure_closet
	name = "secure locker"
	desc = "It's a card-locked storage unit."
	icon = 'icons/obj/closets/closet.dmi'
	icon_state = "secure"
	setup = CLOSET_HAS_LOCK | CLOSET_CAN_BE_WELDED
	locked = TRUE
	secure = TRUE
	health = 200

/obj/structure/closet/secure_closet/slice_into_parts(obj/item/weldingtool/WT, mob/user)
	to_chat(user, "<span class='notice'>\The [src] is too strong to be taken apart.</span>")
