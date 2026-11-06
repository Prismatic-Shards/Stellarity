playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~ 1 0.66

execute if entity @s[name="kohara_"] run playsound stellarity:item.spirit_dagger.slash_kohara player @a[distance=0..] ~ ~ ~ 1.5 1
execute if entity @s[name=!"kohara_"] run playsound stellarity:item.spirit_dagger.teleport player @a[distance=0..] ~ ~ ~ 1.5 1
