scoreboard players remove @s stellarity.misc 1

# Ensure yellow glowing outline
team join stellarity.yellow_glow @s
data modify entity @s Glowing set value 1b

# Smooth upward float
tp @s ~ ~0.07 ~

# Radiant aura particles while rising
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 4
particle dust{color:[1.0,0.9,0.3],scale:1.2} ~ ~ ~ 0.25 0.25 0.25 0 6
particle portal ~ ~ ~ 0.15 0.15 0.15 0.05 3

# When apex is reached, trigger summon explosion and spawn Empress
execute if score @s stellarity.misc matches ..0 run function stellarity:mechanic/altar_of_the_sacred/ascending_finish
