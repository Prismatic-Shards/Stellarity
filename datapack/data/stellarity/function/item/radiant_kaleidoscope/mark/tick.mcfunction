# Death check
execute unless entity @s[type=ender_dragon] if data entity @s {Health:0f} run return run function stellarity:item/radiant_kaleidoscope/mark/kill
execute if entity @s[type=ender_dragon] if data entity @s {DragonPhase:9} run return run function stellarity:item/radiant_kaleidoscope/mark/kill

# Countdown timer
scoreboard players remove @s stellarity.item.rk.mark_timer 1

# Timeout check
execute if score @s stellarity.item.rk.mark_timer matches ..0 run return run function stellarity:item/radiant_kaleidoscope/mark/timeout

# Render visuals
function stellarity:item/radiant_kaleidoscope/mark/render
