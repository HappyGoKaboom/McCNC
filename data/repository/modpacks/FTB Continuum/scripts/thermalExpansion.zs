#Name: thermalExpansion.zs
#Author: Feed the Beast

print("Initializing 'thermalExpansion.zs'...");

#move sawmill to early game
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [[<minecraft:golden_axe>, <ore:gearIron>, <minecraft:golden_axe>], [<ore:ingotLead>, <actuallyadditions:block_misc:9>, <ore:ingotLead>], [<ore:ingotLead>, <forestry:chipsets>, <ore:ingotLead>]]);

#move coils into efab
recipes.remove(<thermalfoundation:material:515>);
recipes.remove(<thermalfoundation:material:513>);
recipes.remove(<thermalfoundation:material:514>);
recipes.remove(<thermalfoundation:material:512>);

#upgrade kits
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped(<thermalfoundation:upgrade:3>, [[<ore:ingotEnderium>, <ore:gemEmerald>, <ore:ingotEnderium>], [<ore:circuitAdvanced>, <thermalfoundation:material:512>, <ore:circuitAdvanced>], [<ore:ingotEnderium>, <forestry:thermionic_tubes:12>, <ore:ingotEnderium>]]);
recipes.addShaped(<thermalfoundation:upgrade:2>, [[<ore:ingotSignalum>, <ore:gemEmerald>, <ore:ingotSignalum>], [<ore:circuitAdvanced>, <thermalfoundation:material:512>, <ore:circuitAdvanced>], [<ore:ingotSignalum>, <forestry:thermionic_tubes:12>, <ore:ingotSignalum>]]);
recipes.addShaped(<thermalfoundation:upgrade:1>, [[<ore:ingotElectrum>, <ore:gemEmerald>, <ore:ingotElectrum>], [<ore:circuitAdvanced>, <thermalfoundation:material:512>, <ore:circuitAdvanced>], [<ore:ingotElectrum>, <forestry:thermionic_tubes:12>, <ore:ingotElectrum>]]);
recipes.addShaped(<thermalfoundation:upgrade>, [[<ore:ingotInvar>, <ore:gemEmerald>, <ore:ingotInvar>], [<ore:circuitAdvanced>, <thermalfoundation:material:512>, <ore:circuitAdvanced>], [<ore:ingotInvar>, <forestry:thermionic_tubes:12>, <ore:ingotInvar>]]);

#remove satchels
mods.jei.JEI.removeAndHide(<thermalexpansion:satchel:*>);

#remove iridium from compactor
#mods.thermalexpansion.Compactor.removePressRecipe(<techreborn:ingot:22>);

#add refined iron plates to compacactor
#mods.thermalexpansion.Compactor.addPressRecipe(<techreborn:plates:34>, <techreborn:ingot:19>, 1500);

#remove tungstensteel from fluid transposer to force into TR vaccum freezer
mods.thermalexpansion.Transposer.removeFillRecipe(<techreborn:ingot:16>, <liquid:cryotheum>);

#capacitor recipes
recipes.remove(<thermalexpansion:capacitor>);
recipes.addShaped(<thermalexpansion:capacitor>, [[null, <ore:dustRedstone>, null], [<ore:ingotLead>, <actuallyadditions:item_battery_quadruple>, <ore:ingotLead>], [<ore:dustRedstone>, <ore:dustSulfur>, <ore:dustRedstone>]]);

#remove dupicate machines
mods.jei.JEI.removeAndHide(<thermalexpansion:machine>);
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:1>);
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:3>);
mods.jei.JEI.removeAndHide(<thermalexpansion:machine:5>);

#hardened glass
recipes.remove(<thermalfoundation:glass:3>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:770> * 4, <thermalfoundation:material:67>);
#mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:770> * 4, <thermalfoundation:material:131>);
mods.techreborn.blastFurnace.addRecipe(<thermalfoundation:glass:3>, null, <thermalfoundation:material:770> * 4, <thermalfoundation:material:165>,200,512,2800);

#sawdust
recipes.addShapeless(<minecraft:stick>, [<thermalfoundation:material:800>, <thermalfoundation:material:800>]);

#add steel ingot to magma crucible
#mods.thermalexpansion.Crucible.addRecipe(<liquid:steel> * 144, <thermalfoundation:material:160>, 8000);

#rich slag
recipes.addShaped(<thermalfoundation:material:865>, [[<ore:dustWood>, <ore:crystalCinnabar>, <ore:dustWood>], [<ore:crystalCinnabar>, null, <ore:crystalCinnabar>], [<ore:dustWood>, <ore:crystalCinnabar>, <ore:dustWood>]]);

#magma crucible
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}), [[null, <ore:blockGlass>, null], [<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>], [<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]]);

#add steel ingot to magma crucible
mods.thermalexpansion.Crucible.addRecipe(<liquid:steel> * 144, <thermalfoundation:material:160>, 8000);

print("Initialized 'thermalExpansion.zs'");