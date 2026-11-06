scoreboard players remove @s stellarity.item.rk.phase_timer 1

# Suction particle spiral (7 colors inward)
execute rotated ~ 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[0.90, 0.20, 0.15],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~51 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[1.00, 0.60, 0.05],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~103 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[0.95, 0.85, 0.10],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~154 0 positioned ^ ^1.4 ^0.6 run particle dust{color:[0.10, 0.75, 0.45],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~206 0 positioned ^ ^1.2 ^0.8 run particle dust{color:[0.15, 0.65, 0.95],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~257 0 positioned ^ ^1.3 ^1.0 run particle dust{color:[0.20, 0.25, 0.85],scale:0.9} ~ ~ ~ 0 0 0 0 1
execute rotated ~309 0 positioned ^ ^1.2 ^1.2 run particle dust{color:[0.65, 0.20, 0.85],scale:0.9} ~ ~ ~ 0 0 0 0 1

# End of Phase 1 -> Trigger Phase 2 (Shatter Flash Burst) & switch to Phase 3
execute if score @s stellarity.item.rk.phase_timer matches ..0 if entity @s[tag=stellarity.item.rk.ascended] run particle flash{color:[1.0,0.85,0.2,1.0]} ~ ~1.2 ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.phase_timer matches ..0 unless entity @s[tag=stellarity.item.rk.ascended] run particle flash{color:[0.3,0.8,1.0,1.0]} ~ ~1.2 ~ 0 0 0 0 1
execute if score @s stellarity.item.rk.phase_timer matches ..0 run particle end_rod ~ ~1.2 ~ 0.3 0.3 0.3 0.06 14
execute if score @s stellarity.item.rk.phase_timer matches ..0 run scoreboard players set @s stellarity.item.rk.mark_phase 3
