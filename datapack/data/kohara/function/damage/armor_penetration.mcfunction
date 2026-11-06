scoreboard players operation #damage_ap kohara.misc = #damage kohara.misc

$function kohara:reduce_by_percent {percent:$(armor_penetration),holder:"#damage",score:"kohara.misc"}

scoreboard players operation #damage_ap kohara.misc -= #damage kohara.misc
