# Low energy sound
execute as @p[predicate=stellarity:item/holding/radiant_kaleidoscope] unless score @s stellarity.item.rk.low_energy_cd matches 1.. run playsound stellarity:item.radiant_kaleidoscope.low_energy player @s ~ ~ ~ 1 1
execute as @p[predicate=stellarity:item/holding/radiant_kaleidoscope] unless score @s stellarity.item.rk.low_energy_cd matches 1.. run scoreboard players set @s stellarity.item.rk.low_energy_cd 20
