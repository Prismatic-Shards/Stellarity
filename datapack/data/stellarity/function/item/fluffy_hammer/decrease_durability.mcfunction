scoreboard players set @s stellarity.misc2 0
execute store result score @s stellarity.misc2 run data get entity @s item.components."minecraft:damage"
scoreboard players set @s stellarity.misc3 2031
execute store result score @s stellarity.misc3 run data get entity @s item.components."minecraft:max_damage"
execute store result entity @s item.components."minecraft:damage" int 1 run scoreboard players add @s stellarity.misc2 5

# durability check
  execute if score @s stellarity.misc2 >= @s stellarity.misc3 run function stellarity:item/fluffy_hammer/break
