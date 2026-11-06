# (((2 * (x^2)) / 100) + 300) * mul
# x - number of item * 10
# mul - duration multiplier
# result - buff time (in seconds)

## Material - Effect - Duration mutliplier
# Iron Ingot - Resistance (0.6x duration multiplier)
# Gold Ingot - Haste (0.7x)
# Emerald - Hero of The Village (0.85x)
# Diamond - Speed (1.1x)
# Netherite Ingot - Fire Resistance (3.8x)

scoreboard players set #2 stellarity.misc 2
scoreboard players set #20 stellarity.misc 20
scoreboard players set #100 stellarity.misc 100

scoreboard players operation #time stellarity.misc = #count stellarity.misc
scoreboard players operation #time stellarity.misc *= #time stellarity.misc
scoreboard players operation #time stellarity.misc *= #2 stellarity.misc
scoreboard players operation #time stellarity.misc /= #100 stellarity.misc
scoreboard players add #time stellarity.misc 300

scoreboard players operation #time stellarity.misc *= #mul stellarity.misc
scoreboard players operation #time stellarity.misc /= #100 stellarity.misc

# Convert to ticks (from seconds)
scoreboard players operation #time stellarity.misc *= #20 stellarity.misc
