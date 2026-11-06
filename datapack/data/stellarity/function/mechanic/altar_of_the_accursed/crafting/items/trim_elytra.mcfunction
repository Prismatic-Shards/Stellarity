# Resolve template pattern
data modify storage stellarity:temp trim.template set from entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] Item.id

data merge storage stringlib:input {split:{String:"",Separator:":"}}
data modify storage stringlib:input split.String set from storage stellarity:temp trim.template
function stellarity:util/stringlib/split

# Remove "_armor_trim_smithing_template" suffix
data modify storage stellarity:temp trim.pattern set from storage stringlib:output split[1]

# Specific pattern overrides
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:spire_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:spire"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:eye_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:eye"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:ward_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:ward"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:silence_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:silence"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:snout_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:snout"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:rib_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:rib"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:coast_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:coast"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:dune_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:dune"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:flow_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:flow"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:bolt_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:bolt"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:tide_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:tide"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:vex_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:vex"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:wild_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:wild"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:wayfinder_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:wayfinder"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:shaper_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:shaper"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:host_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:host"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:raiser_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:raiser"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_template] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_template] contents minecraft:sentry_armor_trim_smithing_template run data modify storage stellarity:temp trim.pattern set value "minecraft:sentry"

# Resolve material
data modify storage stellarity:temp trim.material set value "minecraft:iron"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:amethyst_shard run data modify storage stellarity:temp trim.material set value "minecraft:amethyst"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:diamond run data modify storage stellarity:temp trim.material set value "minecraft:diamond"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:emerald run data modify storage stellarity:temp trim.material set value "minecraft:emerald"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:gold_ingot run data modify storage stellarity:temp trim.material set value "minecraft:gold"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:iron_ingot run data modify storage stellarity:temp trim.material set value "minecraft:iron"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:lapis_lazuli run data modify storage stellarity:temp trim.material set value "minecraft:lapis"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:netherite_ingot run data modify storage stellarity:temp trim.material set value "minecraft:netherite"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:quartz run data modify storage stellarity:temp trim.material set value "minecraft:quartz"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:redstone run data modify storage stellarity:temp trim.material set value "minecraft:redstone"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:copper_ingot run data modify storage stellarity:temp trim.material set value "minecraft:copper"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar.trim_material] if items entity @n[type=item,distance=..2.5,tag=stellarity.altar.trim_material] contents minecraft:resin_brick run data modify storage stellarity:temp trim.material set value "minecraft:resin"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.chorus_plating] run data modify storage stellarity:temp trim.material set value "stellarity:chorus"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_shard] run data modify storage stellarity:temp trim.material set value "stellarity:enderite"
execute if entity @e[type=item,distance=..2.5,tag=stellarity.altar_of_the_accursed.stellarity.enderite_ingot] run data modify storage stellarity:temp trim.material set value "stellarity:enderite"

# Set craft data and start sequence
data modify storage stellarity:temp altar.craft set value {type:"trim_elytra"}
data modify storage stellarity:temp altar.craft.pattern set from storage stellarity:temp trim.pattern
data modify storage stellarity:temp altar.craft.material set from storage stellarity:temp trim.material

function stellarity:mechanic/altar_common/start_craft
