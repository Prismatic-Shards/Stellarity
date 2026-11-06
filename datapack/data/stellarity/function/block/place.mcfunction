

# fail to place cuz entity or block in the way
  execute align xyz if entity @e[dx=0,dy=0,dz=0,type=!#stellarity:place_block_hitbox] run scoreboard players set @s stellarity.misc 1
  execute unless block ~ ~ ~ #replaceable run scoreboard players set @s stellarity.misc 1

# Placements
# all
# wall
# ceiling
# floor
# wall_ceiling
# make up more as needed and implement more checks as needed

# orientation restrictions
  execute if data entity @s data."stellarity:block"{"valid_placement":"ceiling"} unless data entity @s {"Facing":0b} run scoreboard players set @s stellarity.misc 1

execute if score @s stellarity.misc matches 1 run function stellarity:block/place/fail with entity @s data."stellarity:block"
execute unless score @s stellarity.misc matches 1 run function stellarity:block/place/success with entity @s data."stellarity:block"


kill @s
stopsound @a[distance=..32] * entity.glow_item_frame.place
stopsound @a[distance=..32] * entity.glow_item_frame.break
