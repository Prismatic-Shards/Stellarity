# Constant Biome Generation

## For copying and pasting

<hr>

**Dragon's Den**, AKA **The End** biome always generates at <u>hardcoded minimum erosion and continents noise values</u> to prevent it from generating outside of main island. These values are forced to -2 around X:0 Z:0.

For more info look into `stellarity/worldgen/density_function/end/erosion.json` and `./continents.json` files.

<hr>

**The Void**, AKA **The Utility Biome** always generates at hardcoded <u>2 depth</u> which ranges from <u>Y0 to ~Y24</u>. The biome is used only for preventing structures from generating in the void, which was a bug that plagued 1.4...

For more info look into `stellarity/worldgen/density_function/end/depth.json` file.

<hr>

```json
{
    "biome": "minecraft:the_end",
    "parameters": {
        "temperature": 0,
        "humidity": 0,
        "continentalness": -2,
        "erosion": -2,
        "weirdness": 0,
        "depth": [
            -2,
            2
        ],
        "offset": 0
    }
},
{
    "biome": "stellarity:the_void",
    "parameters": {
        "temperature": 0,
        "humidity": 0,
        "continentalness": 0,
        "erosion": 0,
        "weirdness": 0,
        "depth": 2,
        "offset": 1
    }
}
```
