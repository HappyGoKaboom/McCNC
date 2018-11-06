#Name: enderStorage.zs
#Author: Feed the Beast

print("Initializing 'enderStorage.zs'...");

#enderchest
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage>, [[<ore:rodBlaze>, <ore:blockWool>, <ore:rodBlaze>], [<ore:obsidian>, <ironchest:iron_chest:1>, <ore:obsidian>], [<ore:rodBlaze>, <wrcbe:material:2>, <ore:rodBlaze>]]);
<enderstorage:ender_storage>.addTooltip(format.darkRed("Any wool color crafts WHITE/WHITE/WHITE!"));

#endertank
recipes.remove(<enderstorage:ender_storage:1>);
recipes.addShaped(<enderstorage:ender_storage:1>, [[<ore:rodBlaze>, <ore:blockWool>, <ore:rodBlaze>], [<ore:obsidian>, <minecraft:cauldron>, <ore:obsidian>], [<ore:rodBlaze>, <wrcbe:material:2>, <ore:rodBlaze>]]);
<enderstorage:ender_storage:1>.addTooltip(format.darkRed("Any wool color crafts WHITE/WHITE/WHITE!"));

#enderpouch
recipes.remove(<enderstorage:ender_pouch>);
recipes.addShaped(<enderstorage:ender_pouch>, [[<minecraft:blaze_powder>, <ore:leather>, <minecraft:blaze_powder>], [<ore:leather>, <wrcbe:material:2>, <ore:leather>], [<minecraft:blaze_powder>, <ore:blockWool>, <minecraft:blaze_powder>]]);
<enderstorage:ender_pouch>.addTooltip(format.darkRed("Any wool color crafts WHITE/WHITE/WHITE!"));

print("Initialized 'enderStorage.zs'");