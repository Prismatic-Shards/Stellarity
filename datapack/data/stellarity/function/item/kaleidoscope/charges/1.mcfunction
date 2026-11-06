playsound stellarity:item.kaleidoscope.level_1 player @a[distance=0..] ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 0.55 1
playsound minecraft:item.firecharge.use player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.5 1.2

particle end_rod ^ ^ ^ 0 0 0 0.08 18
particle flame ^ ^ ^ 0 0 0 0.08 32
particle firework ^ ^ ^ 0 0 0 0.08 18
particle cloud ^ ^ ^ 0 0 0 0.08 18

particle crit ^ ^ ^ 0 0 0 0.6 24

execute positioned ^ ^ ^ run function stellarity:item/kaleidoscope/charges/1_wave

function stellarity:item/kaleidoscope/charges/damage/1

scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge_progress
scoreboard players reset @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.item.kaleidoscope.charge
