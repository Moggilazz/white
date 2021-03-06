/obj/item/weapon/circuitboard
	w_class = 2.0
	name = "Circuit board"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"
	item_state = "electronic"
	origin_tech = "programming=2"

/obj/item/weapon/circuitboard/computer
	var/id = null
	var/frequency = null
	var/computertype = null
	var/list/records = null

/obj/item/weapon/circuitboard/circuitry
	name = "Circuitry"
	origin_tech = "programming=1"
	m_amt = 100
	g_amt = 25

/obj/item/weapon/circuitboard/computer/security
	name = "Circuit board (Security)"
	computertype = "/obj/machinery/computer/security"
	/obj/item/weapon/circuitboard/computer/aiupload
	name = "Circuit board (AI Upload)"
	computertype = "/obj/machinery/computer/aiupload"
	origin_tech = "programming=4"
/obj/item/weapon/circuitboard/computer/med_data
	name = "Circuit board (Medical)"
	computertype = "/obj/machinery/computer/med_data"
	/obj/item/weapon/circuitboard/computer/scan_consolenew
	name = "Circuit board (DNA Machine)"
	computertype = "/obj/machinery/scan_consolenew"
	origin_tech = "programming=2;biotech=2"
/obj/item/weapon/circuitboard/computer/communications
	name = "Circuit board (Communications)"
	computertype = "/obj/machinery/computer/communications"
	origin_tech = "programming=2;magnets=2"
/obj/item/weapon/circuitboard/computer/card
	name = "Circuit board (ID Computer)"
	computertype = "/obj/machinery/computer/card"
/obj/item/weapon/circuitboard/computer/teleporter
	name = "Circuit board (Teleporter)"
	computertype = "/obj/machinery/computer/teleporter"
	origin_tech = "programming=2;bluespace=2"
/obj/item/weapon/circuitboard/computer/secure_data
	name = "Circuit board (Secure Data)"
	computertype = "/obj/machinery/computer/secure_data"
/obj/item/weapon/circuitboard/computer/atmospherealerts
	name = "Circuit board (Atmosphere alerts)"
	computertype = "/obj/machinery/computer/atmosphere/alerts"
/obj/item/weapon/circuitboard/computer/atmospheresiphonswitch
	name = "Circuit board (Atmosphere siphon control)"
	computertype = "/obj/machinery/computer/atmosphere/siphonswitch"
/obj/item/weapon/circuitboard/computer/air_management
	name = "Circuit board (Atmospheric monitor)"
	computertype = "/obj/machinery/computer/general_air_control"
/obj/item/weapon/circuitboard/computer/injector_control
	name = "Circuit board (Injector control)"
	computertype = "/obj/machinery/computer/general_air_control/fuel_injection"
/obj/item/weapon/circuitboard/computer/general_alert
	name = "Circuit board (General Alert)"
	computertype = "/obj/machinery/computer/general_alert"
/obj/item/weapon/circuitboard/computer/pod
	name = "Circuit board (Massdriver control)"
	computertype = "/obj/machinery/computer/pod"
/obj/item/weapon/circuitboard/computer/robotics
	name = "Circuit board (Robotics Control)"
	computertype = "/obj/machinery/computer/robotics"
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/computer/cloning
	name = "Circuit board (Cloning)"
	computertype = "/obj/machinery/computer/cloning"
	origin_tech = "programming=3;biotech=3"
/obj/item/weapon/circuitboard/computer/arcade
	name = "Circuit board (Arcade)"
	computertype = "/obj/machinery/computer/arcade"
	origin_tech = "programming=1"
/obj/item/weapon/circuitboard/computer/turbine_control
	name = "Circuit board (Turbine control)"
	computertype = "/obj/machinery/computer/turbine_computer"
/obj/item/weapon/circuitboard/computer/solar_control
	name = "Circuit board (Solar control)"
	computertype = "/obj/machinery/power/solar_control"
	origin_tech = "programming=2;powerstorage=2"
/obj/item/weapon/circuitboard/computer/powermonitor
	name = "Circuit board (Massdriver control)"
	computertype = "/obj/machinery/power/monitor"
/obj/item/weapon/circuitboard/computer/olddoor
	name = "Circuit board (DoorMex)"
	computertype = "/obj/machinery/computer/pod/old"
/obj/item/weapon/circuitboard/computer/syndicatedoor
	name = "Circuit board (ProComp Executive)"
	computertype = "/obj/machinery/computer/pod/old/syndicate"
/obj/item/weapon/circuitboard/computer/swfdoor
	name = "Circuit board (Magix)"
	computertype = "/obj/machinery/computer/pod/old/swf"
/obj/item/weapon/circuitboard/computer/curer
	name = "Circuit board (Cure machine)"
	computertype = "/obj/machinery/computer/curer"
/obj/item/weapon/circuitboard/computer/diseaseanalyser
	name = "Circuit board (Disease Analyser)"
	computertype = "/obj/machinery/computer/diseaseanalyer"
/obj/item/weapon/circuitboard/computer/diseasesplicer
	name = "Circuit board (Disease Splicer)"
	computertype = "/obj/machinery/computer/diseasesplicer"
/obj/item/weapon/circuitboard/computer/operating
	name = "Circuit board (Operating Computer)"
	computertype = "/obj/machinery/computer/operating"
	origin_tech = "programming=2;biotech=2"
/obj/item/weapon/circuitboard/computer/rdservercontrol
	name = "Circuit Board (R&D Server Control)"
	computertype = "/obj/machinery/computer/rdservercontrol"
	origin_tech = "programming=3"
/obj/item/weapon/circuitboard/computer/rdconsole
	name = "Circuit Board (R&D Console)"
	computertype = "/obj/machinery/computer/rdconsole/core"
/obj/item/weapon/circuitboard/computer/pandemic
	name = "Circuit board (PanD.E.M.I.C. 2200)"
	computertype = "/obj/machinery/computer/pandemic"
	origin_tech = "programming=2;biotech=2"


/obj/structure/frame
	density = 1
	icon = 'stock_parts.dmi'
	icon_state = "box_0"

/obj/structure/frame/computer
	anchored = 0
	name = "Computer-frame"
	icon_state = "0"
	var/state = 0
	var/obj/item/weapon/circuitboard/computer/circuit = null

/obj/structure/frame/computer/attackby(obj/item/weapon/P as obj, mob/user as mob)
	switch(state)
		if(0)
			if(istype(P, /obj/item/weapon/wrench))
				playsound(src.loc, 'Ratchet.ogg', 50, 1)
				if(do_after(user, 20))
					user << "\blue You wrench the frame into place."
					src.anchored = 1
					src.state = 1
			if(istype(P, /obj/item/weapon/weldingtool))
				playsound(src.loc, 'Welder.ogg', 50, 1)
				if(do_after(user, 20))
					user << "\blue You deconstruct the frame."
					var/obj/item/stack/sheet/metal/A = new /obj/item/stack/sheet/metal( src.loc )
					if(src.circuit)
						circuit.loc = src.loc
					A.amount = 5
					del(src)
		if(1)
			if(istype(P, /obj/item/weapon/wrench))
				playsound(src.loc, 'Ratchet.ogg', 50, 1)
				if(do_after(user, 20))
					user << "\blue You unfasten the frame."
					src.anchored = 0
					src.state = 0
			if(istype(P, /obj/item/weapon/circuitboard/computer) && !circuit)
				playsound(src.loc, 'Deconstruct.ogg', 50, 1)
				user << "\blue You place the circuit board inside the frame."
				src.icon_state = "1"
				src.circuit = P
				user.drop_item()
				P.loc = src
			if(istype(P, /obj/item/weapon/screwdriver) && circuit)
				playsound(src.loc, 'Screwdriver.ogg', 50, 1)
				user << "\blue You screw the circuit board into place."
				src.state = 2
				src.icon_state = "2"
			if(istype(P, /obj/item/weapon/crowbar) && circuit)
				playsound(src.loc, 'Crowbar.ogg', 50, 1)
				user << "\blue You remove the circuit board."
				src.state = 1
				src.icon_state = "0"
				circuit.loc = src.loc
				src.circuit = null
		if(2)
			if(istype(P, /obj/item/weapon/screwdriver) && circuit)
				playsound(src.loc, 'Screwdriver.ogg', 50, 1)
				user << "\blue You unfasten the circuit board."
				src.state = 1
				src.icon_state = "1"
			if(istype(P, /obj/item/weapon/cable_coil))
				var/obj/item/weapon/cable_coil/Coil = P
				if (Coil.CableType != /obj/cabling/power)
					user << "That's the wrong cable type, you need electrical cable!"
					return
				if(Coil.use(5))
					playsound(src.loc, 'Deconstruct.ogg', 50, 1)
					user << "\blue You add cables to the frame."
					src.state = 3
					src.icon_state = "3"
		if(3)
			if(istype(P, /obj/item/weapon/wirecutters))
				playsound(src.loc, 'wirecutter.ogg', 50, 1)
				user << "\blue You remove the cables."
				src.state = 2
				src.icon_state = "2"
				var/obj/item/weapon/cable_coil/power/A = new /obj/item/weapon/cable_coil/power( src.loc )
				A.amount = 5

			if(istype(P, /obj/item/stack/sheet/glass))
				if(P:amount >= 2)
					playsound(src.loc, 'Deconstruct.ogg', 50, 1)
					if(do_after(user, 20))
						P:amount -= 2
						if(!P:amount) del(P)
						user << "\blue You put in the glass panel."
						src.state = 4
						src.icon_state = "4"
		if(4)
			if(istype(P, /obj/item/weapon/crowbar))
				playsound(src.loc, 'Crowbar.ogg', 50, 1)
				user << "\blue You remove the glass panel."
				src.state = 3
				src.icon_state = "3"
				var/obj/item/stack/sheet/glass/A = new /obj/item/stack/sheet/glass( src.loc )
				A.amount = 2
			if(istype(P, /obj/item/weapon/screwdriver))
				playsound(src.loc, 'Screwdriver.ogg', 50, 1)
				user << "\blue You connect the monitor."
				var/B = new src.circuit.computertype ( src.loc )
				if(circuit.id) B:id = circuit.id
				if(circuit.records) B:records = circuit.records
				if(circuit.frequency) B:frequency = circuit.frequency
				del(src)
