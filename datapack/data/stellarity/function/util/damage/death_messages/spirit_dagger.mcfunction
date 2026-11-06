execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"death.attack.stellarity.spirit_dagger.1","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/spirit_dagger/any]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"death.attack.stellarity.spirit_dagger.2","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/spirit_dagger/any]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"death.attack.stellarity.spirit_dagger.3","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/spirit_dagger/any]"}]}
