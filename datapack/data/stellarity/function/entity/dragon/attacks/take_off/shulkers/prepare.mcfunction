execute store result score #count stellarity.misc if entity @e[type=shulker,distance=..20]

execute unless score #count stellarity.misc matches 2.. run summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.dragon.shulkers"]}
