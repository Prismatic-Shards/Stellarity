execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["anima_conduit"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={anima_conduit=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:anima_conduit}
execute if score @s stellarity.item.harvester.progress.anima_conduit matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:anima_conduit}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["arctic_wind"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={arctic_wind=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:arctic_wind}
execute if score @s stellarity.item.harvester.progress.arctic_wind matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:arctic_wind}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["cryonics"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={cryonics=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:cryonics}
execute if score @s stellarity.item.harvester.progress.cryonics matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:cryonics}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["echo"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={echo=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:echo}
execute if score @s stellarity.item.harvester.progress.echo matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:echo}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["embrittlement"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={embrittlement=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:embrittlement}
execute if score @s stellarity.item.harvester.progress.embrittlement matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:embrittlement}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["frost_barrier"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={frost_barrier=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:frost_barrier}
execute if score @s stellarity.item.harvester.progress.frost_barrier matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:frost_barrier}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["frostburn"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={frostburn=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:frostburn}
execute if score @s stellarity.item.harvester.progress.frostburn matches 5.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:frostburn}

execute unless data storage stellarity:temp {harvester:{item:{"minecraft:custom_data":{"stellarity:harvester":{abilities:["piercing_cold"]}}}}} \
if entity @s[advancements={stellarity:event/item/harvester/kill_for_abilities={piercing_cold=true}}] \
run function stellarity:item/harvester/abilities/progress_macro {ability:piercing_cold}
execute if score @s stellarity.item.harvester.progress.piercing_cold matches 1.. \
run function stellarity:item/harvester/abilities/unlock_ability_macro {ability:piercing_cold}
