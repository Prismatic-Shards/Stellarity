tag @s add stellarity.item.dragonblade.in_punch

execute if score #hit stellarity.misc matches 0 unless block ^ ^ ^1 #kohara:non_solid run function stellarity:item/dragonblade/punch/motion/hit_block

particle minecraft:dragon_breath ^ ^1 ^ .1 .1 .1 0.01 1
particle minecraft:smoke ^ ^1 ^ .1 .1 .1 0.01 1

#scoreboard players add #particles stellarity.misc 1
#execute if score #particles stellarity.misc matches 1 positioned ^ ^1 ^ rotated ~90 ~ run function stellarity:item/dragonblade/punch/special_fx/end_rod_secondary
#execute if score #particles stellarity.misc matches 21 run scoreboard players set #particles stellarity.misc 0

scoreboard players add #distance stellarity.misc 1
execute if block ^ ^ ^ #kohara:liquids run scoreboard players add #distance stellarity.misc 1

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc = #max_distance stellarity.misc run function stellarity:item/dragonblade/punch/motion/not_hit_block
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc < #max_distance stellarity.misc positioned ^ ^ ^0.1 run function stellarity:item/dragonblade/punch/motion/raycast
