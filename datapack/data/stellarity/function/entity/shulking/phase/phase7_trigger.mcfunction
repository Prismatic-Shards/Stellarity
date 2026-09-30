scoreboard players set @s stellarity.shulking.phase 7

bossbar set stellarity:shulking color red
bossbar set stellarity:shulking value 0
bossbar set stellarity:shulking name [{"translate":"entity.stellarity.shulking","color":"#1C1C1C","bold":true,"strikethrough":true}]

playsound stellarity:entity.shulking.final_hit hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.fall_down hostile @a ~ ~ ~ 2 1

fill ~-2 ~ ~-2 ~2 ~-6 ~2 air destroy
fill ~-3 ~ ~-1 ~-3 ~-6 ~1 air destroy
fill ~3 ~ ~-1 ~3 ~-6 ~0 air destroy
fill ~-1 ~ ~-3 ~1 ~-6 ~-3 air destroy
fill ~0 ~ ~3 ~2 ~-6 ~3 air destroy
fill ~-2 ~ ~1 ~-3 ~-6 ~2 air destroy
fill ~1 ~ ~-3 ~2 ~-6 ~-2 air destroy
fill ~-1 ~ ~2 ~0 ~-6 ~3 air destroy

particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1
particle block{block_state:"minecraft:cracked_stone_bricks"} ~ ~-1 ~ 3.5 1 3.5 0.3 200

tp @s ~ ~-7 ~

playsound stellarity:entity.shulking.fall_impact hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.shatter hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.death_cry hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.pre_explode hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.pre_explode_ambient hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.final_explode hostile @a ~ ~ ~ 2 1
playsound stellarity:entity.shulking.post_explode hostile @a ~ ~ ~ 2 1
particle block{block_state:"minecraft:purpur_block"} ~ ~1 ~ 3 2 3 0.2 200
particle dragon_breath ~ ~1 ~ 2.5 1.5 2.5 0.1 100

loot spawn ~ ~ ~ loot stellarity:entity/shulking

function stellarity:mechanic/altar_of_the_endbound_carapace/spawn
playsound stellarity:altar_of_the_endbound_carapace.activate hostile @a ~ ~ ~ 2 1

bossbar set stellarity:shulking players
scoreboard players set #shulking.is_alive stellarity.misc 0

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.shulking.death","with":[{"translate":"entity.stellarity.shulking"}],"color":"#AF4BFF"},"\n"]

kill @e[type=shulker,tag=stellarity.shulking.minion]
kill @e[type=iron_golem,tag=stellarity.shulking.miniboss]

kill @s
