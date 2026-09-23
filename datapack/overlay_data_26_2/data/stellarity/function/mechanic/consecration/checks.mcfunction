
# # Permanent buffs
# execute if entity @s[tag=stellarity.consecration.golden_carrot] run function stellarity:mechanic/consecration/drops/lucky_carrot
# execute if entity @s[tag=stellarity.consecration.poisonous_potato] run function stellarity:mechanic/consecration/drops/cleansing_potato
# execute if entity @s[tag=stellarity.consecration.chorus_fruit] run function stellarity:mechanic/consecration/drops/energizing_fruit
# execute if entity @s[tag=stellarity.consecration.rabbit_stew] run function stellarity:mechanic/consecration/drops/endurance_brew
# execute if entity @s[tag=stellarity.consecration.beetroot] run function stellarity:mechanic/consecration/drops/rageroot
# execute if entity @s[tag=stellarity.consecration.sweet_berries] run function stellarity:mechanic/consecration/drops/fury_berries
# execute if entity @s[tag=stellarity.consecration.enchanted_golden_apple] run function stellarity:mechanic/consecration/drops/miracle_fruit

# Cherry stuff
  execute if entity @s[tag=stellarity.consecration.leaves] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cherry_leaves"}
  execute if entity @s[tag=stellarity.consecration.sapling] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cherry_sapling"}
  execute if entity @s[tag=stellarity.consecration.logs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cherry_log"}
  execute if entity @s[tag=stellarity.consecration.woods] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cherry_wood"}
  execute if entity @s[tag=stellarity.consecration.stripped_logs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"stripped_cherry_log"}
  execute if entity @s[tag=stellarity.consecration.stripped_woods] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"stripped_cherry_wood"}

## TRIGGER WARNING: FORMATTING
  # Item <-> Item
    execute if entity @s[tag=stellarity.consecration.wither_rose] run \
    function stellarity:mechanic/consecration/drops/convert_to {item:"poppy"}

    execute if entity @s[tag=stellarity.consecration.dead_bush] run \
    function stellarity:mechanic/consecration/drops/convert_to {item:"bush"}

  execute if entity @s[tag=stellarity.consecration.ink_sac] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"glow_ink_sac"}
  execute if entity @s[tag=stellarity.consecration.glow_ink_sac] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"ink_sac"}

  execute if entity @s[tag=stellarity.consecration.pink_petals] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"wildflowers"}
  execute if entity @s[tag=stellarity.consecration.wildflowers] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"pink_petals"}

execute if entity @s[tag=stellarity.consecration.brick] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"nether_brick"}
execute if entity @s[tag=stellarity.consecration.nether_brick] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"brick"}

execute if entity @s[tag=stellarity.consecration.slime_block] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"honey_block"}
execute if entity @s[tag=stellarity.consecration.honey_block] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"slime_block"}

execute if entity @s[tag=stellarity.consecration.torch] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"soul_torch"}
execute if entity @s[tag=stellarity.consecration.soul_torch] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"torch"}

execute if entity @s[tag=stellarity.consecration.lantern] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"soul_lantern"}
execute if entity @s[tag=stellarity.consecration.soul_lantern] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"lantern"}

execute if entity @s[tag=stellarity.consecration.campfire] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"soul_campfire"}
execute if entity @s[tag=stellarity.consecration.soul_campfire] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"campfire"}

execute if entity @s[tag=stellarity.consecration.glowstone] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"shroomlight"}
execute if entity @s[tag=stellarity.consecration.shroomlight] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"glowstone"}

execute if entity @s[tag=stellarity.consecration.chorus_flower] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"spore_blossom"}
execute if entity @s[tag=stellarity.consecration.spore_blossom] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"chorus_flower"}

execute if entity @s[tag=stellarity.consecration.pumpkin] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"melon"}
execute if entity @s[tag=stellarity.consecration.melon] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"pumpkin"}
execute if entity @s[tag=stellarity.consecration.pumpkin_seeds] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"melon_seeds"}
execute if entity @s[tag=stellarity.consecration.melon_seeds] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"pumpkin_seeds"}

execute if entity @s[tag=stellarity.consecration.obsidian] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"crying_obsidian"}
execute if entity @s[tag=stellarity.consecration.crying_obsidian] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"obsidian"}

execute if entity @s[tag=stellarity.consecration.breeze_rod] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"blaze_rod"}
execute if entity @s[tag=stellarity.consecration.blaze_rod] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"breeze_rod"}

execute if entity @s[tag=stellarity.consecration.azalea] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"flowering_azalea"}
execute if entity @s[tag=stellarity.consecration.flowering_azalea] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"azalea"}
execute if entity @s[tag=stellarity.consecration.azalea_leaves] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"flowering_azalea_leaves"}
execute if entity @s[tag=stellarity.consecration.flowering_azalea_leaves] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"azalea_leaves"}

execute if entity @s[tag=stellarity.consecration.compass] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"clock"}
execute if entity @s[tag=stellarity.consecration.clock] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"compass"}

execute if entity @s[tag=stellarity.consecration.charcoal] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"coal"}
execute if entity @s[tag=stellarity.consecration.coal] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"charcoal"}

execute if entity @s[tag=stellarity.consecration.calibrated_sculk_sensor] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sculk_sensor"}

# Music Discs
  execute if entity @s[tag=stellarity.consecration.music_disc.13] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"music_disc_cat"}
  execute if entity @s[tag=stellarity.consecration.music_disc.cat] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"music_disc_13"}
  execute if entity @s[tag=stellarity.consecration.music_disc.5] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"music_disc_relic"}
  execute if entity @s[tag=stellarity.consecration.music_disc.creator] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"music_disc_creator_music_box"}
  execute if entity @s[tag=stellarity.consecration.music_disc.creator_music_box] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"music_disc_creator"}

# Hallowed Ingots
  execute if entity @s[tag=stellarity.consecration.iron_ingot] run function stellarity:mechanic/consecration/drops/hallowed_ingot

# Red Sand <-> Sand
# This part is so large that I will make it into its own section
  execute if entity @s[tag=stellarity.consecration.sand] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"red_sand"}
  execute if entity @s[tag=stellarity.consecration.sandstone.block] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"red_sandstone"}
  execute if entity @s[tag=stellarity.consecration.sandstone.cut_slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cut_red_sandstone_slab"}
  execute if entity @s[tag=stellarity.consecration.sandstone.chiseled] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"chiseled_red_sandstone"}
  execute if entity @s[tag=stellarity.consecration.sandstone.cut] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cut_red_sandstone"}
  execute if entity @s[tag=stellarity.consecration.sandstone.slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"red_sandstone_slab"}
  execute if entity @s[tag=stellarity.consecration.sandstone.smooth_slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_red_sandstone_slab"}
  execute if entity @s[tag=stellarity.consecration.sandstone.smooth_stairs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_red_sandstone_stairs"}
  execute if entity @s[tag=stellarity.consecration.sandstone.smooth] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_red_sandstone"}
  execute if entity @s[tag=stellarity.consecration.sandstone.stairs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"red_sandstone_stairs"}
  execute if entity @s[tag=stellarity.consecration.sandstone.wall] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"red_sandstone_wall"}

execute if entity @s[tag=stellarity.consecration.red_sand] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sand"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.block] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sandstone"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.cut_slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cut_sandstone_slab"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.chiseled] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"chiseled_sandstone"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.cut] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cut_sandstone"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sandstone_slab"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.smooth_slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_sandstone_slab"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.smooth_stairs] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_sandstone_stairs"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.smooth] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"smooth_sandstone"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.stairs] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sandstone_stairs"}
execute if entity @s[tag=stellarity.consecration.red_sandstone.wall] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sandstone_wall"}

# Iron Armor -> Chainmail Armor
  execute if entity @s[tag=stellarity.consecration.iron_armor.helmet] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"chainmail_helmet"}
  execute if entity @s[tag=stellarity.consecration.iron_armor.chestplate] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"chainmail_chestplate"}
  execute if entity @s[tag=stellarity.consecration.iron_armor.leggings] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"chainmail_leggings"}
  execute if entity @s[tag=stellarity.consecration.iron_armor.boots] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"chainmail_boots"}

# Stone <-> Deepslate
  execute if entity @s[tag=stellarity.consecration.stone] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate"}
  execute if entity @s[tag=stellarity.consecration.stone_slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_slab"}
  execute if entity @s[tag=stellarity.consecration.stone_stairs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_stairs"}
  execute if entity @s[tag=stellarity.consecration.stone_bricks] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_bricks"}
  execute if entity @s[tag=stellarity.consecration.stone_brick_slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_brick_slab"}
  execute if entity @s[tag=stellarity.consecration.stone_brick_stairs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_brick_stairs"}
  execute if entity @s[tag=stellarity.consecration.stone_brick_wall] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate_brick_wall"}
  execute if entity @s[tag=stellarity.consecration.cobblestone] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cobbled_deepslate"}
  execute if entity @s[tag=stellarity.consecration.cobblestone_slab] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cobbled_deepslate_slab"}
  execute if entity @s[tag=stellarity.consecration.cobblestone_stairs] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cobbled_deepslate_stairs"}
  execute if entity @s[tag=stellarity.consecration.cobblestone_wall] run \
  function stellarity:mechanic/consecration/drops/convert_to {item:"cobbled_deepslate_wall"}

execute if entity @s[tag=stellarity.consecration.deepslate] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone"}
execute if entity @s[tag=stellarity.consecration.deepslate_slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_slab"}
execute if entity @s[tag=stellarity.consecration.deepslate_stairs] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_stairs"}
execute if entity @s[tag=stellarity.consecration.deepslate_bricks] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_bricks"}
execute if entity @s[tag=stellarity.consecration.deepslate_brick_slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_brick_slab"}
execute if entity @s[tag=stellarity.consecration.deepslate_brick_stairs] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_brick_stairs"}
execute if entity @s[tag=stellarity.consecration.deepslate_brick_wall] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"stone_brick_wall"}
execute if entity @s[tag=stellarity.consecration.cobbled_deepslate] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cobblestone"}
execute if entity @s[tag=stellarity.consecration.cobbled_deepslate_slab] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cobblestone_slab"}
execute if entity @s[tag=stellarity.consecration.cobbled_deepslate_stairs] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cobblestone_stairs"}
execute if entity @s[tag=stellarity.consecration.cobbled_deepslate_wall] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"cobblestone_wall"}

#execute if entity @s[tag=stellarity.consecration.stone] run \
#function stellarity:mechanic/consecration/drops/convert_to {item:"deepslate"}
#execute if entity @s[tag=stellarity.consecration.deepslate] run \
#function stellarity:mechanic/consecration/drops/convert_to {item:"blackstone"}
#execute if entity @s[tag=stellarity.consecration.blackstone] run \
#function stellarity:mechanic/consecration/drops/convert_to {item:"stone"}

execute if entity @s[tag=stellarity.consecration.turtle_scute] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"armadillo_scute"}
execute if entity @s[tag=stellarity.consecration.armadillo_scute] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"turtle_scute"}

execute if entity @s[tag=stellarity.consecration.sticky_piston] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"piston"}

execute if entity @s[tag=stellarity.consecration.dispenser] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"dropper"}

execute if entity @s[tag=stellarity.consecration.ominous_trial_key] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"trial_key"}

execute if entity @s[tag=stellarity.consecration.gilded_purpur_key] run \
function stellarity:mechanic/consecration/drops/purpur_key

execute if entity @s[tag=stellarity.consecration.sculk_catalyst] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sculk_shrieker"}
execute if entity @s[tag=stellarity.consecration.sculk_shrieker] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"sculk_catalyst"}

execute if entity @s[tag=stellarity.consecration.rotten_flesh] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"feather"}
execute if entity @s[tag=stellarity.consecration.feather] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"rotten_flesh"}

execute if entity @s[tag=stellarity.consecration.fire_charge] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"wind_charge"}
execute if entity @s[tag=stellarity.consecration.wind_charge] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"fire_charge"}

execute if entity @s[tag=stellarity.consecration.ochre_froglight] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"verdant_froglight"}
execute if entity @s[tag=stellarity.consecration.verdant_froglight] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"pearlescent_froglight"}
execute if entity @s[tag=stellarity.consecration.pearlescent_froglight] run \
function stellarity:mechanic/consecration/drops/convert_to {item:"ochre_froglight"}