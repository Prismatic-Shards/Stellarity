# Ticked every 5 ticks
  scoreboard players remove @s stellarity.item.crest.time 5
  execute if score @s stellarity.item.crest.time matches ..0 run function stellarity:item/crest_of_the_end/time_out
