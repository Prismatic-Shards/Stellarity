# Every second
  scoreboard players remove @s stellarity.item.spellbook.obstruct.cooldown 1
  execute if predicate stellarity:item/holding/spellbooks/obstruct if score @s stellarity.item.spellbook.obstruct.cooldown matches 1.. run title @s actionbar [{"text":"• ","color":"#404040"},{"text":"📖 ","color":"#AA00AA"},{"translate":"item.stellarity.book_of_obstruct"},{"text":": ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"stellarity.item.spellbook.obstruct.cooldown"},"color":"#D070FF"},{"text":"s","color":"#888888"},{"text":" •","color":"#404040"}]
  execute if score @s stellarity.item.spellbook.obstruct.cooldown matches 0 run function stellarity:item/spellbooks/obstruct/ready
