tp @s ~ ~ ~ ~1 ~
scoreboard players set #base_angle stellarity.misc 360
scoreboard players operation #base_angle stellarity.misc /= @s stellarity.mechanics.cauldron_crafting.items_inside
data merge storage stellarity:temp {cauldron_crafting:{angle:{base:0}}}
execute store result storage stellarity:temp cauldron_crafting.angle.base int 1 run scoreboard players get #base_angle stellarity.misc
function stellarity:mechanic/cauldron_crafting/teleport_displays with storage stellarity:temp cauldron_crafting.angle

execute if entity @e[type=item,distance=..0.5,tag=!stellarity.brewing.ignore] run \
function stellarity:mechanic/cauldron_crafting/add_item/count

execute positioned ~ ~0.8 ~ as @e[type=interaction,distance=..1.1,tag=stellarity.brewing.interaction] if data entity @s interaction at @s run function stellarity:mechanic/cauldron_crafting/drop_item
execute if entity @a[distance=..2.5,predicate=kohara:player/is_sneaking] positioned ~ ~0.8 ~ as @e[type=interaction,distance=..1.1,tag=stellarity.brewing.interaction,limit=1] at @s run function stellarity:mechanic/cauldron_crafting/drop_item

data merge storage stellarity:temp {cauldron_crafting:{item:{},ingredients:[],result:{}}}
execute positioned ~ ~0.8 ~ as @e[type=item_display,distance=..1.1,tag=stellarity.brewing.item_display] run function stellarity:mechanic/cauldron_crafting/list_insides/list
function stellarity:mechanic/cauldron_crafting/crafting/checks

execute unless block ~ ~ ~ water_cauldron run function stellarity:mechanic/cauldron_crafting/dragons_breath/remove

execute if score @s stellarity.mechanics.cauldron_crafting.breath_left matches 1 run \
particle dragon_breath ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 1 force @a[distance=..32]
execute if score @s stellarity.mechanics.cauldron_crafting.breath_left matches 2 run \
particle dragon_breath ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 2 force @a[distance=..32]
execute if score @s stellarity.mechanics.cauldron_crafting.breath_left matches 3 run \
particle dragon_breath ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 3 force @a[distance=..32]
execute if score @s stellarity.mechanics.cauldron_crafting.breath_left matches 4 run \
particle dragon_breath ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 4 force @a[distance=..32]
execute if score @s stellarity.mechanics.cauldron_crafting.breath_left matches 5.. run \
particle dragon_breath ~ ~0.55 ~ 0.25 0.05 0.25 0.00577 5 force @a[distance=..32]
