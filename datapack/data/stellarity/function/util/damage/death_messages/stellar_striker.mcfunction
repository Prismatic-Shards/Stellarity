execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"death.attack.stellarity.stellar_striker.1","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/stellar_striker]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"death.attack.stellarity.stellar_striker.2","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/stellar_striker]"}]}
