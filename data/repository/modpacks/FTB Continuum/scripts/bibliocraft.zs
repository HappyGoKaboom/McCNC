#Name: bibliocraft.zs
#Author: Feed the Beast

print("Initializing 'bibliocraft.zs'...");

#print press chase
recipes.remove(<bibliocraft:bibliochase>);
recipes.addShaped(<bibliocraft:bibliochase>, [[null, <ore:slabWood>, null], [<ore:slabWood>, <ore:plateRefinedIron>, <ore:slabWood>], [null, <ore:slabWood>, null]]);

#typesetting table
recipes.remove(<bibliocraft:typesettingtable>);
recipes.addShaped(<bibliocraft:typesettingtable>, [[<ore:plateSapphire>, <bibliocraft:bibliochase>, <ore:plateSapphire>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:plankWood>, <ore:blockRedstone>, <ore:plankWood>]]);

#printing press
recipes.remove(<bibliocraft:printingpress>);
recipes.addShaped(<bibliocraft:printingpress>, [[<ore:platePeridot>, <bibliocraft:bibliochase>, <ore:platePeridot>], [<minecraft:stone_slab:4>, <minecraft:stone_slab:4>, <minecraft:stone_slab:4>], [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);


print("Initialized 'bibliocraft.zs'");