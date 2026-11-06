# Spawn rk_hit
execute if entity @s[tag=stellarity.vfx.ascended] run data merge entity @s {transformation:{scale:[1.4f,1.4f,1.4f]},teleport_duration:1,interpolation_duration:8,item:{components:{"minecraft:custom_model_data":{colors:[16777215,16753920]}}},brightness:{block:15,sky:15}}
execute unless entity @s[tag=stellarity.vfx.ascended] run data merge entity @s {transformation:{scale:[1.4f,1.4f,1.4f]},teleport_duration:1,interpolation_duration:8,item:{components:{"minecraft:custom_model_data":{colors:[16777215,16742096]}}},brightness:{block:15,sky:15}}
