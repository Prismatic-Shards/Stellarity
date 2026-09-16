scoreboard players remove @s[scores={stellarity.empress_of_light.attack_cooldown=1..}] stellarity.empress_of_light.attack_cooldown 1
execute if entity @s[tag=stellarity.empress_of_light.attack_ready] run function stellarity:entity/empress_of_light/attacks/decide/decide

execute if score @s stellarity.empress_of_light.attack_cooldown matches 0 run function stellarity:entity/empress_of_light/attacks/decide/is_phase_2_transition

execute if entity @s[tag=stellarity.empress_of_light.dash,tag=!stellarity.empress_of_light.phase_2] run function stellarity:entity/empress_of_light/attacks/code/loops/dash
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] run function stellarity:entity/empress_of_light/attacks/code/loops/prismatic_bolts

execute as @e[type=marker,tag=stellarity.empress_of_light.evercomets] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/evercomet/loop
# Day
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts_2,tag=stellarity.empress_of_light.daytime] run function stellarity:entity/empress_of_light/attacks/code/loops/day/prismatic_bolts_2
execute if entity @s[tag=stellarity.empress_of_light.evercomet,tag=stellarity.empress_of_light.daytime] run function stellarity:entity/empress_of_light/attacks/code/loops/day/evercomet
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance,tag=stellarity.empress_of_light.daytime] run function stellarity:entity/empress_of_light/attacks/code/loops/day/ethereal_lance

# Night
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts_2,tag=stellarity.empress_of_light.nighttime] run function stellarity:entity/empress_of_light/attacks/code/loops/night/prismatic_bolts_2
execute if entity @s[tag=stellarity.empress_of_light.evercomet,tag=stellarity.empress_of_light.nighttime] run function stellarity:entity/empress_of_light/attacks/code/loops/night/evercomet
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance,tag=stellarity.empress_of_light.nighttime] run function stellarity:entity/empress_of_light/attacks/code/loops/night/ethereal_lance

# Radiant
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts_2,tag=stellarity.empress_of_light.radiant] run function stellarity:entity/empress_of_light/attacks/code/loops/radiant/prismatic_bolts_2
execute if entity @s[tag=stellarity.empress_of_light.evercomet,tag=stellarity.empress_of_light.radiant] run function stellarity:entity/empress_of_light/attacks/code/loops/radiant/evercomet
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance,tag=stellarity.empress_of_light.radiant] run function stellarity:entity/empress_of_light/attacks/code/loops/radiant/ethereal_lance
execute if entity @s[tag=stellarity.empress_of_light.dash,tag=stellarity.empress_of_light.phase_2] run function stellarity:entity/empress_of_light/attacks/code/loops/radiant/dash_phase_2

execute as @e[type=marker,tag=stellarity.empress_of_light.prismatic_bolt] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/loop
execute as @e[type=marker,tag=stellarity.empress_of_light.prismatic_bolt_2] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts_2/loop
execute as @e[type=item_display,tag=stellarity.empress_of_light.ethereal_lance] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/sword_loop
