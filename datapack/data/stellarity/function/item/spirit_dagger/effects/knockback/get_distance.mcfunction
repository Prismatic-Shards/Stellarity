scoreboard players add #times stellarity.misc 1

execute if score #times stellarity.misc matches 1 run tp @s ^ ^0.2 ^ ~ ~ 
tp @s ^ ^ ^0.04 ~ ~

execute if score #times stellarity.misc < #knockback stellarity.misc at @s run function stellarity:item/spirit_dagger/effects/knockback/get_distance
