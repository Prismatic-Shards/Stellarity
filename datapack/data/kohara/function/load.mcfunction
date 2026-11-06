scoreboard objectives add kohara.misc dummy

scoreboard objectives add kohara.detect.thrown_trident minecraft.used:minecraft.trident
scoreboard objectives add kohara.detect.used_ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add kohara.detect.flight_speed minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add kohara.detect.used_firework minecraft.used:minecraft.firework_rocket
scoreboard objectives add kohara.detect.right_click minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add kohara.detect.shot_bow minecraft.used:minecraft.bow
scoreboard objectives add kohara.is_drawing_bow dummy
scoreboard objectives add kohara.draw_time dummy
scoreboard objectives add kohara.shot_bow dummy

scoreboard objectives add kohara.thrown_trident dummy
scoreboard objectives add kohara.used_ender_pearl dummy
scoreboard objectives add kohara.flight_speed dummy
scoreboard objectives add kohara.used_firework dummy

scoreboard objectives add kohara.time_since_rest minecraft.custom:minecraft.time_since_rest
scoreboard objectives add kohara.hunger food
scoreboard objectives add kohara.level level

scoreboard objectives add kohara.particles.despawn dummy
scoreboard objectives add kohara.particles.display dummy
scoreboard objectives add kohara.particles.spread.distance dummy
scoreboard objectives add kohara.particles.spread.x dummy
scoreboard objectives add kohara.particles.spread.y dummy

scoreboard objectives add kohara.respawn_detection minecraft.custom:minecraft.time_since_death

scoreboard objectives add kohara.health_reset dummy

# Custom status effects
# kohara's Libs only handles loading, ticking and removing,
# the rest has to be set up manually
  function #kohara:status_effects/load


