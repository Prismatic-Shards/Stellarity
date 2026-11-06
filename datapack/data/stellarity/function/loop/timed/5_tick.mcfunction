# Villagers
  execute as @e[\
  type=villager,\
  tag=stellarity.villager,\
  tag=!stellarity.villager.nitwit,\
  tag=!stellarity.villager.level_5 \
  ] at @s run function stellarity:entity/villager/main


execute as @e[type=item_display,tag=stellarity.block] at @s run function stellarity:block/update_light


schedule function stellarity:loop/timed/5_tick 5t
