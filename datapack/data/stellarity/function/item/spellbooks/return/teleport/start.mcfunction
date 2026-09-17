scoreboard players set @a[tag=stellarity.book_of_return.in_animation,distance=..6] stellarity.item.spellbook.return.cooldown 120
tag @a[tag=stellarity.book_of_return.in_animation,distance=..6] remove stellarity.book_of_return.in_animation

data remove storage stellarity:temp book_of_return

data modify storage stellarity:temp book_of_return.player_data set from entity @p[distance=..2]
execute unless data storage stellarity:temp book_of_return.player_data.respawn run schedule function stellarity:item/spellbooks/return/teleport/locate_world_spawn 1t append

tag @p[distance=..2] add stellarity.book_of_return.teleport

execute if data storage stellarity:temp book_of_return.player_data.respawn run function stellarity:item/spellbooks/return/teleport/locate_respawn

data remove storage stellarity:temp book_of_return.player_data


particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1 force @a[distance=..48]

kill @s
