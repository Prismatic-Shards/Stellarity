# particle dragon_breath ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
particle dust{color:[0.929,0.075,0.89],scale:1.4} ~ ~ ~
particle dragon_breath ~ ~ ~

tp @s ^ ^ ^0.2

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 5.. if predicate kohara:chance/20percent run function stellarity:sfx/end_portal/beam_thingy/rotation/rotate
execute if entity @s[tag=stellarity.rotated] run function stellarity:sfx/end_portal/beam_thingy/rotation/loop

execute unless block ~ ~ ~ #kohara:non_solid run kill @s

scoreboard players add @s stellarity.misc3 1
execute if score @s stellarity.misc3 matches 100.. run kill @s
