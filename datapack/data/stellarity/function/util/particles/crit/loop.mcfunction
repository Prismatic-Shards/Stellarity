tp @s ~ ~-0.01 ~

execute if score @s kohara.misc matches 2 run data merge entity @s {transformation:{scale:[0.8f,0.8f,0.81f]},start_interpolation:-1,interpolation_duration:9,teleport_duration:6}
execute if score @s kohara.misc matches 3 run tp @s ~ ~1 ~

execute if score @s kohara.misc matches 62 run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:-1,interpolation_duration:10,teleport_duration:5}
