import crafttweaker.item.IItemStack;

print("Pressure Pipes");

// Temp Remove Infinite Water Source
recipes.remove(<pressure:water_source>);
recipes.addShaped(<pressure:water_source>, [[<pressure:tank_wall>, <pressure:tank_wall>, <pressure:tank_wall>], [<minecraft:water_bucket>, <thermalexpansion:device>, <minecraft:water_bucket>], [<pressure:tank_wall>, <pressure:tank_wall>, <pressure:tank_wall>]]);

