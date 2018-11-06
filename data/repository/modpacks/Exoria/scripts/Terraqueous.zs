print("Terraqueous");

// Dust Furnace Removal
furnace.remove(<terraqueous:item_main:50>, <*>);
furnace.remove(<minecraft:diamond>, <*>);
furnace.remove(<minecraft:emerald>, <*>);
furnace.remove(<minecraft:ender_pearl>, <*>);

// Lapis Dust fix
recipes.removeShapeless(<minecraft:dye:4>);
recipes.addShaped(<actuallyadditions:item_dust:4>, [[<terraqueous:item_main:212>, <terraqueous:item_main:212>], [<terraqueous:item_main:212>, <terraqueous:item_main:212>]]);

// Coal
recipes.remove(<terraqueous:item_main:207>);
recipes.addShaped(<thermalfoundation:material:768>, [[<terraqueous:item_main:206>, <terraqueous:item_main:206>], [<terraqueous:item_main:206>, <terraqueous:item_main:206>]]);

// Increase Burnium Burn Time
furnace.setFuel(<terraqueous:item_main:50>, 6400);
furnace.setFuel(<terraqueous:earth_ore:4>, 64000);

// Craftbench
recipes.remove(<terraqueous:crafting:*>);
recipes.addShaped(<terraqueous:crafting:5>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <buildcraftfactory:autoworkbench_item>, <ore:stone>], [<ore:stone>, <ore:plateCopper>, <ore:stone>]]);

// Furnace
recipes.addShaped(<terraqueous:crafting:6>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <minecraft:furnace>, <ore:stone>], [<ore:stone>, <ore:plateCopper>, <ore:stone>]]);
