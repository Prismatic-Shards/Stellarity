$execute if score #slot kohara.misc matches 1 store result score @s stellarity.item.rk.color_1 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 2 store result score @s stellarity.item.rk.color_2 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 3 store result score @s stellarity.item.rk.color_3 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 4 store result score @s stellarity.item.rk.color_4 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 5 store result score @s stellarity.item.rk.color_5 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 6 store result score @s stellarity.item.rk.color_6 run data get storage stellarity:temp rk.pool[$(rnd)]
$execute if score #slot kohara.misc matches 7 store result score @s stellarity.item.rk.color_7 run data get storage stellarity:temp rk.pool[$(rnd)]

$data remove storage stellarity:temp rk.pool[$(rnd)]
scoreboard players add #slot kohara.misc 1
