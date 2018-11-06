#Name: industrialForegoing.zs
#Author: Feed the Beast

print("Initializing 'industrialForegoing.zs'...");

#tree fluid extractor
recipes.remove(<industrialforegoing:tree_fluid_extractor>);
recipes.addShaped(<industrialforegoing:tree_fluid_extractor>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:gearInvar>, <forestry:chipsets:3>, <ore:gearInvar>], [<actuallyadditions:item_crystal_empowered:4>, <botany:insulated_tube:384>, <actuallyadditions:item_crystal_empowered:4>]]);

#alt latex recipe for later game
mods.thermalexpansion.Crucible.addRecipe(<liquid:latex> * 250, <appliedenergistics2:material:5>, 1000);

#black hole tank/unit/controller
recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.remove(<industrialforegoing:black_hole_controller>);
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.addShaped(<industrialforegoing:black_hole_unit>, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<minecraft:ender_pearl>, <thermalexpansion:frame>, <minecraft:ender_pearl>], [null, <techreborn:quantum_chest>, null]]);
recipes.addShaped(<industrialforegoing:black_hole_controller>, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<techreborn:part:30>, <thermalexpansion:frame>, <techreborn:part:30>], [null, <techreborn:quantum_chest>, null]]);
recipes.addShaped(<industrialforegoing:black_hole_tank>, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<minecraft:bucket>, <thermalexpansion:frame>, <minecraft:bucket>], [null, <techreborn:quantum_chest>, null]]);

#tier range upgrades
//1
recipes.remove(<industrialforegoing:range_addon:1>);
recipes.addShaped(<industrialforegoing:range_addon:1>, [[<minecraft:dye:4>, <industrialforegoing:plastic>, <minecraft:dye:4>], [<minecraft:dye:4>, <industrialforegoing:range_addon>, <minecraft:dye:4>], [<minecraft:dye:4>, <industrialforegoing:plastic>, <minecraft:dye:4>]]);
//2
recipes.remove(<industrialforegoing:range_addon:2>);
recipes.addShaped(<industrialforegoing:range_addon:2>, [[<ore:ingotIron>, <industrialforegoing:plastic>, <ore:ingotIron>], [<ore:ingotIron>, <industrialforegoing:range_addon:1>, <ore:ingotIron>], [<ore:ingotIron>, <industrialforegoing:plastic>, <ore:ingotIron>]]);
//3
recipes.remove(<industrialforegoing:range_addon:3>);
recipes.addShaped(<industrialforegoing:range_addon:3>, [[<ore:ingotTin>, <industrialforegoing:plastic>, <ore:ingotTin>], [<ore:ingotTin>, <industrialforegoing:range_addon:2>, <ore:ingotTin>], [<ore:ingotTin>, <industrialforegoing:plastic>, <ore:ingotTin>]]);
//4
recipes.remove(<industrialforegoing:range_addon:4>);
recipes.addShaped(<industrialforegoing:range_addon:4>, [[<ore:ingotCopper>, <industrialforegoing:plastic>, <ore:ingotCopper>], [<ore:ingotCopper>, <industrialforegoing:range_addon:3>, <ore:ingotCopper>], [<ore:ingotCopper>, <industrialforegoing:plastic>, <ore:ingotCopper>]]);
//5
recipes.remove(<industrialforegoing:range_addon:5>);
recipes.addShaped(<industrialforegoing:range_addon:5>, [[<ore:ingotBronze>, <industrialforegoing:plastic>, <ore:ingotBronze>], [<ore:ingotBronze>, <industrialforegoing:range_addon:4>, <ore:ingotBronze>], [<ore:ingotBronze>, <industrialforegoing:plastic>, <ore:ingotBronze>]]);
//6
recipes.remove(<industrialforegoing:range_addon:6>);
recipes.addShaped(<industrialforegoing:range_addon:6>, [[<ore:ingotSilver>, <industrialforegoing:plastic>, <ore:ingotSilver>], [<ore:ingotSilver>, <industrialforegoing:range_addon:5>, <ore:ingotSilver>], [<ore:ingotSilver>, <industrialforegoing:plastic>, <ore:ingotSilver>]]);
//7
recipes.remove(<industrialforegoing:range_addon:7>);
recipes.addShaped(<industrialforegoing:range_addon:7>, [[<ore:ingotGold>, <industrialforegoing:plastic>, <ore:ingotGold>], [<ore:ingotGold>, <industrialforegoing:range_addon:6>, <ore:ingotGold>], [<ore:ingotGold>, <industrialforegoing:plastic>, <ore:ingotGold>]]);
//8
recipes.remove(<industrialforegoing:range_addon:8>);
recipes.addShaped(<industrialforegoing:range_addon:8>, [[<minecraft:quartz>, <industrialforegoing:plastic>, <minecraft:quartz>], [<minecraft:quartz>, <industrialforegoing:range_addon:7>, <minecraft:quartz>], [<minecraft:quartz>, <industrialforegoing:plastic>, <minecraft:quartz>]]);
//9
recipes.remove(<industrialforegoing:range_addon:9>);
recipes.addShaped(<industrialforegoing:range_addon:9>, [[<ore:gemDiamond>, <industrialforegoing:plastic>, <ore:gemDiamond>], [<ore:gemDiamond>, <industrialforegoing:range_addon:8>, <ore:gemDiamond>], [<ore:gemDiamond>, <industrialforegoing:plastic>, <ore:gemDiamond>]]);
//10
recipes.remove(<industrialforegoing:range_addon:10>);
recipes.addShaped(<industrialforegoing:range_addon:10>, [[<ore:ingotPlatinum>, <industrialforegoing:plastic>, <ore:ingotPlatinum>], [<ore:ingotPlatinum>, <industrialforegoing:range_addon:9>, <ore:ingotPlatinum>], [<ore:ingotPlatinum>, <industrialforegoing:plastic>, <ore:ingotPlatinum>]]);
//11
recipes.remove(<industrialforegoing:range_addon:11>);
recipes.addShaped(<industrialforegoing:range_addon:11>, [[<actuallyadditions:item_crystal_empowered:4>, <industrialforegoing:plastic>, <actuallyadditions:item_crystal_empowered:4>], [<actuallyadditions:item_crystal_empowered:4>, <industrialforegoing:range_addon:10>, <actuallyadditions:item_crystal_empowered:4>], [<actuallyadditions:item_crystal_empowered:4>, <industrialforegoing:plastic>, <actuallyadditions:item_crystal_empowered:4>]]);

#meat feeder
recipes.remove(<industrialforegoing:meat_feeder>);
recipes.addShaped(<industrialforegoing:meat_feeder>, [[<ore:itemRubber>, <techreborn:ingot:22>, <ore:itemRubber>], [<minecraft:glass_bottle>, <stevescarts:modulecomponents:49>, <minecraft:glass_bottle>], [null, <stevescarts:modulecomponents:49>, null]]);

print("Initialized 'industrialForegoing.zs'");