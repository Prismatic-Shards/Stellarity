tag @s add stellarity.floral_armor.velocity
tag @s add stellarity.floral_arrow
tag @s add stellarity.arrow

data modify storage stellarity:temp floral_armor.arrow set from entity @s

execute store result score #velocity.x stellarity.misc run data get storage stellarity:temp floral_armor.arrow.Motion[0] 10000
execute store result score #velocity.y stellarity.misc run data get storage stellarity:temp floral_armor.arrow.Motion[1] 10000
execute store result score #velocity.z stellarity.misc run data get storage stellarity:temp floral_armor.arrow.Motion[2] 10000

execute store result storage stellarity:temp floral_armor.arrow.Motion[0] double 0.000125 run scoreboard players get #velocity.x stellarity.misc
execute store result storage stellarity:temp floral_armor.arrow.Motion[1] double 0.000125 run scoreboard players get #velocity.y stellarity.misc
execute store result storage stellarity:temp floral_armor.arrow.Motion[2] double 0.000125 run scoreboard players get #velocity.z stellarity.misc

# Reduce damage multiplier by 20% so that the net damage gain is 0
  execute store result score #damage stellarity.misc run data get storage stellarity:temp floral_armor.arrow.damage 100

scoreboard players set #80 stellarity.misc 80
scoreboard players set #100 stellarity.misc 100

scoreboard players operation #damage stellarity.misc *= #80 stellarity.misc
scoreboard players operation #damage stellarity.misc /= #100 stellarity.misc

execute store result storage stellarity:temp floral_armor.arrow.damage float 0.01 run scoreboard players get #damage stellarity.misc

data modify entity @s damage set from storage stellarity:temp floral_armor.arrow.damage
data modify entity @s Motion set from storage stellarity:temp floral_armor.arrow.Motion
