# ste_cos:fresh_visual/heart_beat

execute if score #heart_stage ste_cos.flags matches 0 run playsound entity.warden.heartbeat hostile @a[distance=..96] ~ ~ ~ 3.0 0.55
execute if score #heart_stage ste_cos.flags matches 1..3 run playsound entity.warden.heartbeat hostile @a[distance=..96] ~ ~ ~ 3.0 0.60
execute if score #heart_stage ste_cos.flags matches 4..6 run playsound entity.warden.heartbeat hostile @a[distance=..96] ~ ~ ~ 3.0 0.65
execute if score #heart_stage ste_cos.flags matches 7..9 run playsound entity.warden.heartbeat hostile @a[distance=..96] ~ ~ ~ 3.0 0.70
execute if score #heart_stage ste_cos.flags matches 10.. run playsound entity.warden.heartbeat hostile @a[distance=..96] ~ ~ ~ 3.0 0.75

execute if score #heart_stage ste_cos.flags matches 0 run particle dust_color_transition{from_color:[0.7,0.1,0.9],scale:2.2,to_color:[0.15,0.0,0.35]} ~ ~ ~ 0.8 0.8 0.8 0.05 24 force @a
execute if score #heart_stage ste_cos.flags matches 0 run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.02 12 force @a
execute if score #heart_stage ste_cos.flags matches 0 run particle reverse_portal ~ ~ ~ 1.0 1.0 1.0 0.05 18 force @a
execute if score #heart_stage ste_cos.flags matches 0 run return 1

scoreboard players add #heart_flash_toggle ste_cos.flags 1
execute if score #heart_flash_toggle ste_cos.flags matches 2.. run scoreboard players set #heart_flash_toggle ste_cos.flags 0
execute if score #heart_flash_toggle ste_cos.flags matches 0 run particle flash{color:[0.95,0.25,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score #heart_flash_toggle ste_cos.flags matches 1 run particle flash{color:[0.50,0.05,0.90,1.0]} ~ ~ ~ 0 0 0 0 1 force @a
execute if score #heart_stage ste_cos.flags matches 10.. run particle flash{color:[1.0,0.40,1.0,1.0]} ~ ~ ~ 0 0 0 0 2 force @a

execute if score #heart_stage ste_cos.flags matches 1..3 run particle dust_color_transition{from_color:[0.8,0.1,1.0],scale:1.8,to_color:[0.15,0.0,0.4]} ~ ~ ~ 0.6 0.6 0.6 0.05 20 force @a
execute if score #heart_stage ste_cos.flags matches 1..3 run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.02 12 force @a

execute if score #heart_stage ste_cos.flags matches 4..6 run particle dust_color_transition{from_color:[0.85,0.15,1.0],scale:2.6,to_color:[0.15,0.0,0.4]} ~ ~ ~ 0.9 0.9 0.9 0.08 28 force @a
execute if score #heart_stage ste_cos.flags matches 4.. run particle witch ~ ~ ~ 1.0 1.0 1.0 0 25 force @a
execute if score #heart_stage ste_cos.flags matches 4.. run particle electric_spark ~ ~ ~ 0.8 0.8 0.8 0.05 18 force @a

execute if score #heart_stage ste_cos.flags matches 7..9 run particle dust_color_transition{from_color:[0.9,0.2,1.0],scale:3.2,to_color:[0.2,0.0,0.5]} ~ ~ ~ 1.2 1.2 1.2 0.1 32 force @a
execute if score #heart_stage ste_cos.flags matches 7.. run particle end_rod ~ ~ ~ 1.3 1.3 1.3 0.05 25 force @a
execute if score #heart_stage ste_cos.flags matches 7.. run particle electric_spark ~ ~ ~ 1.5 1.5 1.5 0.1 30 force @a

execute if score #heart_stage ste_cos.flags matches 10.. run particle dust_color_transition{from_color:[1.0,0.3,1.0],scale:4.0,to_color:[0.25,0.0,0.6]} ~ ~ ~ 1.8 1.8 1.8 0.15 45 force @a
execute if score #heart_stage ste_cos.flags matches 10.. run particle reverse_portal ~ ~ ~ 2.5 2.5 2.5 0.1 50 force @a
execute if score #heart_stage ste_cos.flags matches 10.. run playsound entity.warden.sonic_boom hostile @a[distance=..96] ~ ~ ~ 3.0 0.65
