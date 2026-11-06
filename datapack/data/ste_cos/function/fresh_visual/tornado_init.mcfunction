# ste_cos:fresh_visual/tornado_init

kill @e[type=marker,tag=ste_cos.tornado_marker]

scoreboard objectives add ste_cos.age dummy

summon marker 0 99 0 {Tags:["ste_cos.tornado_marker","ste_cos.tor_core"]}
summon marker 0 99 0 {Tags:["ste_cos.tornado_marker","ste_cos.tor_inner"]}
summon marker 0 99 0 {Tags:["ste_cos.tornado_marker","ste_cos.tor_mid"]}
summon marker 0 99 0 {Tags:["ste_cos.tornado_marker","ste_cos.tor_outer"]}

scoreboard players set #tornado ste_cos.age 0
