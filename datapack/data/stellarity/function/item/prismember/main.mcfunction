execute if entity @s[predicate=kohara:player/is_sneaking] \
unless score @s stellarity.item.prismember.cooldown matches 1.. run \
function stellarity:item/prismember/charge/main

execute if entity @s[tag=stellarity.item.prismember.ready] \
if data entity @n[type=interaction,tag=stellarity.prismember] attack \
run \
function stellarity:item/prismember/spin/start

scoreboard players remove @s[scores={stellarity.item.prismember.cooldown=1..}] stellarity.item.prismember.cooldown 1
