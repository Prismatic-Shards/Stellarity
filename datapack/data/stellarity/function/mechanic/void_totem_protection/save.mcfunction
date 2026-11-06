effect give @s instant_damage 1 40 true
# Reset fall velocity with 1 tick of extreme levitation
  effect give @s levitation infinite 255 true

particle minecraft:cloud ~ ~1.45 ~ 0 0 0 0.3 40 force
particle minecraft:dragon_breath ~ ~1.45 ~ 0 0 0 0.2 40 force
particle minecraft:flash{color:-1} ~ ~1.45 ~ 0 0 0 0 1 force

playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~

tp @s ~ 270 ~ ~ ~

tag @s add stellarity.scheduled_void_totem_effect
schedule function stellarity:mechanic/void_totem_protection/save_schedule 2t
