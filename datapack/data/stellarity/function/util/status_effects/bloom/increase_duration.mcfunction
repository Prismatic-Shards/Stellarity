$execute if score @s stellarity.status_effects.bloom.time matches ..2147483647 run \
	scoreboard players add @s stellarity.status_effects.bloom.damage $(damage_stack)

$execute unless score @s stellarity.status_effects.bloom.time matches ..2147483647 run \
	scoreboard players add @s stellarity.status_effects.bloom.damage $(damage_base)

$execute if score @s stellarity.status_effects.bloom.time matches ..2147483647 run \
	scoreboard players add @s stellarity.status_effects.bloom.time $(duration_stack)

$execute unless score @s stellarity.status_effects.bloom.time matches ..2147483647 run \
	scoreboard players set @s stellarity.status_effects.bloom.time $(duration_base)

scoreboard players set @s stellarity.status_effects.bloom.cooldown 16

execute anchored eyes rotated ~ 0 run playsound minecraft:block.beehive.work master @a[distance=0..] ^ ^.55 ^ 1 1
particle happy_villager ^ ^0.9 ^ 0.35 0.25 0.35 0 5 force @a[distance=..64]
