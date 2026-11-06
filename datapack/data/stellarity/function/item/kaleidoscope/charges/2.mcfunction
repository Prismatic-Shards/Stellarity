playsound stellarity:item.kaleidoscope.level_2 player @a[distance=0..] ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 0.9
playsound minecraft:item.firecharge.use player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.5 1

particle end_rod ^ ^ ^ 0 0 0 0.147 36
particle flame ^ ^ ^ 0 0 0 0.147 64
particle firework ^ ^ ^ 0 0 0 0.147 36
particle crit ^ ^ ^ 0 0 0 0.8 48
particle explosion ^ ^ ^
particle flash{color:-1} ^ ^ ^
particle cloud ^ ^ ^ 0 0 0 0.147 48

execute positioned ^ ^ ^ run function stellarity:item/kaleidoscope/charges/2_wave

function stellarity:item/kaleidoscope/charges/damage/2
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=0.1..0.9] run function stellarity:item/kaleidoscope/charges/splash/2/inner
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=0.91..1.8] run function stellarity:item/kaleidoscope/charges/splash/2/middle
execute at @s as @e[type=!#kohara:invalid_targets,predicate=!stellarity:item/holding/kaleidoscope,distance=1.81..2.7] run function stellarity:item/kaleidoscope/charges/splash/2/outer

scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge_progress
scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge
