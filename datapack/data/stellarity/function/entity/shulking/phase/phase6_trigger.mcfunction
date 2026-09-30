scoreboard players set @s stellarity.shulking.phase 6

bossbar set stellarity:shulking color purple
bossbar set stellarity:shulking name [{"translate":"entity.stellarity.shulking","color":"#4B0082","bold":true}]
data modify entity @s CustomName set value '{"translate":"entity.stellarity.shulking","color":"#4B0082","bold":true}'

playsound stellarity:entity.shulking.phase6_roar hostile @a ~ ~ ~ 2 1
particle dragon_breath ~ ~2 ~ 2 2 2 0.1 80

scoreboard players set @s stellarity.shulking.wall 5
function stellarity:entity/shulking/movement/dash_start

execute at @p[distance=..50] run summon iron_golem ~ ~ ~ {CustomName:{"text":"Shulkhead Champion","color":"#4B0082","bold":true},Tags:["stellarity.shulking.miniboss","kohara.boss","smithed.entity"],attributes:[{id:"minecraft:max_health",base:150},{id:"minecraft:attack_damage",base:10}],Health:150f,equipment:{head:{id:"minecraft:purple_shulker_box"}}}

function stellarity:entity/shulking/attacks/mega_bullet/start
function stellarity:entity/shulking/attacks/mega_bullet/start
function stellarity:entity/shulking/attacks/mega_bullet/start

scoreboard players set @s stellarity.shulking.attack_cooldown 30
scoreboard players set @s stellarity.shulking.bullet_cooldown 25
