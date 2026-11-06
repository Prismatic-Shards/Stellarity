# Rotation
# Random for type 1 and 2
# Set for type 3
  execute if score #ethereal_lance.type stellarity.misc matches 1..2 store result entity @s Rotation[0] float 1 run random value 0..360
  execute if score #ethereal_lance.type stellarity.misc matches 3 as @s at @s rotated as @p rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score #ethereal_lance.type stellarity.misc matches 1 rotated as @s positioned ^ ^1.15 ^5 run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/1/spawn
execute if score #ethereal_lance.type stellarity.misc matches 2 rotated as @s positioned ^ ^1.15 ^-10 run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/2/spawn

execute if score #ethereal_lance.type stellarity.misc matches 3 positioned ^ ^1.15 ^-3 run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/3/spawn
