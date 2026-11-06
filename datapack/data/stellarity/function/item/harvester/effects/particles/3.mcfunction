particle minecraft:falling_dust{block_state: 'minecraft:ice'} ~ ~1 ~ 0.45 0.72 0.45 0 1 normal
execute if predicate kohara:chance/40percent run particle minecraft:dust{color:[0.956, 0.4, 0.8], scale:1.15} ~ ~1 ~ 0.45 0.72 0.45 0 1 normal

execute if predicate kohara:chance/50percent run \
    particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 1 normal
