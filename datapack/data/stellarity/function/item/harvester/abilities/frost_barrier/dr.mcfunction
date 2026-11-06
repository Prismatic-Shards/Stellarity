effect give @s absorption 7 0 true
effect give @s resistance 7 0 false

execute store result score #sound stellarity.misc run random value 1..5
execute if score #sound stellarity.misc matches 1 run \
	playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.8 1.1
execute if score #sound stellarity.misc matches 2 run \
	playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.8 1.2
execute if score #sound stellarity.misc matches 3 run \
	playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.8 1.3
execute if score #sound stellarity.misc matches 4 run \
	playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.8 1.4
execute if score #sound stellarity.misc matches 5 run \
	playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.8 1.5
