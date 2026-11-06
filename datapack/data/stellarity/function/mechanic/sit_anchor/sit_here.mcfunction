# Sit player on top of the respawn anchor block

# Ensure player is not already sitting
execute if entity @s[tag=stellarity.sitting_anchor] run return 0

# Check that the block is a respawn anchor with 4/4 charges
execute unless block ~ ~ ~ respawn_anchor[charges=4] unless block ~ ~-1 ~ respawn_anchor[charges=4] run return 0

# Determine target anchor coordinate (either current block or block below)
# Align horizontally and vertically to the top surface of the anchor block
execute if block ~ ~ ~ respawn_anchor align xyz positioned ~.5 ~1.0 ~.5 run summon minecraft:block_display ~ ~ ~ {Tags:["stellarity.anchor_seat","stellarity.marker"]}
execute if block ~ ~-1 ~ respawn_anchor positioned ~ ~-1 ~ align xyz positioned ~.5 ~1.0 ~.5 run summon minecraft:block_display ~ ~ ~ {Tags:["stellarity.anchor_seat","stellarity.marker"]}

# Mount player onto the newly created seat
ride @s mount @e[type=block_display,tag=stellarity.anchor_seat,distance=..2.0,limit=1,sort=nearest]

# Check player health to differentiate between full-HP rest vs injured healing
execute store result score @s stellarity.health run data get entity @s Health 100
execute store result score @s stellarity.max_health run attribute @s minecraft:max_health get 100
tag @s remove stellarity.sit_needs_heal
execute if score @s stellarity.health < @s stellarity.max_health run tag @s add stellarity.sit_needs_heal

# Tags and state
tag @s add stellarity.sitting_anchor
tag @s add is_sitting
scoreboard players set @s stellarity.sit_timer 0
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 1 0.8
