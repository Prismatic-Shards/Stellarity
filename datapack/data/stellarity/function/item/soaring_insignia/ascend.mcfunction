attribute @s[tag=!stellarity.insignia.flying] gravity modifier add stellarity:soaring_insignia.base -1 add_multiplied_base
effect give @s[tag=!stellarity.insignia.flying] levitation 1 1 true

tag @s add stellarity.insignia.flying

attribute @s gravity modifier remove stellarity:soaring_insignia.flight
attribute @s gravity modifier add stellarity:soaring_insignia.flight -0.1 add_multiplied_base

