# Macro: Copies enchants & trims from parent tool, spawns loot, consumes inputs
$data modify storage stellarity:temp altar_carapace.enchants set from entity @e[type=item,tag=$(parent),distance=..1.5,limit=1] Item.components."minecraft:enchantments"
$data modify storage stellarity:temp altar_carapace.trim set from entity @e[type=item,tag=$(parent),distance=..1.5,limit=1] Item.components."minecraft:trim"

$loot spawn ~ ~0.5 ~ loot $(loot)

data modify entity @n[type=item,tag=!stellarity.altar_of_the_endbound_carapace.checked_type] Item.components."minecraft:enchantments" set from storage stellarity:temp altar_carapace.enchants
data modify entity @n[type=item,tag=!stellarity.altar_of_the_endbound_carapace.checked_type] Item.components."minecraft:trim" set from storage stellarity:temp altar_carapace.trim

# Tag newly crafted item to avoid being consumed or checked immediately
tag @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_endbound_carapace.checked_type] add stellarity.altar_of_the_endbound_carapace.skip

data remove storage stellarity:temp altar_carapace.enchants
data remove storage stellarity:temp altar_carapace.trim
data remove storage stellarity:temp altar_carapace.item

particle flash{color:-6874473} ~ ~0.5 ~ 0 0 0 0 1 force
particle end_rod ~ ~0.5 ~ 0.2 0.2 0.2 0.1 25 normal
particle dragon_breath ~ ~0.5 ~ 0.3 0.2 0.3 0.05 30 normal
playsound stellarity:altar_of_the_endbound_carapace.accept block @a ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 1.5

kill @e[type=item,distance=..1.5,tag=!stellarity.altar_of_the_endbound_carapace.skip]
