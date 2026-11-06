setblock ~ ~1 ~ air replace

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["stellarity.marker","stellarity.trial_spawner"]}

setblock ~ ~ ~ trial_spawner{\
normal_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:2,\
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
},\
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
data:"stellarity:item/keys/winged_key"\
},\
{\
weight:1,\
data:"stellarity:end_city/trial_spawner/normal/consumables"\
}\
]\
},\
ominous_config:{\
total_mobs:6,\
simultaneous_mobs:2,\
simultaneous_mobs_added_per_player:2,\
total_mobs_added_per_player:1,\
ticks_between_spawn:25,\
spawn_potentials:[\
{\
data: {\
entity: {\
id:"skeleton",\
Tags:["stellarity.end_city"]\
},\
equipment:{\
loot_table:"stellarity:end_city/spawner_equipment/skeleton_ominous",\
slot_drop_chances:0f\
}\
},\
weight:1\
},\
{\
data: {\
entity: {\
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
data:"stellarity:item/keys/winged_key"\
}\
],\
"items_to_drop_when_ominous":"stellarity:end_city/trial_spawner/ominous_item_spawn"\
}\
}
