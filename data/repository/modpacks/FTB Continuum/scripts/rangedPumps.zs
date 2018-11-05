#Name: rangedPumps.zs
#Author: Feed the Beast

print("Initializing 'rangedPumps.zs'...");

#pump
recipes.remove(<rangedpumps:pump>);
recipes.addShaped(<rangedpumps:pump>, [[<ore:obsidian>, <minecraft:diamond_pickaxe>, <ore:obsidian>], [<minecraft:water_bucket>, <ore:machineBlockAdvanced>, <minecraft:lava_bucket>], [<ore:obsidian>, <minecraft:diamond_pickaxe>, <ore:obsidian>]]);

print("Initialized 'rangedPumps.zs'");