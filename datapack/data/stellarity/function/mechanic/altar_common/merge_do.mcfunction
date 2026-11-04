# Abort if source or candidate is not alive
    execute unless entity @s run return 0
    execute unless entity @n[type=item,tag=stellarity.altar.merge_source] run return 0

# Get count
    execute store result score #merge_other_count stellarity.misc run data get entity @s Item.count

scoreboard players operation #merge_src_count stellarity.misc += #merge_other_count stellarity.misc

# Merge into primary
    execute if score #merge_src_count stellarity.misc matches ..64 as @n[type=item,tag=stellarity.altar.merge_source] store result entity @s Item.count int 1 run scoreboard players get #merge_src_count stellarity.misc
    execute if score #merge_src_count stellarity.misc matches ..64 as @n[type=item,tag=stellarity.altar.merge_source] store result score @s stellarity.altar_of_the_accursed.count run scoreboard players get #merge_src_count stellarity.misc
    execute if entity @n[type=item,tag=stellarity.altar.merge_source] if score #merge_src_count stellarity.misc matches ..64 run kill @s

# Split remainder
    execute if score #merge_src_count stellarity.misc matches 65.. as @n[type=item,tag=stellarity.altar.merge_source] run data modify entity @s Item.count set value 64
    execute if score #merge_src_count stellarity.misc matches 65.. as @n[type=item,tag=stellarity.altar.merge_source] run scoreboard players set @s stellarity.altar_of_the_accursed.count 64
    execute if score #merge_src_count stellarity.misc matches 65.. run scoreboard players remove #merge_src_count stellarity.misc 64
    execute if score #merge_src_count stellarity.misc matches 65.. store result entity @s Item.count int 1 run scoreboard players get #merge_src_count stellarity.misc
    execute if score #merge_src_count stellarity.misc matches 65.. store result score @s stellarity.altar_of_the_accursed.count run scoreboard players get #merge_src_count stellarity.misc

# Feedback SFX
    playsound entity.item.pickup block @a ~ ~ ~ 0.35 1.5
    particle poof ~ ~0.2 ~ 0.05 0.05 0.05 0.01 3
