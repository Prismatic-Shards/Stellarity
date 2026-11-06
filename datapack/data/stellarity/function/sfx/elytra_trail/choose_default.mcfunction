data modify storage stellarity:temp elytra_trail.special set from storage stellarity:temp elytra_trail.item."stellarity:item"

execute unless data storage stellarity:temp elytra_trail.special run function stellarity:sfx/elytra_trail/default/normal with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{special:"dragon_wings"}} run function stellarity:sfx/elytra_trail/default/dragon with storage stellarity:temp elytra_trail.position
execute if data storage stellarity:temp {elytra_trail:{special:"empress_wings"}} run function stellarity:sfx/elytra_trail/default/empress
execute if data storage stellarity:temp {elytra_trail:{special:"phantom_wings"}} run function stellarity:sfx/elytra_trail/default/phantom with storage stellarity:temp elytra_trail.position
