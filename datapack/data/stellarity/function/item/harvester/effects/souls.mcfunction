particle minecraft:dust{color:[0.419, 0.615, 0.98], scale:1.22} ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle minecraft:dust{color:[0.658, 0.78, 1.0], scale:1.22} ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle minecraft:dust{color:[0.956, 0.4, 0.8], scale:1.22} ~ ~ ~ 0.28 0.28 0.28 1 7 normal

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 14 normal

execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={minor=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={small=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.02 3 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={big=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.3 0.3 0.3 0.02 7 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={large=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.4 0.4 0.4 0.02 11 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={huge=true}}] run particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.02 21 force

playsound stellarity:item.harvester.gain_damage player @a[distance=0..] ~ ~ ~ 2
