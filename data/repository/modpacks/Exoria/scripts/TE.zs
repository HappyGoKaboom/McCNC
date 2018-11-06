print("Thermal Expansion");

// Disable Opaque Ducts
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:1>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:3>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:5>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:7>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:1>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:3>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:5>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_32:7>);

// Obsidian Rod
recipes.addShaped(<redstonearsenal:material:192>, [[null, null, <thermalfoundation:material:770>], [null, <terraqueous:item_main:50>, null], [<thermalfoundation:material:770>, null, null]]);

// Cache
recipes.remove(<thermalexpansion:cache>);
recipes.addShaped(<thermalexpansion:cache>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, null, <ore:ingotTin>], [<ore:drawerBasic>, <thermalfoundation:material:512>, <ore:drawerBasic>]]);

// Frames
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:frame:64>);
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [[<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>], [<ore:plateElectrum>, <thermalexpansion:frame>, <ore:plateElectrum>], [<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>]]);
recipes.addShapeless(<thermalexpansion:frame:64> * 2, [<thermalexpansion:frame>]);

// Ducts require Hardened Glass
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0> * 6, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [<ore:ingotLead>, <ore:blockGlassHardened>, <ore:ingotLead>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);
recipes.remove(<thermaldynamics:duct_16>);
recipes.addShaped(<thermaldynamics:duct_16> * 6, [[<ore:ingotCopper>, <ore:blockGlassHardened>, <ore:ingotCopper>]]);

// Pulverizer
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:3>, <biomesoplenty:ash_block>, 3000);

// Pulverizer Loop Prevention
mods.thermalexpansion.Pulverizer.removeRecipe(<terraqueous:item_main:50>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:diamond>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:emerald>);
mods.thermalexpansion.Pulverizer.removeRecipe(<appliedenergistics2:material>);
//mods.thermalexpansion.Pulverizer.removeRecipe(<actuallyadditions:item_misc:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:quartz>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:coal>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:dye:4>);

// Treated Wood
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:0>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:1>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:2>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:3>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:4>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<primal:planks:2>, <minecraft:planks:5>, <liquid:urushi> * 125, 500);
mods.thermalexpansion.Transposer.addFillRecipe(<immersiveengineering:treated_wood>, <primal:planks:2>, <liquid:creosote> * 125, 500);

// Alloys
mods.thermalexpansion.InductionSmelter.addRecipe(<minecraft:redstone>, <skyresources:techitemcomponent:3>, <appliedenergistics2:material:3>, 1800);
mods.thermalexpansion.InductionSmelter.addRecipe(<foundry:refractoryglass>, <minecraft:sand:*>, <minecraft:clay_ball>, 1800);
mods.thermalexpansion.InductionSmelter.addRecipe(<extendedcrafting:material>, <magneticraft:ingots:5>, <immersiveengineering:metal:8>, 14400);
mods.thermalexpansion.InductionSmelter.addRecipe(<extendedcrafting:material>, <magneticraft:ingots:5>, <thermalfoundation:material:160>, 14400);

// Coils
recipes.remove(<thermalfoundation:material:513>);
recipes.addShaped(<thermalfoundation:material:513>, [[null, null, <ore:ingotGold>], [null, <forestry:chipsets:3>, null], [<ore:ingotGold>, null, null]]);
recipes.remove(<thermalfoundation:material:514>);
recipes.addShaped(<thermalfoundation:material:514>, [[null, null, <ore:ingotInvar>], [null, <forestry:chipsets:2>, null], [<ore:ingotInvar>, null, null]]);
recipes.remove(<thermalfoundation:material:515>);
recipes.addShaped(<thermalfoundation:material:515>, [[null, null, <ore:ingotElectrum>], [null, <forestry:chipsets:1>, null], [<ore:ingotElectrum>, null, null]]);

// Enstabulation Apparatus
recipes.remove(<thermalexpansion:augment:416>);
recipes.addShaped(<thermalexpansion:augment:416>, [[null, <ore:gearInvar>, null], [<actuallyadditions:item_sword_emerald>, <thermalfoundation:material:512>, <actuallyadditions:item_sword_emerald>], [null, <minecraft:piston>, null]]);

// Rock Magma Crucible
mods.thermalexpansion.Crucible.addRecipe(<liquid:iron> * 16, <survivalist:rock_ore>, 500);
mods.thermalexpansion.Crucible.addRecipe(<liquid:copper> * 16, <survivalist:rock_ore:2>, 500);
mods.thermalexpansion.Crucible.addRecipe(<liquid:tin> * 16, <survivalist:rock_ore:3>, 500);
mods.thermalexpansion.Crucible.addRecipe(<liquid:lead> * 16, <survivalist:rock_ore:4>, 500);
mods.thermalexpansion.Crucible.addRecipe(<liquid:silver> * 16, <survivalist:rock_ore:5>, 500);

// Tank
recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, <buildcraftfactory:tank>, <ore:ingotCopper>], [null, <thermalfoundation:material:512>, null]]);

// Simply Jetpacks
mods.jei.JEI.removeAndHide(<simplyjetpacks:metaitemmods:13>);
mods.jei.JEI.removeAndHide(<simplyjetpacks:metaitemmods:14>);
recipes.remove(<simplyjetpacks:itemjetpack:18>);
recipes.addShaped(<simplyjetpacks:itemjetpack:18>, [[<redstonearsenal:material:224>, <redstonearsenal:armor.plate_flux>, <redstonearsenal:material:224>], [<simplyjetpacks:metaitemmods:18>, <simplyjetpacks:itemjetpack:17>, <simplyjetpacks:metaitemmods:18>], [<simplyjetpacks:metaitemmods:27>, <simplyjetpacks:itemfluxpack:10>, <simplyjetpacks:metaitemmods:27>]]);

// Remove Bucket Exploit
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:bucket>, <minecraft:sand>);

// Sawmill
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log:1>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log:2>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log:3>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log2>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:log2:1>);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks> * 6, <minecraft:log>, 1000, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:1> * 6, <minecraft:log:1>, 1000, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:2> * 6, <minecraft:log:2>, 1000, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:3> * 6, <minecraft:log:3>, 1000, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:4> * 6, <minecraft:log2>, 1000, <thermalfoundation:material:800>, 100);
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:planks:5> * 6, <minecraft:log2:1>, 1000, <thermalfoundation:material:800>, 100);