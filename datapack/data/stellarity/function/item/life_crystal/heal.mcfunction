tag @s add stellarity.life_crystal.active

execute unless score @s stellarity.item.life_crystal.heal_amount matches 300.. run \
scoreboard players add @s stellarity.item.life_crystal.heal_amount 1

# Portal Particles
  execute if score @s stellarity.item.life_crystal.heal_amount matches 1..74 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 2 force
  execute if score @s stellarity.item.life_crystal.heal_amount matches 75..149 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 4 force
  execute if score @s stellarity.item.life_crystal.heal_amount matches 150..224 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 6 force
  execute if score @s stellarity.item.life_crystal.heal_amount matches 225..299 run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 8 force
  execute if score @s stellarity.item.life_crystal.heal_amount matches 300.. run particle minecraft:portal ~ ~1.05 ~ 0 0 0 0.87 10 force

scoreboard players operation #heal kohara.misc = @s stellarity.item.life_crystal.heal_amount
function kohara:heal
