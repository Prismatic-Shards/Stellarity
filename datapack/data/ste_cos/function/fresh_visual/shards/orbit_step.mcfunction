# ste_cos:fresh_visual/shards/orbit_step

scoreboard players set #shard_orbit_timer ste_cos.timer 0
scoreboard players add #shard_orbit_step ste_cos.flags 1
execute if score #shard_orbit_step ste_cos.flags matches 16.. run scoreboard players set #shard_orbit_step ste_cos.flags 0

execute if score #shard_orbit_step ste_cos.flags matches 0 run function ste_cos:fresh_visual/shards/step_0
execute if score #shard_orbit_step ste_cos.flags matches 1 run function ste_cos:fresh_visual/shards/step_1
execute if score #shard_orbit_step ste_cos.flags matches 2 run function ste_cos:fresh_visual/shards/step_2
execute if score #shard_orbit_step ste_cos.flags matches 3 run function ste_cos:fresh_visual/shards/step_3
execute if score #shard_orbit_step ste_cos.flags matches 4 run function ste_cos:fresh_visual/shards/step_4
execute if score #shard_orbit_step ste_cos.flags matches 5 run function ste_cos:fresh_visual/shards/step_5
execute if score #shard_orbit_step ste_cos.flags matches 6 run function ste_cos:fresh_visual/shards/step_6
execute if score #shard_orbit_step ste_cos.flags matches 7 run function ste_cos:fresh_visual/shards/step_7
execute if score #shard_orbit_step ste_cos.flags matches 8 run function ste_cos:fresh_visual/shards/step_8
execute if score #shard_orbit_step ste_cos.flags matches 9 run function ste_cos:fresh_visual/shards/step_9
execute if score #shard_orbit_step ste_cos.flags matches 10 run function ste_cos:fresh_visual/shards/step_10
execute if score #shard_orbit_step ste_cos.flags matches 11 run function ste_cos:fresh_visual/shards/step_11
execute if score #shard_orbit_step ste_cos.flags matches 12 run function ste_cos:fresh_visual/shards/step_12
execute if score #shard_orbit_step ste_cos.flags matches 13 run function ste_cos:fresh_visual/shards/step_13
execute if score #shard_orbit_step ste_cos.flags matches 14 run function ste_cos:fresh_visual/shards/step_14
execute if score #shard_orbit_step ste_cos.flags matches 15 run function ste_cos:fresh_visual/shards/step_15
