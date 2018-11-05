#Name: immersiveEngineering.zs
#Author: Feed the Beast

print("Initializing 'immersiveEngineering.zs'...");

#faraday armor (moved into efab)
recipes.remove(<immersiveengineering:faraday_suit_head>);
recipes.remove(<immersiveengineering:faraday_suit_chest>);
recipes.remove(<immersiveengineering:faraday_suit_legs>);
recipes.remove(<immersiveengineering:faraday_suit_feet>);

#coal coke alt (late game)
mods.techreborn.blastFurnace.addRecipe(<immersiveengineering:material:6>, null, <minecraft:coal>, null, 400, 512, 2500);
mods.techreborn.blastFurnace.addRecipe(<immersiveengineering:stone_decoration:3>, null, <minecraft:coal_block>, null, 3200, 512, 2500);

#coke brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<ore:ingotBrick>, <ore:sand>, <ore:ingotBrick>], [<ore:sand>, <minecraft:clay>, <ore:sand>], [<ore:ingotBrick>, <ore:sand>, <ore:ingotBrick>]]);

#blast furnace bricks
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:blaze_powder>, <ore:ingotBrick>, <minecraft:blaze_powder>], [<ore:ingotBrickNether>, <immersiveengineering:stone_decoration:3>, <ore:ingotBrickNether>], [<minecraft:blaze_powder>, <ore:ingotBrick>, <minecraft:blaze_powder>]]);

#treated wood planks (moved into eFab)
recipes.remove(<immersiveengineering:treated_wood>);

#Storage Crate and Barrel
recipes.remove(<immersiveengineering:wooden_device0>);
recipes.addShaped(<immersiveengineering:wooden_device0>, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <ironchest:iron_chest:4>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);
recipes.remove(<immersiveengineering:wooden_device0:1>);
recipes.addShaped(<immersiveengineering:wooden_device0:1>, [[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <extrautils2:drum>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]]);
recipes.remove(<immersiveengineering:metal_device0:4>);
recipes.addShaped(<immersiveengineering:metal_device0:4>, [[<ore:blockSheetmetalAluminum>, <ore:blockSheetmetalAluminum>, <ore:blockSheetmetalAluminum>], [<ore:blockSheetmetalAluminum>, <extrautils2:drum:1>, <ore:blockSheetmetalAluminum>], [<ore:blockSheetmetalAluminum>, <ore:blockSheetmetalAluminum>, <ore:blockSheetmetalAluminum>]]);

#remove wire and force through metal press only
recipes.remove(<immersiveengineering:material:23>);
recipes.remove(<immersiveengineering:material:22>);
recipes.remove(<immersiveengineering:material:21>);
recipes.remove(<immersiveengineering:material:20>);

#kinetic dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:gearInvar>, <forestry:chipsets:3>, <ore:gearInvar>], [<forestry:thermionic_tubes:5>, <immersiveengineering:metal_decoration0:2>, <forestry:thermionic_tubes:5>], [<actuallyadditions:item_crystal_empowered:2>, <ore:gearElectrum>, <actuallyadditions:item_crystal_empowered:2>]]);

#conveyor belt moved into eFab
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [[null, <ore:leather>, null], [<ore:nuggetSteel>, <ore:dustRedstone>, <ore:nuggetSteel>]]);

#plate press recipe
recipes.remove(<immersiveengineering:mold>);
recipes.addShaped(<immersiveengineering:mold>, [[<ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <immersiveengineering:tool:1>]]);

#iron mechanical component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>, [[<ore:ingotIron>, null, <ore:ingotIron>], [null, <ore:ingotCopper>, null], [<ore:ingotIron>, null, <ore:ingotIron>]]);

#steel mechanical component
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [null, <ore:ingotCopper>, null], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);

#pipe
recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 4, [[null, <ore:platerefinedIron>, null], [<ore:platerefinedIron>, <extrautils2:pipe>, <ore:platerefinedIron>], [null, <ore:platerefinedIron>, null]]);

#tesla coil
recipes.remove(<immersiveengineering:metal_device1:8>);
recipes.addShaped(<immersiveengineering:metal_device1:8>, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>], [null, <immersiveengineering:metal_decoration0>, null], [<immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0:2>]]);

#railgun
recipes.remove(<immersiveengineering:railgun>);
recipes.addShaped(<immersiveengineering:railgun>, [[null, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:material:13>], [<immersiveengineering:metal_decoration0:1>, <immersiveengineering:material:14>, <immersiveengineering:metal_decoration0:2>], [<immersiveengineering:material:14>, <immersiveengineering:metal_decoration0:1>, null]]);

#additional capacitors
recipes.remove(<immersiveengineering:toolupgrade:9>);
recipes.addShaped(<immersiveengineering:toolupgrade:9>, [[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>]]);

#capacitor backpack
recipes.removeByRecipeName("immersiveengineering:armor/powerpack");
recipes.addShaped(<immersiveengineering:powerpack>, [[<harvestcraft:hardenedleatheritem>, <immersiveengineering:metal_decoration0:1>, <harvestcraft:hardenedleatheritem>], [<immersiveengineering:wirecoil>, <immersiveengineering:connector>, <immersiveengineering:wirecoil>]]);

#remove iridium from metal press
mods.immersiveengineering.MetalPress.removeRecipe(<techreborn:plates:37>);

#hemp seeds
mods.forestry.Carpenter.addRecipe(<immersiveengineering:seed>, [[<minecraft:wheat_seeds>]], 30, <liquid:seed.oil> * 200);

#garden cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<ore:blockGlass>, <ore:electronTube>, <ore:blockGlass>], [<ore:blockGlass>, <thermalcultivation:watering_can:1>, <ore:blockGlass>], [<immersiveengineering:material:9>, <ore:machineBlockAdvanced>, <immersiveengineering:material:9>]]);

#uranium block
recipes.addShaped(<immersiveengineering:storage:5>, [[<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>], [<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>], [<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>]]);

#remove sheet metal (move into efab)
recipes.remove(<immersiveengineering:sheetmetal>);
recipes.remove(<immersiveengineering:sheetmetal:1>);
recipes.remove(<immersiveengineering:sheetmetal:2>);
recipes.remove(<immersiveengineering:sheetmetal:3>);
recipes.remove(<immersiveengineering:sheetmetal:4>);
recipes.remove(<immersiveengineering:sheetmetal:5>);
recipes.remove(<immersiveengineering:sheetmetal:6>);
recipes.remove(<immersiveengineering:sheetmetal:7>);
recipes.remove(<immersiveengineering:sheetmetal:8>);
recipes.remove(<immersiveengineering:sheetmetal:10>);
recipes.remove(<immersiveengineering:sheetmetal:9>);

#sheet metal slabs to block
recipes.addShapeless(<immersiveengineering:sheetmetal:8>, [<ore:slabSheetmetalSteel>, <ore:slabSheetmetalSteel>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:7>, [<ore:slabSheetmetalElectrum>, <ore:slabSheetmetalElectrum>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:6>, [<ore:slabSheetmetalConstantan>, <ore:slabSheetmetalConstantan>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:5>, [<ore:slabSheetmetalUranium>, <ore:slabSheetmetalUranium>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:4>, [<ore:slabSheetmetalNickel>, <ore:slabSheetmetalNickel>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:3>, [<ore:slabSheetmetalSilver>, <ore:slabSheetmetalSilver>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:2>, [<ore:slabSheetmetalLead>, <ore:slabSheetmetalLead>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:1>, [<ore:slabSheetmetalAluminum>, <ore:slabSheetmetalAluminum>]);
recipes.addShapeless(<immersiveengineering:sheetmetal>, [<ore:slabSheetmetalCopper>, <ore:slabSheetmetalCopper>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:9>, [<ore:slabSheetmetalIron>, <ore:slabSheetmetalIron>]);
recipes.addShapeless(<immersiveengineering:sheetmetal:10>, [<ore:slabSheetmetalGold>, <ore:slabSheetmetalGold>]);

#arc furnace electrode blueprint
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [[<ore:blockFuelCoke>, <ore:blockFuelCoke>, <ore:blockFuelCoke>],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

print("Initialized 'immersiveEngineering.zs'");