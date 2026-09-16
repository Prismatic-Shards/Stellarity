data modify entity @s Offers.Recipes set value []

execute if data entity @s VillagerData{profession:"minecraft:armorer"} run \
function stellarity:entity/villager/trades/armorer/1
execute if data entity @s VillagerData{profession:"minecraft:butcher"} run \
function stellarity:entity/villager/trades/butcher/1
execute if data entity @s VillagerData{profession:"minecraft:cartographer"} run \
function stellarity:entity/villager/trades/cartographer/1
execute if data entity @s VillagerData{profession:"minecraft:cleric"} run \
function stellarity:entity/villager/trades/cleric/1
execute if data entity @s VillagerData{profession:"minecraft:farmer"} run \
function stellarity:entity/villager/trades/farmer/1
execute if data entity @s VillagerData{profession:"minecraft:fisherman"} run \
function stellarity:entity/villager/trades/fisherman/1
execute if data entity @s VillagerData{profession:"minecraft:fletcher"} run \
function stellarity:entity/villager/trades/fletcher/1
execute if data entity @s VillagerData{profession:"minecraft:leatherworker"} run \
function stellarity:entity/villager/trades/leatherworker/1
execute if data entity @s VillagerData{profession:"minecraft:librarian"} run \
function stellarity:entity/villager/trades/librarian/1
execute if data entity @s VillagerData{profession:"minecraft:mason"} run \
function stellarity:entity/villager/trades/mason/1
execute if data entity @s VillagerData{profession:"minecraft:shepherd"} run \
function stellarity:entity/villager/trades/shepherd/1
execute if data entity @s VillagerData{profession:"minecraft:toolsmith"} run \
function stellarity:entity/villager/trades/toolsmith/1
execute if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run \
function stellarity:entity/villager/trades/weaponsmith/1

data remove entity @s Offers.Recipes[{buyB:{id:"minecraft:air"}}].buyB

tag @s add stellarity.villager.employed
