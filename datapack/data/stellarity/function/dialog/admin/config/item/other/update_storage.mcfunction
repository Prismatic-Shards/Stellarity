execute if score #stellarity.config stellarity.config.enable_shulker_tools matches 1 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"shulker_tools"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_shulker_tools matches 0 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"shulker_tools"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_music_discs matches 1 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"music_discs"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_music_discs matches 0 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"music_discs"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_pixie_in_a_jar matches 1 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"pixie_in_a_jar"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_pixie_in_a_jar matches 0 run data modify storage stellarity:temp stellarity.config.item.other.dialog.inputs[{key:"pixie_in_a_jar"}].options[1].initial set value false
