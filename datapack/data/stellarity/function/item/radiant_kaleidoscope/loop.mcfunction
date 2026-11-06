# Equip check
execute unless score @s stellarity.item.rk.cooldown_initialized matches 1.. run scoreboard players set @s stellarity.item.rk.cooldown_initialized 1
execute if score @s stellarity.item.rk.cooldown_initialized matches 1 unless score @s stellarity.item.rk.cooldown matches 1.. run function stellarity:item/radiant_kaleidoscope/cooldown/start
execute if score @s stellarity.item.rk.cooldown_initialized matches 1 run scoreboard players set @s stellarity.item.rk.cooldown_initialized 2

# Cooldown effect
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run effect give @s minecraft:weakness 2 255 true
execute if entity @s[tag=stellarity.item.rk.on_cooldown] if score @s stellarity.item.rk.low_energy_cd matches 1.. run scoreboard players remove @s stellarity.item.rk.low_energy_cd 1

# Cooldown actionbar
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run function stellarity:item/radiant_kaleidoscope/actionbar_cooldown
execute if entity @s[tag=stellarity.item.rk.on_cooldown] run return 0

# Guard active
execute if entity @s[tag=stellarity.item.rk.guard_active] run return run function stellarity:item/radiant_kaleidoscope/guard/tick

# Guard charging
execute unless score @s stellarity.item.rk.recovery matches 1.. if predicate kohara:player/is_sneaking if data entity @s {OnGround:1b} run return run function stellarity:item/radiant_kaleidoscope/guard/charge

# Reset charge
execute if score @s stellarity.item.rk.charge_shift matches 1.. unless predicate kohara:player/is_sneaking run scoreboard players reset @s stellarity.item.rk.charge_shift

# Holding VFX
execute if predicate kohara:chance/25percent run particle dust{color:[1.00, 0.85, 0.20],scale:0.8} ^0.2 ^1.2 ^0.6 0.05 0.05 0.05 0.01 1
execute if predicate kohara:chance/15percent run particle end_rod ^0.2 ^1.2 ^0.6 0.05 0.05 0.05 0.01 1

# Mark actionbar
execute unless score @s stellarity.item.rk.recovery matches 1.. if entity @e[scores={stellarity.item.rk.mark_rank=1..},distance=..32] run function stellarity:item/radiant_kaleidoscope/mark/actionbar
