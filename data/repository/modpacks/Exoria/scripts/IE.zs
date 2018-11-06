print("Immersive Engineering");

// Disable Gunpowder as it conflicts with TE's recipe
recipes.remove(<minecraft:gunpowder>);
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSulfur>, <ore:dustCoal>]);

// Remove Cloche
recipes.remove(<immersiveengineering:metal_device1:13>);

// Remove Hammer Plate recipes
recipes.removeShapeless(<immersiveengineering:metal:30>, [<ore:ingotCopper>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:31>, [<ore:ingotAluminum>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:32>, [<ore:ingotLead>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:33>, [<ore:ingotSilver>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:34>, [<ore:ingotNickel>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:35>, [<ore:ingotUranium>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:36>, [<ore:ingotConstantan>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:37>, [<ore:ingotElectrum>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:38>, [<ore:ingotSteel>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:39>, [<ore:ingotIron>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:40>, [<ore:ingotGold>, <immersiveengineering:tool>]);

// Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<tconstruct:materials>, <primal:ciniscotta_brick>, <tconstruct:materials>], [<primal:ciniscotta_brick>, <embers:brick_caminite>, <primal:ciniscotta_brick>], [<tconstruct:materials>, <primal:ciniscotta_brick>, <tconstruct:materials>]]);

// Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:netherbrick>, <embers:archaic_brick>, <minecraft:netherbrick>], [<embers:archaic_brick>, <advancedrocketry:misc:1>, <embers:archaic_brick>], [<minecraft:netherbrick>, <embers:archaic_brick>, <minecraft:netherbrick>]]);

// Treated Wood
recipes.removeShaped(<immersiveengineering:treated_wood>);
recipes.addShaped(<immersiveengineering:treated_wood> * 8, [[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>], [<primal:planks:2>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), <primal:planks:2>], [<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]]);
recipes.addShaped(<immersiveengineering:treated_wood>, [[<immersiveengineering:treated_wood_slab>], [<immersiveengineering:treated_wood_slab>]]);

// Thermoelectric Remove
recipes.remove(<immersiveengineering:metal_device1:3>);

// Conveyor
recipes.removeShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [[<ore:itemRubber>], [<magneticraft:conveyor_belt>]]);

// Kinetic Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<immersiveengineering:metal_decoration0>, <magneticraft:multiblock_parts>, <immersiveengineering:metal_decoration0>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);

// Capacitor
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<ore:plankTreatedWood>, <ore:plateLead>, <ore:plankTreatedWood>], [<ore:plateLead>, <magneticraft:battery_item_low>, <ore:plateLead>], [<ore:plankTreatedWood>, <ore:plateLead>, <ore:plankTreatedWood>]]); 
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[<ore:plankTreatedWood>, <ore:plateElectrum>, <ore:plankTreatedWood>], [<ore:plateElectrum>, <magneticraft:battery_item_low>, <ore:plateElectrum>], [<immersiveengineering:metal_device0>, <ore:plateElectrum>, <immersiveengineering:metal_device0>]]); 
recipes.remove(<immersiveengineering:metal_device0:2>);
recipes.addShaped(<immersiveengineering:metal_device0:2>, [[<ore:plankTreatedWood>, <ore:plateSteel>, <ore:plankTreatedWood>], [<ore:plateSteel>, <magneticraft:battery_item_low>, <ore:plateSteel>], [<immersiveengineering:metal_device0:1>, <ore:plateSteel>, <immersiveengineering:metal_device0:1>]]); 

// Vacuum Tube
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.addRecipe( "components", <immersiveengineering:material:26> * 3, [<ore:blockGlass>, <immersiveengineering:material:20>, <immersiveengineering:material:20>, <minecraft:redstone>]);

// Circuit Board
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
mods.immersiveengineering.Blueprint.addRecipe( "components", <immersiveengineering:material:27>, [<ore:plateCopper>, <immersiveengineering:material:26>, <immersiveengineering:material:26>, <buildcraftsilicon:redstone_chipset>, <buildcraftsilicon:redstone_chipset>]);

// Kiln
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10> * 2, [[<primal:desiccated_stone>, <primal:ortho_stone>, <primal:desiccated_stone>], [<primal:ortho_stone>, <minecraft:magma>, <primal:ortho_stone>], [<primal:desiccated_stone>, <primal:ortho_stone>, <primal:desiccated_stone>]]);

// Disable Water Wheel, muahahaha
mods.jei.JEI.removeAndHide(<immersiveengineering:material:10>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device1>);

// Alloys
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<thermalfoundation:material:162>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<forestry:ingot_bronze>);
mods.immersiveengineering.AlloySmelter.removeRecipe(<primal:brass_ingot>);

mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:dustGold>, <ore:dustSilver>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:162> * 3, <ore:dustIron> * 2, <ore:dustNickel>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:163> * 4, <ore:dustCopper> * 3, <ore:dustTin>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:dustCopper>, <ore:dustNickel>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<primal:brass_ingot> * 4, <ore:dustCopper> * 3, <ore:dustZinc>, 200);
mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:redstone>, <skyresources:techitemcomponent:3>, <appliedenergistics2:material:3>, 100);
mods.immersiveengineering.AlloySmelter.addRecipe(<foundry:refractoryglass>, <ore:sand>, <ore:clayball>, 100);

// Connector / Relay
recipes.remove(<immersiveengineering:connector>);
recipes.addShapeless(<immersiveengineering:connector>, [<magneticraft:connector>]);
recipes.addShapeless(<magneticraft:connector>, [<immersiveengineering:connector>]);
recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped(<immersiveengineering:connector:1> * 4, [[<immersiveengineering:connector>, <immersiveengineering:connector>]]);
recipes.remove(<immersiveengineering:connector:2>);
recipes.addShaped(<immersiveengineering:connector:2>, [[<immersiveengineering:connector>, <ore:ingotElectrum>, <immersiveengineering:connector>]]);
recipes.remove(<immersiveengineering:connector:3>);
recipes.addShaped(<immersiveengineering:connector:3> * 4, [[<immersiveengineering:connector:2>, <immersiveengineering:connector:2>]]);
recipes.remove(<immersiveengineering:connector:4>);
recipes.addShaped(<immersiveengineering:connector:4>, [[<immersiveengineering:connector:2>, <ore:ingotAluminum>, <immersiveengineering:connector:2>]]);
recipes.remove(<immersiveengineering:connector:5>);
recipes.addShaped(<immersiveengineering:connector:5> * 4, [[<immersiveengineering:connector:4>, <immersiveengineering:connector:4>]]);

// Redstone Engineering
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3>, [[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>], [<minecraft:redstone>, <buildcraftsilicon:redstone_chipset>, <minecraft:redstone>], [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]]);

// Crusher Loop Prevention
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_dust:2>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_dust:3>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_dust:4>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_dust:5>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_dust:7>);
mods.immersiveengineering.Crusher.removeRecipe(<thermalfoundation:material:768>);

// Radiator Block
recipes.remove(<immersiveengineering:metal_decoration0:7>);
recipes.addShaped(<immersiveengineering:metal_decoration0:7>, [[<ore:plateConstantan>, <terraqueous:item_main:50>, <ore:plateConstantan>], [<terraqueous:item_main:50>, <immersiveengineering:metal_device1:1>, <terraqueous:item_main:50>], [<ore:plateConstantan>, <terraqueous:item_main:50>, <ore:plateConstantan>]]);

mods.recipestages.Recipes.setRecipeStage("engineering_knowledge", <immersiveengineering:material:8>);
mods.recipestages.Recipes.setRecipeStage("engineering_knowledge", <immersiveengineering:material:9>);

// MultiBlockStages
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IP:Pumpjack");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IP:DistillationTower");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:DieselGenerator");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:Squeezer");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:Fermenter");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:Refinery");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:Excavator");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:ArcFurnace");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IE:Lightningrod");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:Distiller");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:SolarTower");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:SolarReflector");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:SteamTurbine");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:Boiler");
mods.multiblockstages.IEMultiBlockStages.addStage("multiblock_knowledge", "IT:Alternator");

// Excavator
mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreIron");
mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreTin");
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("dustIron", 0.55);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("dustNickel", 0.25);
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("dustTin", 0.2);
mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreIron");
mods.immersiveengineering.Excavator.getMineral("Magnetite").removeOre("oreGold");
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("dustIron", 0.85);
mods.immersiveengineering.Excavator.getMineral("Magnetite").addOre("dustGold", 0.15);
mods.immersiveengineering.Excavator.getMineral("Pyrite").removeOre("oreIron");
mods.immersiveengineering.Excavator.getMineral("Pyrite").addOre("dustIron", 0.5);
mods.immersiveengineering.Excavator.getMineral("Bauxite").removeOre("oreAluminum");
mods.immersiveengineering.Excavator.getMineral("Bauxite").removeOre("oreTitanium");
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("dustAluminum", 0.9);
mods.immersiveengineering.Excavator.getMineral("Bauxite").addOre("dustTitanium", 0.1);
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreCopper");
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreGold");
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("dustCopper", 0.7);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("dustGold", 0.25);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("dustNickel", 0.05);
mods.immersiveengineering.Excavator.getMineral("Cassiterite").removeOre("oreTin");
mods.immersiveengineering.Excavator.getMineral("Cassiterite").addOre("dustTin", 1.0);
mods.immersiveengineering.Excavator.getMineral("Gold").removeOre("oreGold");
mods.immersiveengineering.Excavator.getMineral("Gold").removeOre("oreCopper");
mods.immersiveengineering.Excavator.getMineral("Gold").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("dustGold", 0.7);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("dustCopper", 0.25);
mods.immersiveengineering.Excavator.getMineral("Gold").addOre("dustNickel", 0.05);
mods.immersiveengineering.Excavator.getMineral("Nickel").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Nickel").removeOre("orePlatinum");
mods.immersiveengineering.Excavator.getMineral("Nickel").removeOre("oreIron");
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("dustNickel", 0.9);
mods.immersiveengineering.Excavator.getMineral("Nickel").addOre("dustPlatinum", 0.1);
mods.immersiveengineering.Excavator.getMineral("Platinum").removeOre("orePlatinum");
mods.immersiveengineering.Excavator.getMineral("Platinum").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Platinum").removeOre("oreIridium");
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("dustPlatinum", 0.5);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("dustNickel", 0.4);
mods.immersiveengineering.Excavator.getMineral("Platinum").addOre("dustIridium", 0.1);
mods.immersiveengineering.Excavator.removeMineral("Uranium");
mods.immersiveengineering.Excavator.getMineral("Quartzite").removeOre("oreQuartz");
mods.immersiveengineering.Excavator.getMineral("Quartzite").removeOre("oreCertusQuartz");
mods.immersiveengineering.Excavator.getMineral("Quartzite").addOre("dustQuartz", 0.4);
mods.immersiveengineering.Excavator.getMineral("Quartzite").addOre("dustQuartzBlack", 0.3);
mods.immersiveengineering.Excavator.getMineral("Quartzite").addOre("dustCertusQuartz", 0.3);
mods.immersiveengineering.Excavator.getMineral("Galena").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Galena").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Galena").removeOre("oreSulfur");
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("dustLead", 0.45);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("dustSilver", 0.45);
mods.immersiveengineering.Excavator.getMineral("Galena").addOre("dustSulfur", 0.1);
mods.immersiveengineering.Excavator.getMineral("Lead").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Lead").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("dustLead", 0.6);
mods.immersiveengineering.Excavator.getMineral("Lead").addOre("dustSilver", 0.4);
mods.immersiveengineering.Excavator.getMineral("Silver").removeOre("oreSilver");
mods.immersiveengineering.Excavator.getMineral("Silver").removeOre("oreLead");
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("dustSilver", 0.6);
mods.immersiveengineering.Excavator.getMineral("Silver").addOre("dustLead", 0.4);
mods.immersiveengineering.Excavator.getMineral("Lapis").removeOre("oreLapis");
mods.immersiveengineering.Excavator.getMineral("Lapis").removeOre("oreIron");
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("dustLapis", 0.7);
mods.immersiveengineering.Excavator.getMineral("Lapis").addOre("dustIron", 0.275);
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreCoal");
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreDiamond");
mods.immersiveengineering.Excavator.getMineral("Coal").removeOre("oreEmerald");
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("dustCoal", 0.9);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("dustDiamond", 0.05);
mods.immersiveengineering.Excavator.getMineral("Coal").addOre("dustEmerald", 0.05);