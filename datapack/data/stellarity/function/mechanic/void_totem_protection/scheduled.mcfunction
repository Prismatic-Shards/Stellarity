effect give @s slow_falling 45 0 false

effect clear @s levitation

particle minecraft:cloud ~ ~1.45 ~ 0 0 0 0.3 40 force
particle minecraft:dragon_breath ~ ~1.45 ~ 0 0 0 0.2 40 force
particle minecraft:flash{color:-1} ~ ~1.45 ~ 0 0 0 0 1 force

playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~

attribute @s max_health base set 1
damage @s 100 mob_attack by @s
attribute @s max_health base reset

advancement grant @s only stellarity:minecraft/adventure/postmortal_2

tag @s remove stellarity.scheduled_void_totem_effect
