# Ambient sound timer
  scoreboard players add @s stellarity.misc 1
  execute if score @s stellarity.misc matches 75 run function stellarity:entity/pixie/sounds/ambient

# Ensure particle variant color is assigned (fixes lost particles)
  execute unless score @s stellarity.misc3 matches 1..4 unless entity @s[tag=stellarity.pixie.radiant] store result score @s stellarity.misc3 run random value 1..4

execute store result score @s stellarity.misc2 run data get entity @s HurtTime
execute if score @s stellarity.misc2 matches 9.. run function stellarity:entity/pixie/sounds/hurt

execute if score @s stellarity.misc2 matches 1.. run function stellarity:entity/pixie/particles/hurt
execute if score @s stellarity.misc2 matches 0 run function stellarity:entity/pixie/particles/regular

effect clear @s glowing

