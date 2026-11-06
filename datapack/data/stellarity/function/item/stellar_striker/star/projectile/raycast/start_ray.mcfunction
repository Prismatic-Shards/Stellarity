#Setting up the raycasting data.

tag @s add vdvray
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0

#Activating the raycast. This function will call itself until it is done.

function stellarity:item/stellar_striker/star/projectile/raycast/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove vdvray
