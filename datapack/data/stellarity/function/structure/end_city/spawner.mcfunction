setblock ~ ~1 ~ air replace

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["stellarity.marker","stellarity.trial_spawner"]}

execute store result score #random stellarity.misc run random value 1..10

# Note to self: replace this with the data driven Trial Spawners when updating to 1.21.4 cause holy shit

execute if score #random stellarity.misc matches 1..2 run \
setblock ~ ~ ~ trial_spawner{\
normal_config:{\
total_mobs:9,\
simultaneous_mobs:4,\
simultaneous_mobs_added_per_player:2,\
total_mobs_added_per_player:1,\
ticks_between_spawn:10,spawn_potentials:[\
{\
data: {\
entity: {\
id:"silverfish",\
Tags:["stellarity.end_city"]\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/consumables"\
},\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/key"\
}\
]\
},\
ominous_config:{\
total_mobs:14,\
simultaneous_mobs:6,\
simultaneous_mobs_added_per_player:2,\
total_mobs_added_per_player:1,\
ticks_between_spawn:6,\
spawn_potentials:[\
{\
data: {\
entity: {\
id:"silverfish",\
Tags:["stellarity.end_city"]\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/ominous/consumables"\
},\
{\
weight:3,\
data:"stellarity:end_city/trial_spawner/ominous/key"\
}\
],\
"items_to_drop_when_ominous":"stellarity:end_city/trial_spawner/ominous_item_spawn"\
}\
}

execute if score #random stellarity.misc matches 3..4 run \
setblock ~ ~ ~ trial_spawner{\
normal_config:{\
total_mobs:5,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:30,spawn_potentials:[\
{\
data: {\
entity: {\
id:"slime",\
Size:1,\
Tags:["stellarity.end_city"]\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/consumables"\
},\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/key"\
}\
]\
},\
ominous_config:{\
total_mobs:5,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:25,\
spawn_potentials:[\
{\
data: {\
entity: {\
id:"slime",\
Size:1,\
Tags:["stellarity.end_city"]\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/ominous/consumables"\
},\
{\
weight:3,\
data:"stellarity:end_city/trial_spawner/ominous/key"\
}\
],\
"items_to_drop_when_ominous":"stellarity:end_city/trial_spawner/ominous_item_spawn"\
}\
}


execute if score #random stellarity.misc matches 5..7 run \
setblock ~ ~ ~ trial_spawner{\
normal_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:30,spawn_potentials:[\
{\
data: {\
entity: {\
id:"zombie",\
Tags:["stellarity.end_city"]\
},\
equipment:{\
loot_table:"stellarity:end_city/spawner_equipment/zombie_normal",\
slot_drop_chances:0f\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/consumables"\
},\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/key"\
}\
]\
},\
ominous_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:25,\
spawn_potentials:[\
{\
data:{\
entity:{\
id:"zombie",\
Tags:["stellarity.end_city"]\
},\
equipment:{\
loot_table:"stellarity:end_city/spawner_equipment/zombie_ominous",\
slot_drop_chances:0f\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/ominous/consumables"\
},\
{\
weight:3,\
data:"stellarity:end_city/trial_spawner/ominous/key"\
}\
],\
"items_to_drop_when_ominous":"stellarity:end_city/trial_spawner/ominous_item_spawn"\
}\
}


execute if score #random stellarity.misc matches 8..10 run \
setblock ~ ~ ~ trial_spawner{\
normal_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:30,spawn_potentials:[\
{\
data: {\
entity: {\
id:"skeleton",\
Tags:["stellarity.end_city"]\
},\
equipment:{\
loot_table:"stellarity:end_city/spawner_equipment/skeleton_normal",\
slot_drop_chances:0f\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/consumables"\
},\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/key"\
}\
]\
},\
ominous_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:1,\
total_mobs_added_per_player:1,\
ticks_between_spawn:25,\
spawn_potentials:[\
{\
data:{\
entity:{\
id:"skeleton",\
Tags:["stellarity.end_city"]\
},\
equipment:{\
loot_table:"stellarity:end_city/spawner_equipment/skeleton_ominous",\
slot_drop_chances:0f\
}\
},\
weight:1\
}\
],\
loot_tables_to_eject:[\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/ominous/consumables"\
},\
{\
weight:3,\
data:"stellarity:end_city/trial_spawner/ominous/key"\
}\
],\
"items_to_drop_when_ominous":"stellarity:end_city/trial_spawner/ominous_item_spawn"\
}\
}
