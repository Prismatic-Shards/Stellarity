data merge storage stellarity:temp {end_portal:{beam_thingy:{x:0,z:0}}}
execute store result storage stellarity:temp end_portal.beam_thingy.x float 0.1 run random value -12..12
execute store result storage stellarity:temp end_portal.beam_thingy.z float 0.1 run random value -12..12

function stellarity:sfx/end_portal/beam_thingy/spawn_macro with storage stellarity:temp end_portal.beam_thingy
