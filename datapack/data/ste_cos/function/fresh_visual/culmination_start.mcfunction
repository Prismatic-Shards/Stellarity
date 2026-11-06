# ste_cos:fresh_visual/culmination_start

stopsound @a


execute as @a at @s run particle flash{color:[0.85,0.25,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1 force
execute as @a at @s run particle dust{color:[0.12,0.0,0.22],scale:4.0} ^ ^ ^1 0.1 0.1 0.1 0 45 force

playsound block.respawn_anchor.deplete ambient @a 0 98 0 32.0 0.5
