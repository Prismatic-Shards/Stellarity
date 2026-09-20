scoreboard players add @s stellarity.item.dragonblade.punch_progress 1
scoreboard players set @s stellarity.item.dragonblade.until_punch_reset 2
tag @s add stellarity.dragonblade_punching

execute if score @s stellarity.item.dragonblade.punch_progress matches 1 run playsound stellarity:item.dragonblade.prepare_punch player @a[distance=0..] ~ ~ ~
execute if score @s stellarity.item.dragonblade.punch_progress matches 5 run playsound stellarity:item.dragonblade.pre_punch player @a[distance=0..] ~ ~ ~
execute if score @s stellarity.item.dragonblade.punch_progress matches 16 run function stellarity:item/dragonblade/punch/motion/start
