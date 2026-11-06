# ste_cos:fresh_visual/tornado_tick

execute unless score #tornado ste_cos.age matches 60.. run scoreboard players add #tornado ste_cos.age 1

execute as @e[type=marker,tag=ste_cos.tor_core,limit=1] at @s run tp @s ~ ~ ~ ~9 0
execute as @e[type=marker,tag=ste_cos.tor_inner,limit=1] at @s run tp @s ~ ~ ~ ~5 0
execute as @e[type=marker,tag=ste_cos.tor_mid,limit=1] at @s run tp @s ~ ~ ~ ~-4 0
execute as @e[type=marker,tag=ste_cos.tor_outer,limit=1] at @s run tp @s ~ ~ ~ ~2 0

execute if score #tornado ste_cos.age matches 0.. as @e[type=marker,tag=ste_cos.tor_core,limit=1] at @s run function ste_cos:fresh_visual/tor_wave_core
execute if score #tornado ste_cos.age matches 8.. as @e[type=marker,tag=ste_cos.tor_inner,limit=1] at @s run function ste_cos:fresh_visual/tor_wave_inner
execute if score #tornado ste_cos.age matches 18.. as @e[type=marker,tag=ste_cos.tor_mid,limit=1] at @s run function ste_cos:fresh_visual/tor_wave_mid
execute if score #tornado ste_cos.age matches 32.. as @e[type=marker,tag=ste_cos.tor_outer,limit=1] at @s run function ste_cos:fresh_visual/tor_wave_outer

execute if score #tornado ste_cos.age matches 1 run playsound block.respawn_anchor.deplete ambient @a[distance=..64] 0 98 0 1.5 0.45
execute if score #tornado ste_cos.age matches 18 run playsound block.amethyst_block.resonate ambient @a[distance=..64] 0 98 0 1.5 0.50
execute if score #tornado ste_cos.age matches 35 run playsound block.respawn_anchor.deplete ambient @a[distance=..64] 0 98 0 1.8 0.55
