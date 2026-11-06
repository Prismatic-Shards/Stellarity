execute unless score @s stellarity.item.dragonblade.stacks matches 3.. run scoreboard players add @s stellarity.item.dragonblade.stacks 1
scoreboard players set @s stellarity.item.dragonblade.until_stack_reset 320

tag @s add stellarity.item.dragonblade.has_stacks
tag @s add stellarity.cooldown_tickdown

playsound minecraft:entity.shulker.shoot player @a[distance=0..] ~ ~ ~ 0.86 0.75

execute if score @s stellarity.item.dragonblade.stacks matches 1..2 run title @s actionbar [{"text":"• ","color":"#404040"},{"text":"🐉 ","color":"#CD6AFF"},{"translate":"item.stellarity.dragonblade"},{"text":": ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"stellarity.item.dragonblade.stacks"},"color":"#FFD700"},{"text":"/3 Stacks","color":"#AAAAAA"},{"text":" •","color":"#404040"}]
execute if score @s stellarity.item.dragonblade.stacks matches 3 run title @s actionbar [{"text":"✦ ","color":"#FFD700"},{"text":"🐉 ","color":"#CD6AFF"},{"translate":"item.stellarity.dragonblade"},{"text":": PUNCH READY! (Sneak + Attack)","color":"#FF55FF"},{"text":" ✦","color":"#FFD700"}]
execute if score @s stellarity.item.dragonblade.stacks matches 3 run function stellarity:item/dragonblade/punch_ready
