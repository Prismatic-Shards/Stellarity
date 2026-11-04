scoreboard players remove #DISTANCE bdlib.raycast 1

$execute if score #COLLIDE_BLOCK bdlib.raycast matches 1 unless block ~ ~ ~ $(block_ignore) run function stellarity_desert_scourge:bdlib/raycast/zzzzzz/collide_block with storage stellarity_desert_scourge:bdlib_temp raycast

$execute if score #DISTANCE bdlib.raycast matches 0 run particle end_rod ^ ^ ^-$(interval)
$execute if score #DISTANCE bdlib.raycast matches 1.. positioned ^ ^ ^$(interval) run function stellarity_desert_scourge:bdlib/raycast/zzzzzz/loop with storage stellarity_desert_scourge:bdlib_temp raycast