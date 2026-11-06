# Timer
  scoreboard players add @s stellarity.misc 1

# Roll the amount of stars
# It's actually inverted, so 3 = 1 star, 1 = 3 stars
# Don't ask my why, it was easier to do it that way
  execute store result score @s[scores={stellarity.misc=1}] stellarity.misc2 run random value 1..3

# Summon stars
  execute \
  if score @s stellarity.misc2 matches 1..3 \
  if score @s stellarity.misc matches 1 \
  run function stellarity:item/starstruck_shield/summon_star

execute \
if score @s stellarity.misc2 matches 1..2 \
if score @s stellarity.misc matches 5 \
run function stellarity:item/starstruck_shield/summon_star

execute \
if score @s stellarity.misc2 matches 1 \
if score @s stellarity.misc matches 9 \
run function stellarity:item/starstruck_shield/summon_star
