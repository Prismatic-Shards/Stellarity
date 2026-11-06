# Base sweep damage = 60% of dealt damage
  scoreboard players set #60 stellarity.misc 60
  scoreboard players operation #sweep_damage stellarity.misc = #damage stellarity.misc
  scoreboard players operation #sweep_damage stellarity.misc *= #70 stellarity.misc
  scoreboard players operation #sweep_damage stellarity.misc /= #100 stellarity.misc

execute store result storage stellarity:temp starless_scythe.sweep.damage float 0.001 run scoreboard players get #sweep_damage stellarity.misc

playsound stellarity:item.starless_scythe.swing player @a[distance=0..] ~ ~ ~ 1

execute positioned ^ ^-0.6 ^ run \
function stellarity:item/starless_scythe/sweep/aoe
execute rotated ~110 0 positioned ^ ^-0.6 ^1.1 run \
function stellarity:item/starless_scythe/sweep/aoe
execute rotated ~-110 0 positioned ^ ^-0.6 ^1.1 run \
function stellarity:item/starless_scythe/sweep/aoe

execute positioned ^ ^ ^-1.5 run function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/large_sweep_glowing",despawn_value:9,state:fixed,spread_initial:0,spread_radius:0,id:scythe_sweep}
