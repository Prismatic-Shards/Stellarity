scoreboard players add @s stellarity.misc.end_portal_animation 1

execute if score #stellarity.config stellarity.config.lock_the_end matches 1.. run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace end_portal
execute if score #stellarity.config stellarity.config.lock_the_end matches 1.. run function stellarity:sfx/end_portal/open_animation/lock_effect
execute if score #stellarity.config stellarity.config.lock_the_end matches 1.. run kill @s

execute if score @s stellarity.misc.end_portal_animation matches 1..129 run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace end_portal

execute if score @s stellarity.misc.end_portal_animation matches 2..130 run function stellarity:sfx/end_portal/open_animation/smoke
execute if score @s stellarity.misc.end_portal_animation matches 2 run stopsound @a[distance=..48] music
execute if score @s stellarity.misc.end_portal_animation matches 2 run playsound stellarity:block.end_portal.create player @a[distance=0..] ~ ~ ~
execute if score @s stellarity.misc.end_portal_animation matches 2..120 run particle minecraft:enchant ~ ~ ~ 1.2 0.15 1.2 0.1 6

execute if score @s stellarity.misc.end_portal_animation matches 66 run function stellarity:sfx/end_portal/open_animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 96 run function stellarity:sfx/end_portal/open_animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 116 run function stellarity:sfx/end_portal/open_animation/flash
execute if score @s stellarity.misc.end_portal_animation matches 126 run function stellarity:sfx/end_portal/open_animation/flash

execute if score @s stellarity.misc.end_portal_animation matches 130 run function stellarity:sfx/end_portal/open_animation/finish

execute if score @s stellarity.misc.end_portal_animation matches 170 run execute as @a[distance=..32] at @s run playsound stellarity:music.create_portal music @s ~ ~ ~ 0.5 1

execute if score @s stellarity.misc.end_portal_animation matches 170 run kill @s
