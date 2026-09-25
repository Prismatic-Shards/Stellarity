summon end_crystal ~ ~ ~ {ShowBottom:1b,Tags:["stellarity.new_crystal","stellarity.end_crystal","smithed.entity"]}

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle dragon_breath ~ ~ ~ 0 0 0 1 50 force

function stellarity:entity/dragon/attacks/revive_crystals/wave

kill @s
