scoreboard players enable @s stellarity_desert_scourge.give.all
scoreboard players enable @s stellarity_desert_scourge.give.suspicious_horn
scoreboard players enable @s stellarity_desert_scourge.summon.sand_tornado
scoreboard players enable @s stellarity_desert_scourge.summon.desert_scourge

execute if score @s stellarity_desert_scourge.give.all matches 1 run function stellarity_desert_scourge:commands/give/all
execute if score @s stellarity_desert_scourge.give.suspicious_horn matches 1 run function stellarity_desert_scourge:commands/give/suspicious_horn
execute if score @s stellarity_desert_scourge.summon.sand_tornado matches 1 run function stellarity_desert_scourge:commands/summon/sand_tornado
execute if score @s stellarity_desert_scourge.summon.desert_scourge matches 1 run function stellarity_desert_scourge:commands/summon/desert_scourge