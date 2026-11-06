tag @s remove stellarity.can_fish_out

function stellarity:mechanic/void_fishing/as_area_effect_cloud/stop


particle poof ~ ~ ~ 0 0 0 0.14 35 force
execute as @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] run function stellarity:mechanic/void_fishing/as_player/as_self

execute positioned ~ ~.5 ~ run function stellarity:mechanic/void_fishing/as_area_effect_cloud/decide_drop

execute as @n[type=item] run function stellarity:mechanic/void_fishing/as_item/motion

function stellarity:mechanic/void_fishing/as_area_effect_cloud/wave
