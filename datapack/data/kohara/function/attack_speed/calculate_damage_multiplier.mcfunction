# mul = 0.2 + ((t + 0.5) / T) ^ 2 * 0.8
#
# t - ticks since last attack or since weapon was drawn out
# T - 20 / attackSpeed

# This one has to be a lot larger,
# or there will be 80% (8020 / 100) instead of 100% 
scoreboard players set #0.2 kohara.misc 2000
scoreboard players set #0.8 kohara.misc 80
scoreboard players set #0.5 kohara.misc 50
scoreboard players set #2 kohara.misc 200

scoreboard players set #100 kohara.misc 100
scoreboard players set #1000 kohara.misc 1000

# T
function kohara:attack_speed/calculate_cooldown
scoreboard players operation #temp2 kohara.misc = #attack_cooldown kohara.misc
scoreboard players operation #temp2 kohara.misc *= #100 kohara.misc

# t
scoreboard players operation #temp kohara.misc = #time_since_last_attack kohara.misc
scoreboard players operation #temp kohara.misc *= #1000 kohara.misc
scoreboard players operation #temp kohara.misc += #0.5 kohara.misc

scoreboard players operation #temp kohara.misc /= #temp2 kohara.misc

scoreboard players operation #temp kohara.misc *= #temp kohara.misc

scoreboard players operation #temp kohara.misc *= #0.8 kohara.misc
scoreboard players operation #temp kohara.misc += #0.2 kohara.misc

scoreboard players operation #temp kohara.misc /= #100 kohara.misc
execute if score #temp kohara.misc matches 101.. run scoreboard players set #temp kohara.misc 100

scoreboard players operation #multiplier kohara.misc = #temp kohara.misc
