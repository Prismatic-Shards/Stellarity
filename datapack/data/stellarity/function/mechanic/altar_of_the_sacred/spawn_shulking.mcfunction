execute store result score #count stellarity.misc run data get entity @s Item.count 1

scoreboard players set #1 stellarity.misc 1
scoreboard players operation #count stellarity.misc -= #1 stellarity.misc

execute if score #count stellarity.misc matches 1.. store result entity @s Item.count byte 1 run scoreboard players get #count stellarity.misc
execute if score #count stellarity.misc matches ..0 run kill @s


particle explosion ~ ~ ~ 0 0 0 1 0 force @a[distance=..128]
particle smoke ~ ~ ~ 0 0 0 0.12 14 normal
particle end_rod ~ ~ ~ 0 0 0 0.12 28 normal

playsound minecraft:entity.allay.item_taken block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.zombie.infect block @a[distance=0..] ~ ~ ~ 1 0

execute positioned ~ ~2 ~ run function stellarity:entity/shulking/summon
