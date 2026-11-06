execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"death.attack.stellarity.carcanet.1","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/trinket/starstruck_shield]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"death.attack.stellarity.carcanet.2","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/trinket/starstruck_shield]"}]}
