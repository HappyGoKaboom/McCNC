#Name: smelting.zs
#Author: Feed the Beast

print("Initializing 'smelting.zs'...");

#remove rubber
furnace.remove(<techreborn:part:32>);

#remove refined iron
furnace.remove(<techreborn:ingot:19>);
#mods.thermalexpansion.RedstoneFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:sand>);

#remove silicon
furnace.remove(<refinedstorage:silicon>);
furnace.remove(<appliedenergistics2:material:5>);
#mods.thermalexpansion.RedstoneFurnace.removeRecipe(<minecraft:quartz>);
#mods.thermalexpansion.RedstoneFurnace.removeRecipe(<appliedenergistics2:material:2>);

print("Initialized 'smelting.zs'");