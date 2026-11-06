# Post-animation loop for extra details, like orbiting Eyes and ambient sounds

# Prevent Eyes of Ender being placed back into frames
execute if predicate stellarity:util/end_portal_eye_delete run function stellarity:sfx/end_portal/fill_stop/checks

tp @s ~ ~ ~ ~0.25 ~

execute rotated ~0 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_1] ^ ^ ^ ~ ~
execute rotated ~30 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_2] ^ ^ ^ ~ ~
execute rotated ~60 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_3] ^ ^ ^ ~ ~
execute rotated ~90 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_4] ^ ^ ^ ~ ~
execute rotated ~120 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_5] ^ ^ ^ ~ ~
execute rotated ~150 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_6] ^ ^ ^ ~ ~
execute rotated ~180 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_7] ^ ^ ^ ~ ~
execute rotated ~210 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_8] ^ ^ ^ ~ ~
execute rotated ~240 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_9] ^ ^ ^ ~ ~
execute rotated ~270 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_10] ^ ^ ^ ~ ~
execute rotated ~300 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_11] ^ ^ ^ ~ ~
execute rotated ~330 ~ positioned ^ ^-2 ^5 facing entity @s eyes run tp @n[type=armor_stand,tag=stellarity.end_portal_animation.eye_12] ^ ^ ^ ~ ~

particle mycelium ~ ~-1.65 ~ .8 0 .8 0 1 normal
execute if predicate kohara:chance/3percent run function stellarity:sfx/end_portal/beam_thingy/spawn

scoreboard players add @s stellarity.misc2 1
execute if entity @s[scores={stellarity.misc2=200..}] run function stellarity:sfx/end_portal/ambient_sounds

execute unless block ~ ~-2 ~ end_portal run function stellarity:sfx/end_portal/remove_portal
