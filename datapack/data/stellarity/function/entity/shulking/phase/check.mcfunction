# Calculate health percentage
scoreboard players set #100 stellarity.misc 100
scoreboard players operation @s stellarity.shulking.health_percent = @s stellarity.shulking.health
scoreboard players operation @s stellarity.shulking.health_percent *= #100 stellarity.misc
execute store result score #max stellarity.misc run attribute @s minecraft:max_health get
scoreboard players operation @s stellarity.shulking.health_percent /= #max stellarity.misc

# Phase 2 trigger: <= 85% HP (decrease ~14.22% / 128 HP)
execute if score @s stellarity.shulking.phase matches 1 if score @s stellarity.shulking.health_percent matches ..85 run function stellarity:entity/shulking/phase/phase2_trigger

# Phase 3 trigger: <= 71% HP
execute if score @s stellarity.shulking.phase matches 2 if score @s stellarity.shulking.health_percent matches ..71 run function stellarity:entity/shulking/phase/phase3_trigger

# Phase 4 trigger: <= 57% HP
execute if score @s stellarity.shulking.phase matches 3 if score @s stellarity.shulking.health_percent matches ..57 run function stellarity:entity/shulking/phase/phase4_trigger

# Phase 5 trigger: <= 43% HP
execute if score @s stellarity.shulking.phase matches 4 if score @s stellarity.shulking.health_percent matches ..43 run function stellarity:entity/shulking/phase/phase5_trigger

# Phase 6 trigger: <= 28% HP
execute if score @s stellarity.shulking.phase matches 5 if score @s stellarity.shulking.health_percent matches ..28 run function stellarity:entity/shulking/phase/phase6_trigger

# Phase 7 trigger: <= 14% HP or <= 0 HP
execute if score @s stellarity.shulking.phase matches 6 if score @s stellarity.shulking.health_percent matches ..14 run function stellarity:entity/shulking/phase/phase7_trigger
