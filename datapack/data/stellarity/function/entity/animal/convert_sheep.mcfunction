execute store result score @s stellarity.misc run data get entity @s Age

# newborns
  execute if score @s stellarity.misc matches -24000..-23997 if entity @e[type=sheep,tag=stellarity.animal,dx=0,dy=0,dz=0] run tag @s add stellarity.animal

# end adults
  execute if entity @s[predicate=stellarity:location/in_the_end] run tag @s add stellarity.animal

execute if entity @s[tag=stellarity.animal] run tag @s add smithed.entity
execute unless entity @s[tag=stellarity.animal] run tag @s add stellarity.invalid_animal
