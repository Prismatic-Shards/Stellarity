# Age
  scoreboard players add @s stellarity.misc 1

# Smol spawn animation
# Rotating
  execute if score @s[tag=!stellarity.empress_of_light.ethereal_lance.no_rotate] stellarity.misc matches ..5 facing entity @p eyes run tp @s ^ ^ ^-.22 ~ ~5
  execute if score @s[tag=!stellarity.empress_of_light.ethereal_lance.no_rotate] stellarity.misc matches 6..10 facing entity @p eyes run tp @s ^ ^ ^-.11 ~ ~5
  execute if score @s[tag=!stellarity.empress_of_light.ethereal_lance.no_rotate] stellarity.misc matches 11..15 facing entity @p eyes run tp @s ^ ^ ^-.05 ~ ~5
  execute if score @s[tag=!stellarity.empress_of_light.ethereal_lance.no_rotate] stellarity.misc matches 16..20 facing entity @p eyes run tp @s ^ ^ ^-.018 ~ ~5

# Night / Day
execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.misc matches 26 run playsound entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 0.66
execute unless score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.misc matches 26.. run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/move

# Radiant
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.misc matches 22 run playsound entity.arrow.shoot hostile @a[distance=0..] ~ ~ ~ 2 0.66
execute if score #empress_of_light.is_radiant stellarity.misc matches 1 if score @s stellarity.misc matches 22.. run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/move

execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.red] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/red
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.orange] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/orange
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.yellow] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/yellow
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.lime] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/lime
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.aqua] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/aqua
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.blue] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/blue
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.magenta] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/magenta
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.purple] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/purple
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance.gold] run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/models/gold

execute if entity @e[type=player,distance=..1.2] as @e[type=player,distance=..1.2,nbt={HurtTime:0s}] at @s run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/damage

execute if score @s stellarity.misc matches 61.. run kill @s
