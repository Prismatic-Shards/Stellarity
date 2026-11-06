data merge entity @s {PierceLevel:3,Tags:["stellarity.spectral_bolt","stellarity.arrow"],NoGravity:1b,Duration:200,Silent:0b,pickup:0b,SoundEvent:"minecraft:block.amethyst_cluster.break"}

execute store result score #velocity.x stellarity.misc run data get entity @s Motion[0] 10000
execute store result score #velocity.y stellarity.misc run data get entity @s Motion[1] 10000
execute store result score #velocity.z stellarity.misc run data get entity @s Motion[2] 10000

execute store result entity @s Motion[0] double 0.000112 run scoreboard players get #velocity.x stellarity.misc
execute store result entity @s Motion[1] double 0.000112 run scoreboard players get #velocity.y stellarity.misc
execute store result entity @s Motion[2] double 0.000112 run scoreboard players get #velocity.z stellarity.misc
