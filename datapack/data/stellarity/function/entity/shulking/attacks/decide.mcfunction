# Decrement attack cooldowns when in active combat state (0 = ground, 1 = wall)
execute if score @s stellarity.shulking.state matches 0..1 run scoreboard players remove @s stellarity.shulking.shockwave_cd 1
execute if score @s stellarity.shulking.state matches 0..1 run scoreboard players remove @s stellarity.shulking.fangs_cd 1
execute if score @s stellarity.shulking.state matches 0..1 run scoreboard players remove @s stellarity.shulking.attack_cooldown 1

# 1. Shockwave attack («Шоковая Волна»)
execute if score @s stellarity.shulking.state matches 0..1 if score @s stellarity.shulking.shockwave_cd matches ..0 run function stellarity:entity/shulking/attacks/shockwave_trigger

# 2. Levitation Fangs attack («Щупальца Левитации»)
execute if score @s stellarity.shulking.state matches 0..1 if score @s stellarity.shulking.fangs_cd matches ..0 run function stellarity:entity/shulking/attacks/fangs_trigger

# 3. Phases 1-5: Wall repositioning dash
execute if score @s stellarity.shulking.phase matches ..5 if score @s stellarity.shulking.state matches 0..1 if score @s stellarity.shulking.attack_cooldown matches ..0 run function stellarity:entity/shulking/movement/reposition

# 4. Phase 6 Enrage: Rapid Pancake Slam («Лепёшка-скок»)
execute if score @s stellarity.shulking.phase matches 6.. if score @s stellarity.shulking.state matches 0..1 if score @s stellarity.shulking.attack_cooldown matches ..0 run function stellarity:entity/shulking/attacks/pancake_slam/start
