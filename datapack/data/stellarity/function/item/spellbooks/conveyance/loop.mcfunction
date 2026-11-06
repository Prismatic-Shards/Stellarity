# Age

scoreboard players add @s stellarity.misc 1

tp @s ^ ^ ^1.1

execute anchored eyes rotated as @p positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute unless block ^ ^ ^1.1 #kohara:non_solid run function stellarity:item/spellbooks/conveyance/hit_block

particle minecraft:dust_color_transition{from_color: [0.898, 0.122, 1.0], scale: 1.05, to_color: [0.435, 0.0, 1.0]} ^ ^ ^ .1 .1 .1 0 4 force @a[distance=..64]

execute if score @s stellarity.misc matches 120.. run kill @s
