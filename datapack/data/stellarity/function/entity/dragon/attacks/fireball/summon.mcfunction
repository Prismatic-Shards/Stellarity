kill @s[type=dragon_fireball]
execute if entity @s[type=dragon_fireball] run scoreboard players add @e[type=ender_dragon,tag=stellarity.ender_dragon] stellarity.dragon.shulker_hell 1

summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.dragon_fireball","smithed.entity","smithed.strict","stellarity.new"]}

execute as @e[type=marker,tag=stellarity.new] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=stellarity.new] remove stellarity.new

execute as @e[type=ender_dragon,tag=stellarity.ender_dragon,scores={stellarity.dragon.health_percent=34..66}] \
unless score @s stellarity.dragon.time_chainfiring matches 1.. run \
scoreboard players set @s stellarity.dragon.time_chainfiring 12
execute as @e[type=ender_dragon,tag=stellarity.ender_dragon,scores={stellarity.dragon.health_percent=..33}] \
unless score @s stellarity.dragon.time_chainfiring matches 1.. run \
scoreboard players set @s stellarity.dragon.time_chainfiring 24
