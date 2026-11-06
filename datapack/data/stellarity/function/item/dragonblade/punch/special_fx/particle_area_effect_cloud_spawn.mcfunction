function kohara:particles/spawn_particle {speed:0,billboard:fixed,model:"stellarity:_particle/sigil_glow",despawn_value:30,state:fixed,spread_initial:0,spread_radius:0,id:dragonblade_sigil}

#function stellarity:item/dragonblade/punch/special_fx/dragon_breath
#function stellarity:item/dragonblade/punch/special_fx/end_rod
function stellarity:item/dragonblade/punch/special_fx/smoke
execute rotated ~90 ~ run function stellarity:item/dragonblade/punch/special_fx/end_rod_secondary

particle minecraft:smoke ^ ^ ^ .35 .35 .35 0 25

playsound stellarity:item.dragonblade.punch neutral @a[distance=0..] ~ ~ ~
