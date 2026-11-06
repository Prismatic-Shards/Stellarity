scoreboard players set @s stellarity.item.chorus_dagger.cooldown 160

function stellarity:item/chorus_dagger/damage/calculate

particle minecraft:dust_color_transition{from_color: [0.82, 0.322, 0.918], scale: 1.0, to_color: [0.549, 0.176, 0.737]} ~ ~1 ~ .3 .5 .3 0 40 force

# That's a one long command...
  execute as @n[type=!#kohara:invalid_targets,distance=0.01..8] \
  at @s run \
  function stellarity:item/chorus_dagger/as_entity
