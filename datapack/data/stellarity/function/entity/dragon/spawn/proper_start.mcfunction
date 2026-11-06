function stellarity:structure/exit_portal/deactivated/generate

execute as @a run function stellarity:ambient/main_island_stop

playsound entity.ender_dragon.ambient block @a[distance=0..] ~ ~ ~ 4 0.75
playsound minecraft:entity.generic.explode block @a[distance=0..] ~ ~ ~ 4 0.75
playsound minecraft:entity.blaze.death block @a[distance=0..] ~ ~ ~ 4 0.5

advancement grant @a[distance=..32] only stellarity:dragons_den/sacrificial_ritual

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.9 200
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.6 200
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.3 200

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.9 60
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 60
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 60

scoreboard players reset #stellarity.dragon.ash_duration stellarity.misc
