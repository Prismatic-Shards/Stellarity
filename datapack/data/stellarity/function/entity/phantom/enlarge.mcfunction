# 1 real life hour = 72k MC ticks
scoreboard players set #hour stellarity.misc 72000
scoreboard players set #half_hour stellarity.misc 36000
scoreboard players set #in_game_day stellarity.misc 24000

# How many extra hours of not resting properly are there?
scoreboard players operation #last_rest stellarity.misc = @p kohara.time_since_rest
scoreboard players operation #last_rest stellarity.misc -= #hour stellarity.misc 
execute if score #last_rest stellarity.misc matches ..0 run scoreboard players set #last_rest stellarity.misc 0

# Increases the size by one for every extra day without sleep
scoreboard players operation #last_rest stellarity.misc /= #in_game_day stellarity.misc
scoreboard players operation #size stellarity.misc = #last_rest stellarity.misc
execute if score #size stellarity.misc matches 12.. run scoreboard players set #size stellarity.misc 12
execute store result entity @s size byte 1 run scoreboard players get #size stellarity.misc

# Get the outcome Phantom size and store it in the entity's score
scoreboard players set #1 stellarity.misc 1
scoreboard players operation @s stellarity.phantom.size = #size stellarity.misc

# Modify HP
# 10 + size * 2
attribute @s max_health base set 10

scoreboard players operation #mul stellarity.misc = @s stellarity.phantom.size
scoreboard players set #2 stellarity.misc 2
scoreboard players set #hp stellarity.misc 10

scoreboard players operation #mul stellarity.misc *= #2 stellarity.misc
scoreboard players operation #hp stellarity.misc += #mul stellarity.misc

execute store result entity @s attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #hp stellarity.misc

# Heal missing HP
effect give @s instant_damage 1 10 true

# Modify Armor
# Equal to third of its size
scoreboard players set #3 stellarity.misc 3
scoreboard players operation #armor stellarity.misc = #size stellarity.misc
scoreboard players operation #armor stellarity.misc /= #3 stellarity.misc
execute store result entity @s attributes[{id:"minecraft:armor"}].base float 1 run scoreboard players get #armor stellarity.misc

tag @s add stellarity.phantom.aware

scoreboard players operation #size stellarity.misc += #1 stellarity.misc
scoreboard players operation @s stellarity.phantom.size = #size stellarity.misc

scoreboard players operation @s stellarity.phantom.wings_drop_chance = @s stellarity.phantom.size
scoreboard players operation @s stellarity.phantom.wings_drop_chance += #3 stellarity.misc


team join stellarity.phantom_glow @s
