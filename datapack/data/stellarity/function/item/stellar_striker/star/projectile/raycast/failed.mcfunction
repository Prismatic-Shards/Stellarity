#Commands to run when the raycast has failed to detect an entity and/or block.

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stellarity.target","smithed.entity","smithed.strict"],Duration:2,Age:1,custom_particle:{type:"block","block_state":"air"}}
