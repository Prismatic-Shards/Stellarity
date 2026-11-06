# Convert ticks
scoreboard players operation #cd_sec stellarity.misc = @s stellarity.item.rk.cooldown
scoreboard players add #cd_sec stellarity.misc 19
scoreboard players set #20 stellarity.misc 20
scoreboard players operation #cd_sec stellarity.misc /= #20 stellarity.misc

# Minimalist actionbar
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"• ","color":"#888888"},{"text":"Recharging: ","color":"#888888"},{"score":{"name":"#cd_sec","objective":"stellarity.misc"},"color":"#FFD700"},{"text":"s","color":"#888888"},{"text":" •","color":"#888888"}]
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"• ","color":"#888888"},{"text":"Recharging: ","color":"#888888"},{"score":{"name":"#cd_sec","objective":"stellarity.misc"},"color":"#FF76D0"},{"text":"s","color":"#888888"},{"text":" •","color":"#888888"}]
