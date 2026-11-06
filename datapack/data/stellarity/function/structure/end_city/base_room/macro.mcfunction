execute store result score #random stellarity.misc run random value 1..4

$execute if score #random stellarity.misc matches 1 run place template stellarity:end_city/base_floor/1 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 2 run place template stellarity:end_city/base_floor/2 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 3 run place template stellarity:end_city/base_floor/3 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 4 run place template stellarity:end_city/base_floor/4 ~ ~ ~ $(direction)
