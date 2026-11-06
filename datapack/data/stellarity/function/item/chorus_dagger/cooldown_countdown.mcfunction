# Ticked every 5 ticks
  scoreboard players remove @s stellarity.item.chorus_dagger.cooldown 5

execute if score @s stellarity.item.chorus_dagger.cooldown matches 61..160 run particle minecraft:dust_color_transition{from_color: [0.82, 0.322, 0.918], scale: 1.0, to_color: [0.549, 0.176, 0.737]} ~ ~1 ~ .3 .5 .3 0 2 normal
execute if score @s stellarity.item.chorus_dagger.cooldown matches 40..60 run particle minecraft:dust_color_transition{from_color: [0.82, 0.322, 0.918], scale: 1.0, to_color: [0.549, 0.176, 0.737]} ~ ~1 ~ .3 .5 .3 0 1 normal

execute if predicate stellarity:item/holding/chorus_dagger if score @s stellarity.item.chorus_dagger.cooldown matches 1.. run title @s actionbar [{"text":"• ","color":"#404040"},{"text":"🗡 ","color":"#AA00AA"},{"translate":"item.stellarity.chorus_dagger"},{"text":": ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"stellarity.item.chorus_dagger.cooldown"},"color":"#D070FF"},{"text":"t","color":"#888888"},{"text":" •","color":"#404040"}]

execute if score @s stellarity.item.chorus_dagger.cooldown matches ..0 run function stellarity:item/chorus_dagger/ready
