# misc2 determines block
# -1 is for no drop
# 0 is default for normal break
# 1 is gonna be grass checking
  scoreboard players set @s stellarity.misc2 0

execute at @s align xyz unless entity @n[type=item,dx=1,dy=1,dz=1] run scoreboard players set @s stellarity.misc2 -1
execute at @s align xyz unless entity @n[type=item,dx=1,dy=1,dz=1,nbt={Item:{id:"minecraft:grass_block"}}] if entity @s[tag=stellarity.block.ender_grass_block] run scoreboard players set @s stellarity.misc2 1

execute align xyz run kill @e[type=item,dx=1,dy=1,dz=1,nbt={Age:0s}]
execute align xyz run kill @e[type=item,dx=1,dy=1,dz=1,nbt={Age:1s}]


$execute if score @s stellarity.misc2 matches 0 at @s unless data entity @p[gamemode=!spectator] {playerGameType:1} run loot spawn ~ ~ ~ loot $(loot_table)
execute if score @s stellarity.misc2 matches 1 at @s unless data entity @p[gamemode=!spectator] {playerGameType:1} run loot spawn ~ ~ ~ loot stellarity:block/ender_dirt

kill @s

