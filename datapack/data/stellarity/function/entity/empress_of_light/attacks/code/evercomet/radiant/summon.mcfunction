scoreboard players add #evercomets stellarity.misc 1

$execute if score #evercomets stellarity.misc matches 1 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 2 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 3 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 4 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 5 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 6 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 7 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 8 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 9 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 10 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 11 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}
$execute if score #evercomets stellarity.misc matches 12 run summon marker ~$(x) ~5 ~$(z) {Tags:["stellarity.empress_of_light.evercomets","stellarity.marker","smithed.entity","smithed.strict"],Rotation:[$(rotation)f, 0f]}

execute as @n[type=marker,tag=stellarity.empress_of_light.evercomets] at @s run function stellarity:entity/empress_of_light/attacks/code/evercomet/post_spawn

playsound minecraft:block.amethyst_cluster.fall hostile @a[distance=0..] ~ ~ ~ 2.2 1