scoreboard players add @s stellarity.misc 1

tp @s ~ ~ ~ ~10 ~

execute if score @s stellarity.misc matches 1 run playsound block.end_gateway.spawn block @a[distance=0..] ~ ~ ~ 2 0.8
execute if score @s stellarity.misc matches 1 run playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=0..] ~ ~ ~ 2 1
execute if score @s stellarity.misc matches 1 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if score @s stellarity.misc matches 1 run particle end_rod ~ ~ ~ 0 0 0 0.3 150 force
execute if score @s stellarity.misc matches 1 run particle end_rod ~ ~ ~ .35 127 .35 0.02 800 force
execute if score @s stellarity.misc matches 1 run particle dragon_breath ~ ~ ~ .35 127 .35 0.02 800 force

execute if score @s stellarity.misc matches 10.. run particle minecraft:dust_color_transition{from_color: [1.0, 0.0, 0.969], scale: 3.0, to_color: [0.0, 0.0, 0.0]} ^ ^ ^4.5 .15 .15 .15 0 4 force

execute if score @s stellarity.misc matches 100.. run kill @s

