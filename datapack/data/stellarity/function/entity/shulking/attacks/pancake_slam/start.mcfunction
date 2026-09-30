scoreboard players set @s stellarity.shulking.state 3
scoreboard players set @s stellarity.shulking.action_timer 30

playsound stellarity:entity.shulking.jump hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.warden.emerge hostile @a ~ ~ ~ 1.5 1.5
particle explosion ~ ~1 ~ 0 0 0 1 0 force @a[distance=..64]
particle dragon_breath ~ ~1 ~ 1.5 1 1.5 0.1 40
