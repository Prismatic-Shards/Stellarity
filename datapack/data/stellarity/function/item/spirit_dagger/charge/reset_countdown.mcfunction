scoreboard players remove @s stellarity.item.spirit_dagger.until_consume_reset 1
execute if score @s stellarity.item.spirit_dagger.until_consume_reset matches 1 run function stellarity:item/spirit_dagger/charge/reset
