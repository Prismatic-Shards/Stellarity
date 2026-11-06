execute facing entity @p[predicate=stellarity:item/holding/tamaris,predicate=kohara:player/is_sneaking] eyes rotated ~ 0 run function stellarity:item/tamaris/execute/animation/as_entity/facing_player

playsound stellarity:item.tamaris.execute_bg player @a[distance=0..] ~ ~1.05 ~ 1 1

execute if entity @p[name="Senjuukotentaiho"] run playsound stellarity:item.tamaris.chime player @a[distance=0..] ~ ~1.05 ~ 1 1

advancement grant @p[predicate=stellarity:item/holding/tamaris,predicate=kohara:player/is_sneaking] only stellarity:altar_of_the_accursed/blood_for_blood

function stellarity:item/tamaris/execute/blood_for_blood
