execute store result score @s stellarity.shulking.health run data get entity @s Health
execute store result bossbar stellarity:shulking value run scoreboard players get @s stellarity.shulking.health
bossbar set stellarity:shulking players @a[distance=..64]

execute as @a[distance=..50,gamemode=!creative,gamemode=!spectator] run effect give @s mining_fatigue 2 2 true

execute unless entity @s[tag=stellarity.shulking.in_dash] if predicate stellarity:entity/riding_vehicle run ride @s dismount

execute store result score #hurt_time stellarity.misc run data get entity @s HurtTime
execute if score #hurt_time stellarity.misc matches 9..10 run function stellarity:entity/shulking/hurt

execute if score @s stellarity.shulking.health matches ..0 run function stellarity:entity/shulking/phase/phase7_trigger

function stellarity:entity/shulking/phase/check

execute as @a[distance=..4,gamemode=!creative,gamemode=!spectator] run damage @s 4 mob_attack by @e[type=shulker,tag=stellarity.shulking,limit=1,sort=nearest]

# 7. State handler:
# State 0: Ground / Combat
execute if score @s stellarity.shulking.state matches 0 run function stellarity:entity/shulking/attacks/bullets/tick
execute if score @s stellarity.shulking.state matches 0 run function stellarity:entity/shulking/attacks/decide

# State 1: Wall Clinging
execute if score @s stellarity.shulking.state matches 1 run function stellarity:entity/shulking/attacks/bullets/tick
execute if score @s stellarity.shulking.state matches 1 run function stellarity:entity/shulking/attacks/decide

# State 2: Wall Dash
execute if score @s stellarity.shulking.state matches 2 run function stellarity:entity/shulking/movement/dash_tick

# State 3: Pancake Slam
execute if score @s stellarity.shulking.state matches 3 run function stellarity:entity/shulking/attacks/pancake_slam/tick

# 8. Passive block destruction around body
function stellarity:entity/shulking/movement/break_blocks
