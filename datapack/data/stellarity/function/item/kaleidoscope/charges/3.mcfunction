playsound stellarity:item.kaleidoscope.level_3 player @a[distance=0..] ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:item.firecharge.use player @a[distance=0..] ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 0.6
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.5 0.8

particle end_rod ^ ^ ^ 0 0 0 0.3 72
particle flame ^ ^ ^ 0 0 0 0.3 128
particle firework ^ ^ ^ 0 0 0 0.3 72
particle crit ^ ^ ^ 0 0 0 1.1 96
particle explosion ^ ^ ^ 0.5 0.5 0.5 0 6
particle flash{color:-1} ^ ^ ^ 0.5 0.5 0.5 0 3
particle cloud ^ ^ ^ 0 0 0 0.3 96

execute positioned ^ ^ ^ run function stellarity:item/kaleidoscope/charges/3_wave

function stellarity:item/kaleidoscope/charges/damage/3
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=0.1..1.4] run function stellarity:item/kaleidoscope/charges/splash/3/inner
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=1.41..2.8] run function stellarity:item/kaleidoscope/charges/splash/3/middle
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=2.81..4.2] run function stellarity:item/kaleidoscope/charges/splash/3/outer

scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge_progress
scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge
