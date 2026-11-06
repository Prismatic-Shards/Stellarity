execute \
	if block ~ ~ ~ end_portal_frame[eye=true] \
	positioned ~ ~ ~ \
	align xyz \
	positioned ~.5 ~.5 ~.5 \
	run function stellarity:sfx/end_portal/raycast/hit_block

scoreboard players add #distance stellarity.misc 1
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc matches ..500 positioned ^ ^ ^0.1 run function stellarity:sfx/end_portal/raycast/ray
