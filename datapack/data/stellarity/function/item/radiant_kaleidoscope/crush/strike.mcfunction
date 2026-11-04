# Crit sounds
playsound stellarity:item.radiant_kaleidoscope.mega_crit player @a ~ ~ ~ 1.5 1
playsound stellarity:item.radiant_kaleidoscope.stalactite_impact player @a ~ ~ ~ 1.4 1.1
schedule function stellarity:item/radiant_kaleidoscope/crush/after_crit 7t append

# Crush VFX
execute if entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run function stellarity:item/radiant_kaleidoscope_ascended/vfx/crush
execute unless entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run function stellarity:item/radiant_kaleidoscope/vfx/crush

# Target max health
execute store result score #target_hp kohara.misc run attribute @s minecraft:max_health get 10
execute if score #target_hp kohara.misc matches ..0 store result score #target_hp kohara.misc run data get entity @s Health 10
execute if score #target_hp kohara.misc matches ..0 run scoreboard players set #target_hp kohara.misc 200

# Percent formula (60% to 84%)
scoreboard players set #pct kohara.misc 60
execute if score @s stellarity.item.rk.mark_rank matches 2 run scoreboard players set #pct kohara.misc 64
execute if score @s stellarity.item.rk.mark_rank matches 3 run scoreboard players set #pct kohara.misc 68
execute if score @s stellarity.item.rk.mark_rank matches 4 run scoreboard players set #pct kohara.misc 72
execute if score @s stellarity.item.rk.mark_rank matches 5 run scoreboard players set #pct kohara.misc 76
execute if score @s stellarity.item.rk.mark_rank matches 6 run scoreboard players set #pct kohara.misc 80
execute if score @s stellarity.item.rk.mark_rank matches 7 run scoreboard players set #pct kohara.misc 84

# Multiply and divide
scoreboard players operation #damage kohara.misc = #target_hp kohara.misc
scoreboard players operation #damage kohara.misc *= #pct kohara.misc
scoreboard players set #100 kohara.misc 100
scoreboard players operation #damage kohara.misc /= #100 kohara.misc

# Min damage floor
execute if score #damage kohara.misc matches ..120 run scoreboard players set #damage kohara.misc 120

# Calculate damage
function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:radiant_kaleidoscope_crush",tag:"stellarity.damage.radiant_kaleidoscope"}
execute as @e[type=ender_dragon,distance=..32] run scoreboard players set @s stellarity.dragon.rk_damage_window 40
execute as @e[type=ender_dragon,distance=..32] run tag @s add stellarity.dragon.hit_by_rk
tag @e[type=marker,tag=stellarity.dragon_marker] add stellarity.dragon.hit_by_rk

# Death check
execute unless entity @s[type=ender_dragon] if data entity @s {Health:0f} at @s run return run function stellarity:item/radiant_kaleidoscope/mark/kill
execute if entity @e[type=ender_dragon,distance=..32,nbt={DragonPhase:9}] run tag @e[type=marker,tag=stellarity.dragon_marker] add stellarity.dragon.killed_by_rk
execute if entity @e[type=ender_dragon,distance=..32,nbt={DragonPhase:9}] at @s run return run function stellarity:item/radiant_kaleidoscope/mark/kill

# Inferno
function stellarity:mechanic/enchantments/infernal_infusion/apply_prismatic_inferno

# Remove mark
function stellarity:item/radiant_kaleidoscope/mark/remove

# Start cooldown
execute as @p[tag=kohara.attacker] run function stellarity:item/radiant_kaleidoscope/cooldown/start
tag @p[tag=kohara.attacker] remove kohara.attacker
