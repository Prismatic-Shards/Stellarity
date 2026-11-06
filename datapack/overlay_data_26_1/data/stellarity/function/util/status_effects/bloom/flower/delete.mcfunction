playsound minecraft:block.beehive.enter master @a[distance=0..] ^ ^.45 ^ 1 0.7
playsound minecraft:entity.wind_charge.wind_burst player @a[distance=0..] ^ ^.45 ^ 1 1

particle gust ^ ^.45 ^ 0 0 0 0 1 force @a[distance=..64]
particle end_rod ^ ^.45 ^ 0 0 0 0.1 12 force @a[distance=..64]

execute if score @s stellarity.misc matches ..99 run particle cherry_leaves ^ ^.7 ^ 0.35 0.35 0.35 1 3
execute if score @s stellarity.misc matches 100..199 run particle cherry_leaves ^ ^.7 ^ 0.4 0.4 0.4 1 6
execute if score @s stellarity.misc matches 200..299 run particle cherry_leaves ^ ^.7 ^ 0.45 0.45 0.45 1 9
execute if score @s stellarity.misc matches 300..399 run particle cherry_leaves ^ ^.7 ^ 0.5 0.5 0.5 1 12
execute if score @s stellarity.misc matches 400..499 run particle cherry_leaves ^ ^.7 ^ 0.55 0.55 0.55 1 15
execute if score @s stellarity.misc matches 500.. run particle cherry_leaves ^ ^.7 ^ 0.6 0.6 0.6 1 18

execute if score @s stellarity.misc matches ..99 run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.35 0.35 0.35 1 3
execute if score @s stellarity.misc matches 100..199 run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.4 0.4 0.4 1 6
execute if score @s stellarity.misc matches 200..299 run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.45 0.45 0.45 1 9
execute if score @s stellarity.misc matches 300..399 run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.5 0.5 0.5 1 12
execute if score @s stellarity.misc matches 400..499 run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.55 0.55 0.55 1 15
execute if score @s stellarity.misc matches 500.. run particle block{block_state:{Name:"cherry_leaves"}} ^ ^.7 ^ 0.6 0.6 0.6 1 18

execute on passengers run kill @s
kill @s
