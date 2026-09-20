stopsound @a neutral minecraft:entity.ender_pearl.throw
kill @n[type=ender_pearl]

scoreboard players set #pearl_given stellarity.misc -1
execute as @s[gamemode=!creative,gamemode=!spectator] store result score #pearl_given stellarity.misc run loot give @s loot stellarity:item/trinket/prismatic_pearl
execute as @s[gamemode=!creative,gamemode=!spectator] if score #pearl_given stellarity.misc matches 0 at @s run loot spawn ~ ~ ~ loot stellarity:item/trinket/prismatic_pearl

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.44 0
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 1
