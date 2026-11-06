scoreboard players remove @s stellarity.item.rk.recovery 1

# If holding RK, display recovery timer in actionbar
execute if predicate stellarity:item/holding/radiant_kaleidoscope run title @s actionbar [{"text":"⏳ ","color":"#FFAA00"},{"text":"Recovery: ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"stellarity.item.rk.recovery"},"color":"#FFCC00"},{"text":"t","color":"#888888"},{"text":" ⏳","color":"#FFAA00"}]

# Recovery complete
execute if score @s stellarity.item.rk.recovery matches ..0 run scoreboard players reset @s stellarity.item.rk.recovery
execute if score @s stellarity.item.rk.recovery matches ..0 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1.5
