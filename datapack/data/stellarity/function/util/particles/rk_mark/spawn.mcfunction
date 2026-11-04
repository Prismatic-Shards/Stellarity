# Spawn rk_mark
execute if entity @s[tag=stellarity.vfx.ascended] run data merge entity @s {transformation:{scale:[1.1f,1.1f,1.1f]},teleport_duration:1,interpolation_duration:12,item:{components:{"minecraft:custom_model_data":{colors:[16766720,16747520]}}},brightness:{block:15,sky:15}}
execute unless entity @s[tag=stellarity.vfx.ascended] run data merge entity @s {transformation:{scale:[1.1f,1.1f,1.1f]},teleport_duration:1,interpolation_duration:12,item:{components:{"minecraft:custom_model_data":{colors:[16777215,16742096]}}},brightness:{block:15,sky:15}}
