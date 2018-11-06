print("ImmersiveCraft");

// Saw requires Iron
recipes.remove(<immcraft:saw>);
recipes.addShaped(<immcraft:saw>, [[null, <minecraft:stick>, <ore:ingotIron>], [<minecraft:stick>, <ore:ingotIron>, null], [<minecraft:stick>, null, null]]);

// Cupboard and Shelf require Slabs
recipes.remove(<immcraft:cupboard>);
recipes.remove(<immcraft:shelf>);
recipes.addShaped(<immcraft:cupboard>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:slabWood>, null, <minecraft:trapdoor>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);
recipes.addShaped(<immcraft:shelf>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:slabWood>, null, null], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

// Furnace recipe
recipes.remove(<immcraft:furnace>);
recipes.addShaped(<immcraft:furnace>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:cobblestone>, null, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

<ore:chest>.add(<immcraft:chest>);

// Tank
//recipes.remove(<aquamunda:tank>);
//recipes.addShaped(<aquamunda:tank>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, null, <ore:plateIron>], [<immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>]]);

// Boiler
//recipes.remove(<aquamunda:boiler>);
//recipes.addShaped(<aquamunda:boiler>, [[<immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>], [<ore:plateIron>, null, <ore:plateIron>], [<immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>]]);

// Evaporator
//recipes.remove(<aquamunda:evaporator>);
//recipes.addShaped(<aquamunda:evaporator>, [[<enderio:blockFusedQuartz:1>, <enderio:blockFusedQuartz:1>, <enderio:blockFusedQuartz:1>], [<enderio:blockFusedQuartz:1>, null, <enderio:blockFusedQuartz:1>], [<immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>, <immersiveengineering:sheetmetalSlab:9>]]);

// Cooker
//recipes.remove(<aquamunda:cooker>);
//recipes.addShaped(<aquamunda:cooker>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
