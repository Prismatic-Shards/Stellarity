scoreboard players set #min stellarity.misc 300
scoreboard players set #max stellarity.misc 900

scoreboard players set #3s stellarity.misc 60
scoreboard players set #6s stellarity.misc 120
scoreboard players set #5s stellarity.misc 100

scoreboard players operation #lure stellarity.misc = @s stellarity.misc
scoreboard players operation #lure stellarity.misc *= #5s stellarity.misc

scoreboard players operation #max stellarity.misc -= #lure stellarity.misc

execute if entity @s[tag=stellarity.using_fisher] run scoreboard players operation #min stellarity.misc -= #4s stellarity.misc
execute if entity @s[tag=stellarity.using_fisher] run scoreboard players operation #max stellarity.misc -= #8s stellarity.misc

execute store result storage stellarity:temp vfishing.min int 1 run scoreboard players get #min stellarity.misc
execute store result storage stellarity:temp vfishing.max int 1 run scoreboard players get #max stellarity.misc

function stellarity:mechanic/void_fishing/as_area_effect_cloud/roll_time/macro with storage stellarity:temp vfishing

execute store result entity @s Rotation[0] float 1 run random value 1..360
