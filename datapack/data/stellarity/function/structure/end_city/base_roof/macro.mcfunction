execute store result score #random stellarity.misc run random value 1..6

$execute if score #random stellarity.misc matches 1 run place template stellarity:end_city/base_roof/1 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 2 run place template stellarity:end_city/base_roof/2 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 3 run place template stellarity:end_city/base_roof/3 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 4 run place template stellarity:end_city/base_roof/4 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 5 run place template stellarity:end_city/base_roof/5 ~ ~ ~ $(direction)
$execute if score #random stellarity.misc matches 6 run place template stellarity:end_city/base_roof/6 ~ ~ ~ $(direction)
