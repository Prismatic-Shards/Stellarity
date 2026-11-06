# misc is for flight time

execute as @n[tag=stellarity.fluffy_hammer.display] rotated as @s run rotate @s ~20 0

# Normal Fluffy Hammer
execute unless entity @s[tag=stellarity.radiant_fluffy_hammer] run scoreboard players add @s stellarity.misc 1
execute unless entity @s[tag=stellarity.radiant_fluffy_hammer] if score @s stellarity.misc matches ..40 run function stellarity:item/fluffy_hammer/fly_out
execute unless entity @s[tag=stellarity.radiant_fluffy_hammer] if score @s stellarity.misc matches 41.. run function stellarity:item/fluffy_hammer/return with entity @s data."stellarity:owner"

# Radiant Fluffy Hammer
execute if entity @s[tag=stellarity.radiant_fluffy_hammer] run scoreboard players add @s stellarity.misc 1
execute if entity @s[tag=stellarity.radiant_fluffy_hammer] if score @s stellarity.misc matches ..20 run function stellarity:item/fluffy_hammer/fly_out
execute if entity @s[tag=stellarity.radiant_fluffy_hammer] if score @s stellarity.misc matches 21.. run function stellarity:item/fluffy_hammer/return with entity @s data."stellarity:owner"

function stellarity:item/fluffy_hammer/damage with entity @s data."stellarity:owner"
