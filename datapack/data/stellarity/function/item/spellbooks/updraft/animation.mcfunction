scoreboard players add @s stellarity.item.spellbook.updraft.animation 1

execute if score @s stellarity.item.spellbook.updraft.animation matches 2 run function stellarity:item/spellbooks/updraft/wave/1
execute if score @s stellarity.item.spellbook.updraft.animation matches 4 run function stellarity:item/spellbooks/updraft/wave/2
execute if score @s stellarity.item.spellbook.updraft.animation matches 6 run function stellarity:item/spellbooks/updraft/wave/3

execute if score @s stellarity.item.spellbook.updraft.animation matches ..20 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 3 force @a[distance=..48]

execute if score @s stellarity.item.spellbook.updraft.animation matches 30.. run particle end_rod ~ ~1 ~ .3 .55 .3 0 2 force

# execute if score @s stellarity.item.spellbook.updraft.animation matches 30 run effect give @s slow_falling infinite 0 true
  execute if score @s stellarity.item.spellbook.updraft.animation matches 32.. run attribute @s gravity modifier add stellarity:spellbook.updraft -0.95 add_multiplied_total
  execute if score @s stellarity.item.spellbook.updraft.animation matches 32.. run attribute @s fall_damage_multiplier modifier add stellarity:spellbook.updraft -1 add_multiplied_total
  execute if score @s stellarity.item.spellbook.updraft.animation matches 5.. if data entity @s {OnGround:1b} run function stellarity:item/spellbooks/updraft/animation_finish
  execute if predicate kohara:player/is_sneaking run function stellarity:item/spellbooks/updraft/animation_finish
