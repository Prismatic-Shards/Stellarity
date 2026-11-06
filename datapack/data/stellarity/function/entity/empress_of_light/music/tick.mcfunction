execute as @a[distance=..60] run function stellarity:entity/empress_of_light/music/as_player
execute as @a[distance=60..,scores={stellarity.music.empress_of_light.timer=1..}] run function stellarity:entity/empress_of_light/music/reset
