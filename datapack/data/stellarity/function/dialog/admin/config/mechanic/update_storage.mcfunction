execute if score #stellarity.config stellarity.config.join_message matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"join_message"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.join_message matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"join_message"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.always_generate_egg matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"generate_egg"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.always_generate_egg matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"generate_egg"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.allow_disenchanting matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"disenchanting"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.allow_disenchanting matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"disenchanting"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_creative_shock matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"creative_shock"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_creative_shock matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"creative_shock"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.nerf_elytra matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"nerf_elytra"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.nerf_elytra matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"nerf_elytra"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"boss_status_messages"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.boss_status_messages matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"boss_status_messages"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_end_crystal_drop matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"end_crystal_drop"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_end_crystal_drop matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"end_crystal_drop"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.enable_totem_void_saving matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"totem_void_saving"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.enable_totem_void_saving matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"totem_void_saving"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.migrations matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"migrations"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.migrations matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"migrations"}].options[1].initial set value false

execute if score #stellarity.config stellarity.config.lock_the_end matches 1 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"lock_the_end"}].options[1].initial set value true
execute if score #stellarity.config stellarity.config.lock_the_end matches 0 run data modify storage stellarity:temp stellarity.config.mechanic.dialog.inputs[{key:"lock_the_end"}].options[1].initial set value false