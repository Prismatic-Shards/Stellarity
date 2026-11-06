# EOL Config
  execute if score #stellarity.config stellarity.config.enable_empress_of_light matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_eol"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_empress_of_light matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_eol"}].options[1].initial set value false
  execute if score #stellarity.config stellarity.config.enable_nighttime_empress_of_light matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"nighttime_eol"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_nighttime_empress_of_light matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"nighttime_eol"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_nighttime_eol"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.nighttime_empress_of_light_health
  execute if score #stellarity.config stellarity.config.enable_daytime_empress_of_light matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"daytime_eol"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_daytime_empress_of_light matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"daytime_eol"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_daytime_eol"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.daytime_empress_of_light_health
  execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"radiant_eol"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_radiant_empress_of_light matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"radiant_eol"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_radiant_eol"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.radiant_empress_of_light_health
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"eol_music_delay"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.track_loop_delay.empress_of_light

# Shulking Config
  execute if score #stellarity.config stellarity.config.enable_shulking matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_shulking"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_shulking matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_shulking"}].options[1].initial set value false
  execute if score #stellarity.config stellarity.config.shulking_break matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"shulking_block_breaking"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.shulking_break matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"shulking_block_breaking"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_shulking"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.shulking_health

# Ender Dragon Config
  execute if score #stellarity.config stellarity.config.enable_ender_dragon matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_ender_dragon"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_ender_dragon matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_ender_dragon"}].options[1].initial set value false
  execute if score #stellarity.config stellarity.config.enable_dragon_screenshake matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"dragon_screenshake"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_dragon_screenshake matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"dragon_screenshake"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"dragon_music_delay"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.track_loop_delay.dragon
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_ender_dragon"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health

# Harvester Mini-Boss Config
  execute if score #stellarity.config stellarity.config.enable_harvester_mb matches 1 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_harvester_mb"}].options[1].initial set value true
  execute if score #stellarity.config stellarity.config.enable_harvester_mb matches 0 run data modify storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"spawn_harvester_mb"}].options[1].initial set value false
  execute store result storage stellarity:temp stellarity.config.entity.dialog.inputs[{key:"health_harvester_mb"}].initial int 1 run scoreboard players get #stellarity.config stellarity.config.harvester_mb_health
