function stellarity:entity/villager/remove_vanilla_trades

execute if data entity @s VillagerData{profession:"minecraft:armorer"} run \
function stellarity:entity/villager/trades/armorer/3
execute if data entity @s VillagerData{profession:"minecraft:butcher"} run \
function stellarity:entity/villager/trades/butcher/3
execute if data entity @s VillagerData{profession:"minecraft:cartographer"} run \
function stellarity:entity/villager/trades/cartographer/3
execute if data entity @s VillagerData{profession:"minecraft:cleric"} run \
function stellarity:entity/villager/trades/cleric/3
execute if data entity @s VillagerData{profession:"minecraft:farmer"} run \
function stellarity:entity/villager/trades/farmer/3
execute if data entity @s VillagerData{profession:"minecraft:fisherman"} run \
function stellarity:entity/villager/trades/fisherman/3
execute if data entity @s VillagerData{profession:"minecraft:fletcher"} run \
function stellarity:entity/villager/trades/fletcher/3
execute if data entity @s VillagerData{profession:"minecraft:leatherworker"} run \
function stellarity:entity/villager/trades/leatherworker/3
execute if data entity @s VillagerData{profession:"minecraft:librarian"} run \
function stellarity:entity/villager/trades/librarian/3
execute if data entity @s VillagerData{profession:"minecraft:mason"} run \
function stellarity:entity/villager/trades/mason/3
execute if data entity @s VillagerData{profession:"minecraft:shepherd"} run \
function stellarity:entity/villager/trades/shepherd/3
execute if data entity @s VillagerData{profession:"minecraft:toolsmith"} run \
function stellarity:entity/villager/trades/toolsmith/3
execute if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run \
function stellarity:entity/villager/trades/weaponsmith/3

tag @s add stellarity.villager.level_3
