execute if score @s stellarity.misc matches ..99 run particle minecraft:dust{color:[0.9764705882352941,0.788235294117647,0.8941176470588236], scale:0.8} ^ ^ ^ 0.25 0.15 0.25 1 2 normal
execute if score @s stellarity.misc matches 100..199 run particle minecraft:dust{color:[0.9764705882352941,0.788235294117647,0.8941176470588236], scale:1.05} ^ ^ ^ 0.25 0.15 0.25 1 2 normal
execute if score @s stellarity.misc matches 200..299 run particle minecraft:dust{color:[0.9764705882352941,0.788235294117647,0.8941176470588236], scale:1.3} ^ ^ ^ 0.25 0.15 0.25 1 2 normal
execute if score @s stellarity.misc matches 300..399 run particle minecraft:dust{color:[0.9764705882352941,0.788235294117647,0.8941176470588236], scale:1.55} ^ ^ ^ 0.25 0.15 0.25 1 2 normal
execute if score @s stellarity.misc matches 400.. run particle minecraft:dust{color:[0.9764705882352941,0.788235294117647,0.8941176470588236], scale:1.8} ^ ^ ^ 0.25 0.15 0.25 1 2 normal

execute if score @s[predicate=kohara:chance/15percent] stellarity.misc matches ..100 run particle falling_nectar ^ ^ ^ 0.175 0 0.175 1 1 normal
execute if score @s[predicate=kohara:chance/30percent] stellarity.misc matches 100..199 run particle falling_nectar ^ ^ ^ 0.175 0 0.175 1 1 normal
execute if score @s[predicate=kohara:chance/45percent] stellarity.misc matches 200..299 run particle falling_nectar ^ ^ ^ 0.175 0 0.175 1 1 normal
execute if score @s[predicate=kohara:chance/60percent] stellarity.misc matches 300..399 run particle falling_nectar ^ ^ ^ 0.175 0 0.175 1 1 normal
execute if score @s[predicate=kohara:chance/75percent] stellarity.misc matches 400.. run particle falling_nectar ^ ^ ^ 0.175 0 0.175 1 1 normal
