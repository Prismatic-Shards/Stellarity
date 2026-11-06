# Shift charging logic (called when sneaking on ground)
scoreboard players add @s stellarity.item.rk.charge_shift 1

# First tick sound
execute if score @s stellarity.item.rk.charge_shift matches 1 run playsound stellarity:item.radiant_kaleidoscope.reload_start player @s ~ ~ ~ 1 1

# Charging particles
particle dust{color:[1.00, 0.85, 0.20],scale:0.9} ~ ~0.2 ~ 0.5 0.1 0.5 0.05 4
execute if score @s stellarity.item.rk.charge_shift matches 60.. run particle end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.02 2

# Actionbar charge percentage: charge_shift * 100 / 120
scoreboard players operation #charge_pct stellarity.misc = @s stellarity.item.rk.charge_shift
scoreboard players set #100 stellarity.misc 100
scoreboard players set #120 stellarity.misc 120
scoreboard players operation #charge_pct stellarity.misc *= #100 stellarity.misc
scoreboard players operation #charge_pct stellarity.misc /= #120 stellarity.misc

title @s actionbar [{"text":"🛡️ ","color":"#FFE259"},{"text":"Radiant Guard Charging... ","color":"#FFFFFF"},{"score":{"name":"#charge_pct","objective":"stellarity.misc"},"color":"#FFD700","bold":true},{"text":"%","color":"#FFD700"},{"text":" 🛡️","color":"#FFE259"}]

# Charge complete (6 seconds = 120 ticks) -> activate
execute if score @s stellarity.item.rk.charge_shift matches 120.. run function stellarity:item/radiant_kaleidoscope/guard/activate
