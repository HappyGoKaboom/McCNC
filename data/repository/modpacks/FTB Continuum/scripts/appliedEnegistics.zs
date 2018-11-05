#Name: appliedEnegistics.zs
#Author: Feed the Beast

print("Initializing 'appliedEnegistics.zs'...");


#grindstone
recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped(<appliedenergistics2:grindstone>, [[<ore:materialStoneTool>, <ore:gearAluminum>, <ore:materialStoneTool>], [<actuallyadditions:item_crystal_empowered:2>, <ore:materialStoneTool>, <actuallyadditions:item_crystal_empowered:2>], [<ore:materialStoneTool>, <actuallyadditions:item_crystal_empowered:2>, <ore:materialStoneTool>]]);

#controller (moved to efab)
recipes.remove(<appliedenergistics2:controller>);

#energy acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);

#switch between controller/acceptor for different power solutions
recipes.addShapeless(<appliedenergistics2:controller>, [<appliedenergistics2:energy_acceptor>]);
recipes.addShapeless(<appliedenergistics2:energy_acceptor>, [<appliedenergistics2:controller>]);

#presses
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:19>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:14>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:15>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:13>);

#printed circuits (moved to efab)
recipes.remove(<appliedenergistics2:material:16>);
recipes.remove(<appliedenergistics2:material:17>);
recipes.remove(<appliedenergistics2:material:18>);
recipes.remove(<appliedenergistics2:material:20>);

#optional crafting of cells to recycle old refined storage cells
//1k
recipes.addShaped(<appliedenergistics2:material:35>, [[<ore:crystalCertusQuartz>, <ore:dustRedstone>, <ore:crystalCertusQuartz>], [<ore:dustRedstone>, <refinedstorage:storage_part>, <ore:dustRedstone>], [<ore:crystalCertusQuartz>, <ore:dustRedstone>, <ore:crystalCertusQuartz>]]);
//4k
recipes.addShaped(<appliedenergistics2:material:36>, [[<ore:dustRedstone>, <refinedstorage:storage_part:1>, <ore:dustRedstone>], [<appliedenergistics2:material:35>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:35>], [<ore:dustRedstone>, <appliedenergistics2:material:35>, <ore:dustRedstone>]]);
//16k
recipes.addShaped(<appliedenergistics2:material:37>, [[<ore:dustGlowstone>, <refinedstorage:storage_part:2>, <ore:dustGlowstone>], [<appliedenergistics2:material:36>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:36>], [<ore:dustGlowstone>, <appliedenergistics2:material:36>, <ore:dustGlowstone>]]);
//64k
recipes.addShaped(<appliedenergistics2:material:38>, [[<ore:dustGlowstone>, <refinedstorage:storage_part:3>, <ore:dustGlowstone>], [<appliedenergistics2:material:37>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:37>], [<ore:dustGlowstone>, <appliedenergistics2:material:37>, <ore:dustGlowstone>]]);

#wireless term
recipes.remove(<extracells:terminal.fluid.wireless>);
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<extracells:terminal.fluid.wireless>, [[<techreborn:uumatter>, <extracells:part.base:3>, <techreborn:uumatter>], [<techreborn:uumatter>, <appliedenergistics2:material:41>, <techreborn:uumatter>], [<advancedrocketry:productingot:1>, <advancedrocketry:productingot:1>, <advancedrocketry:productingot:1>]]);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [[<techreborn:uumatter>, <appliedenergistics2:part:380>, <techreborn:uumatter>], [<techreborn:uumatter>, <appliedenergistics2:material:41>, <techreborn:uumatter>], [<ore:ingotTitaniumIridium>, <ore:ingotTitaniumIridium>, <ore:ingotTitaniumIridium>]]);

#quantum link
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<advancedrocketry:productingot:1>, <appliedenergistics2:material:9>, <advancedrocketry:productingot:1>], [<techreborn:uumatter>, <minecraft:nether_star>, <techreborn:uumatter>], [<advancedrocketry:productingot:1>, <appliedenergistics2:material:9>, <advancedrocketry:productingot:1>]]);

#infinity booster card
recipes.remove(<wct:infinity_booster_card>);
recipes.addShaped(<wct:infinity_booster_card>, [[<appliedenergistics2:material:47>, <ore:netherStar>, <appliedenergistics2:material:47>], [<appliedenergistics2:material:47>, <appliedenergistics2:material:41>, <appliedenergistics2:material:47>], [<appliedenergistics2:material:47>, <ore:netherStar>, <appliedenergistics2:material:47>]]);

print("Initialized 'appliedEnegistics.zs'");