execute if entity @s[tag=stellarity.spectral_bolt] run function stellarity:item/sharanga/bolt/loop

execute if entity @s[tag=stellarity.void_arrow] run function stellarity:item/call_of_the_void/arrow/loop

execute if entity @s[tag=stellarity.floral_armor.velocity] unless data entity @s inBlockState run function stellarity:item/armor/floral/arrow/trail
