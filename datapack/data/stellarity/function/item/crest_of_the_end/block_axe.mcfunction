advancement revoke @s only stellarity:event/item/crest/block_axe

particle explosion_emitter ~ ~1.1 ~ 0 0 0 1 1 force @a[distance=..32]
particle minecraft:dragon_breath ~ ~ ~ 1.75 1.75 1.75 0.04 120 normal
particle poof ~ ~ ~ 2.2 2.2 2.2 0 60 force

playsound minecraft:entity.generic.explode player @a[distance=0..]
playsound minecraft:entity.ender_dragon.growl player @a[distance=0..]

scoreboard players set @s stellarity.item.crest.bonus_dmg 3
attribute @s attack_damage modifier remove stellarity:crest
attribute @s attack_damage modifier add stellarity:crest 0.45 add_multiplied_base
title @s actionbar [{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛⬛","color":"#B921E7"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

execute as @e[type=!#kohara:invalid_targets,distance=0.01..4.5] run function stellarity:item/crest_of_the_end/explosion
