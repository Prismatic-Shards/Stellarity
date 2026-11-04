# Exit conditions: released sneak, flying, or timer expired
execute unless predicate kohara:player/is_sneaking run return run function stellarity:item/radiant_kaleidoscope/guard/end
execute if predicate kohara:player/gliding run return run function stellarity:item/radiant_kaleidoscope/guard/end
execute if score @s stellarity.item.rk.shield_timer matches ..0 run return run function stellarity:item/radiant_kaleidoscope/guard/end

# Decrement shield timer
scoreboard players remove @s stellarity.item.rk.shield_timer 1

# Maintain protection and restrictions
effect give @s minecraft:resistance 2 1 true
effect give @s minecraft:mining_fatigue 2 255 true
effect give @s minecraft:weakness 2 255 true

# Continuous modular guard rings VFX (Golden-Orange vs Rainbow)
execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run function stellarity:item/radiant_kaleidoscope_ascended/vfx/guard_rings
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run function stellarity:item/radiant_kaleidoscope/vfx/guard_rings

# Spectral flash every 1.5 seconds (30 ticks)
execute if score @s stellarity.item.rk.shield_timer matches 30 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 60 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 90 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 120 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 150 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 180 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 210 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 240 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 270 run function stellarity:item/radiant_kaleidoscope/guard/pulse
execute if score @s stellarity.item.rk.shield_timer matches 300 run function stellarity:item/radiant_kaleidoscope/guard/pulse

# Actionbar countdown
scoreboard players operation #shield_sec stellarity.misc = @s stellarity.item.rk.shield_timer
scoreboard players add #shield_sec stellarity.misc 19
scoreboard players set #20 stellarity.misc 20
scoreboard players operation #shield_sec stellarity.misc /= #20 stellarity.misc

execute if predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"🛡️ ","color":"#FFD700","bold":true},{"text":"Solar Aegis Active: ","color":"#FFFFFF"},{"score":{"name":"#shield_sec","objective":"stellarity.misc"},"color":"#FFD700","bold":true},{"text":"s (-26% DMG)","color":"#FFAA00"},{"text":" 🛡️","color":"#FFD700","bold":true}]
execute unless predicate stellarity:item/holding/radiant_kaleidoscope_ascended run title @s actionbar [{"text":"🛡️ ","color":"#00FFFF","bold":true},{"text":"Radiant Guard Active: ","color":"#FFFFFF"},{"score":{"name":"#shield_sec","objective":"stellarity.misc"},"color":"#00FFAA","bold":true},{"text":"s (-26% DMG)","color":"#00FFAA"},{"text":" 🛡️","color":"#00FFFF","bold":true}]
