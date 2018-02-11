/obj/item/proc/rightclick_melee_attack_chain(mob/user, atom/target, params)
	if(!pre_altattackby(target, user, params)) //Hey, does this item have special behavior that should override all normal right-click functionality?
		if(!target.altattackby(src, user, params)) //Does the target do anything special when we right-click on it?
			melee_attack_chain(user, target, params) //Ugh. Lame! I'm filing a legal complaint about the discrimination against the right mouse button!
	return

/obj/item/proc/pre_altattackby(atom/A, mob/living/user, params)
	return FALSE //return something other than false if you wanna override attacking completely

/atom/proc/altattackby(obj/item/W, mob/user, params)
	return FALSE //return something other than false if you wanna add special right-click behavior to objects.

/obj/item/proc/rightclick_attack_self(mob/user)
	return FALSE
