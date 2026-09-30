execute store result score #peek stellarity.misc run data get entity @s Peek
execute if score #peek stellarity.misc matches 0 run playsound stellarity:entity.shulking.shell_hit hostile @a ~ ~ ~ 2 1
execute if score #peek stellarity.misc matches 1.. run playsound stellarity:entity.shulking.hurt hostile @a ~ ~ ~ 2 1
execute if score @s stellarity.shulking.state matches 0 if score #peek stellarity.misc matches 1.. run playsound stellarity:entity.shulking.stagger_hit hostile @a ~ ~ ~ 2 1
