# Cooldown
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run function stellarity:item/radiant_kaleidoscope/attack_on_cooldown
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.on_cooldown] run return 0

# Guard
execute if entity @p[predicate=stellarity:item/holding/radiant_kaleidoscope,tag=stellarity.item.rk.guard_active] run return 0

# Tag attacker
tag @p[distance=..8,predicate=stellarity:item/holding/radiant_kaleidoscope] add kohara.attacker

# Crush check
execute if entity @p[tag=kohara.attacker,predicate=kohara:player/can_crit,predicate=!kohara:player/gliding] if score @s stellarity.item.rk.mark_rank matches 1.. run return run function stellarity:item/radiant_kaleidoscope/crush/strike

# Hit sounds
playsound stellarity:item.radiant_kaleidoscope.hit player @a ~ ~ ~ 1 1
playsound stellarity:item.weapon.kaleidoscope.hit_vibration player @a[distance=..24] ~ ~ ~ 0.8 1.1
schedule function stellarity:item/radiant_kaleidoscope/after_hit 6t append

# Hit VFX
execute if entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run function stellarity:item/radiant_kaleidoscope_ascended/vfx/hit
execute unless entity @p[tag=kohara.attacker,predicate=stellarity:item/holding/radiant_kaleidoscope_ascended] run function stellarity:item/radiant_kaleidoscope/vfx/hit

# Base damage (12.0 HP)
scoreboard players set #damage kohara.misc 120

# Calculate damage
function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:radiant_kaleidoscope",tag:"stellarity.damage.radiant_kaleidoscope"}
execute as @e[type=ender_dragon,distance=..32] run scoreboard players set @s stellarity.dragon.rk_damage_window 40
execute as @e[type=ender_dragon,distance=..32] run tag @s add stellarity.dragon.hit_by_rk
tag @e[type=marker,tag=stellarity.dragon_marker] add stellarity.dragon.hit_by_rk

# Death check
execute unless entity @s[type=ender_dragon] if data entity @s {Health:0f} at @s run return run function stellarity:item/radiant_kaleidoscope/mark/kill
execute if entity @e[type=ender_dragon,distance=..32,nbt={DragonPhase:9}] run tag @e[type=marker,tag=stellarity.dragon_marker] add stellarity.dragon.killed_by_rk
execute if entity @e[type=ender_dragon,distance=..32,nbt={DragonPhase:9}] at @s run return run function stellarity:item/radiant_kaleidoscope/mark/kill

# Inferno
function stellarity:mechanic/enchantments/infernal_infusion/apply_prismatic_inferno

# Advance mark
function stellarity:item/radiant_kaleidoscope/mark/apply

# Start cooldown
execute as @p[tag=kohara.attacker] run function stellarity:item/radiant_kaleidoscope/cooldown/start
tag @p[tag=kohara.attacker] remove kohara.attacker
