/obj/secure_closet/qm/New()
	..()
	sleep(2)
	new /obj/item/clothing/under/rank/qm( src )
	new /obj/item/device/pda/quartermaster(src)
	new /obj/item/clothing/gloves/black ( src )
	new /obj/item/weapon/hand_labeler ( src )
	new /obj/item/device/radio/headset/heads/qm(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/head/helmet/cargosoft(src)
	new /obj/item/clothing/shoes/brown(src)
	return

/obj/secure_closet/cargo/New()
	..()
	sleep(2)
	new /obj/item/clothing/under/rank/cargo( src )
	new /obj/item/device/pda/cargo(src)
	new /obj/item/clothing/gloves/black ( src )
	new /obj/item/weapon/hand_labeler ( src )
	new /obj/item/device/radio/headset/headset_cargo(src)
	new /obj/item/clothing/head/helmet/cargosoft(src)
	new /obj/item/clothing/shoes/brown(src)
	return
/obj/secure_closet/mining/New()
	..()
	sleep(2)
	new /obj/item/clothing/under/rank/miner( src )
	new /obj/item/device/pda/miner(src)
	new /obj/item/clothing/gloves/black ( src )
	new /obj/item/device/radio/headset/headset_cargo(src)
	new /obj/item/clothing/shoes/brown(src)
	new /obj/item/weapon/storage/backpack/industrial(src)
	new /obj/item/clothing/glasses/meson(src)
	return