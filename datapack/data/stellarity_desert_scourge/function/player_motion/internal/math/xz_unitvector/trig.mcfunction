#> player_motion:internal/math/xz_unitvector/trig
$execute positioned 0.0 0.0 0.0 facing -$(x).0 -$(z).0 0.0 run tp d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f ~ ~ ~ ~ ~
execute store result storage stellarity_desert_scourge:player_motion_math magnitude.angle int 1 run data get entity d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f Rotation[1] 100
function stellarity_desert_scourge:player_motion/internal/math/xz_unitvector/sine with storage stellarity_desert_scourge:player_motion_math magnitude