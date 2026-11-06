function stellarity:structure/end_city/get_direction

# North
  execute if data storage stellarity:temp {end_city:{post_gen:{direction:"180"}}} run fill ~ ~ ~-2 ~ ~1 ~ air
  execute if data storage stellarity:temp {end_city:{post_gen:{direction:"180"}}} \
  unless block ~ ~2 ~-2 purpur_slab run \
  fill ~ ~ ~-2 ~ ~2 ~-3 air
  # South
    execute if data storage stellarity:temp {end_city:{post_gen:{direction:"none"}}} run fill ~ ~ ~2 ~ ~1 ~ air
    execute if data storage stellarity:temp {end_city:{post_gen:{direction:"none"}}} \
    unless block ~ ~2 ~2 purpur_slab run \
    fill ~ ~ ~2 ~ ~2 ~3 air
    # East
      execute if data storage stellarity:temp {end_city:{post_gen:{direction:"counterclockwise_90"}}} run fill ~2 ~ ~ ~ ~1 ~ air
      execute if data storage stellarity:temp {end_city:{post_gen:{direction:"counterclockwise_90"}}} \
      unless block ~2 ~2 ~ purpur_slab run \
      fill ~2 ~ ~ ~3 ~2 ~ air
      # West
        execute if data storage stellarity:temp {end_city:{post_gen:{direction:"clockwise_90"}}} run fill ~-2 ~ ~ ~ ~1 ~ air
        execute if data storage stellarity:temp {end_city:{post_gen:{direction:"clockwise_90"}}} \
        unless block ~-2 ~2 ~ purpur_slab run \
        fill ~-2 ~ ~ ~-3 ~2 ~ air
