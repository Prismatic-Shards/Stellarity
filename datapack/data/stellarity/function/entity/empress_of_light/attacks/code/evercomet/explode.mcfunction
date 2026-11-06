particle minecraft:explosion ~ ~ ~
particle minecraft:explosion_emitter ~ ~ ~
execute as @a[distance=..5,nbt={HurtTime:0s}] at @s run function stellarity:entity/empress_of_light/attacks/code/evercomet/damage
kill @s