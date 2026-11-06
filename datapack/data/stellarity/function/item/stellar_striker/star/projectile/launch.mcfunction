summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.star","smithed.entity","smithed.strict"]}

execute as @n[type=marker,tag=stellarity.star] at @s facing entity @n[type=area_effect_cloud,tag=stellarity.target] eyes run tp @s ~ ~ ~ ~ ~

# Random velocity
  execute store result score @n[type=marker,tag=stellarity.star] stellarity.misc3 run random value 125..145
