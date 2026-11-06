# Display marked target info to attacker @s
execute as @n[scores={stellarity.item.rk.mark_rank=1..},distance=..32] run scoreboard players operation #target_rank stellarity.misc = @s stellarity.item.rk.mark_rank
execute as @n[scores={stellarity.item.rk.mark_rank=1..},distance=..32] run scoreboard players operation #target_timer stellarity.misc = @s stellarity.item.rk.mark_timer

scoreboard players operation #target_sec stellarity.misc = #target_timer stellarity.misc
scoreboard players add #target_sec stellarity.misc 19
scoreboard players set #20 stellarity.misc 20
scoreboard players operation #target_sec stellarity.misc /= #20 stellarity.misc

title @s actionbar [{"text":"✦ ","color":"#FFD700"},{"text":"Radiant Mark Rank ","color":"#EEEEEE"},{"score":{"name":"#target_rank","objective":"stellarity.misc"},"color":"#FFD700","bold":true},{"text":" (","color":"#888888"},{"score":{"name":"#target_sec","objective":"stellarity.misc"},"color":"#FFE259"},{"text":"s)","color":"#888888"},{"text":" ✦","color":"#FFD700"}]
