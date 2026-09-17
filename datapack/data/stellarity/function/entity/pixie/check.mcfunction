# Check if pixies are enabled in config
execute if score #stellarity.config stellarity.config.enable_pixie matches 0 run tp @s ~ -1000 ~
execute if score #stellarity.config stellarity.config.enable_pixie matches 0 run return 1

execute store result score #pixie_count stellarity.misc if entity @e[type=vex,tag=stellarity.pixie]
execute store result score #allay_count stellarity.misc if entity @e[type=allay,tag=stellarity.allay.natural_hallow_spawn]

# Cap at 30 pixies max and choose between radiant (15%) or regular
execute if score #stellarity.config stellarity.config.enable_pixie matches 1 if score #pixie_count stellarity.misc matches 30.. store success score #is_radiant stellarity.misc if predicate kohara:chance/15percent
execute if score #stellarity.config stellarity.config.enable_pixie matches 1 unless score #pixie_count stellarity.misc matches 30.. if score #is_radiant stellarity.misc matches 1 run function stellarity:entity/pixie/spawn_radiant
execute if score #stellarity.config stellarity.config.enable_pixie matches 1 unless score #pixie_count stellarity.misc matches 30.. if score #is_radiant stellarity.misc matches 0 run function stellarity:entity/pixie/spawn

# Allow normal pixies to spawn
execute unless score #allay_count stellarity.misc matches 5.. if predicate kohara:chance/5percent run function stellarity:entity/pixie/allay

# Prevent death animation from playing
  tp @s ~ -1000 ~
