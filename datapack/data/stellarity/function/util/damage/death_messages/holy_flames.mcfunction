execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"death.attack.stellarity.dot.holy_flames.1","with":[{"selector":"@s"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"death.attack.stellarity.dot.holy_flames.2","with":[{"selector":"@s"}]}
