function stellarity:item/chorus_dagger/damage/deal with storage stellarity:temp chorus_dagger

execute \
facing entity @p[predicate=stellarity:item/holding/chorus_dagger,predicate=kohara:player/is_sneaking] eyes \
rotated ~ 0 \
positioned ^ ^ ^1 \
as @p[predicate=stellarity:item/holding/chorus_dagger,predicate=kohara:player/is_sneaking] \
rotated as @s \
run \
function stellarity:item/chorus_dagger/as_player_post_dash

playsound entity.player.attack.crit player @a[distance=0..] ~ ~ ~ 1 1
particle crit ~ ~1 ~ 0 0 0 0.8 40 normal
