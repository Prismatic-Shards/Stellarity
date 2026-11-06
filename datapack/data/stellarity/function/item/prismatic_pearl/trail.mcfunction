execute if entity @s[tag=stellarity.prismatic_pearl.bush] run function stellarity:item/prismatic_pearl/trail/bush
execute if entity @s[tag=stellarity.prismatic_pearl.coder] run function stellarity:item/prismatic_pearl/trail/coder
execute if entity @s[tag=!stellarity.prismatic_pearl.bush,tag=!stellarity.prismatic_pearl.coder] run function stellarity:item/prismatic_pearl/trail/regular

# Starting count from 2nd tick of flight for the sake of being less obtrusive
  scoreboard players add @s stellarity.misc 1
