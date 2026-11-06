particle minecraft:dust{color:[0.419, 0.615, 0.98], scale:1.22} ~ ~ ~ 0.28 0.28 0.28 1 7 normal
particle minecraft:dust{color:[0.956, 0.4, 0.8], scale:1.22} ~ ~ ~ 0.28 0.28 0.28 1 14 normal

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 14 normal

execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={small=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.3 0.3 0.3 0.15 4 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={big=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.4 0.4 0.4 0.15 6 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={large=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.5 0.5 0.5 0.15 8 force
execute if entity @s[advancements={stellarity:event/item/harvester/kill_for_damage={huge=true}}] run particle minecraft:damage_indicator ~ ~ ~ 0.6 0.6 0.6 0.15 10 force

playsound minecraft:particle.soul_escape player @a[distance=0..] ~ ~ ~ 1 0.6
playsound minecraft:entity.snow_golem.death player @a[distance=0..] ~ ~ ~ 1 0.78
