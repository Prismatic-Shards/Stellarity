# Every second
  scoreboard players remove @s stellarity.item.spellbook.light.cooldown 1
  execute if predicate stellarity:item/holding/spellbooks/light if score @s stellarity.item.spellbook.light.cooldown matches 1.. run title @s actionbar [{"text":"• ","color":"#404040"},{"text":"📖 ","color":"#AA00AA"},{"translate":"item.stellarity.book_of_light"},{"text":": ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"stellarity.item.spellbook.light.cooldown"},"color":"#D070FF"},{"text":"s","color":"#888888"},{"text":" •","color":"#404040"}]
  execute if score @s stellarity.item.spellbook.light.cooldown matches 0 run function stellarity:item/spellbooks/light/ready
