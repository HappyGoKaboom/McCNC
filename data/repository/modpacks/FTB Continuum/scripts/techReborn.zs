#Name: techReborn.zs
#Author: Feed the Beast

print("Initializing 'techReborn.zs'...");

#cables
recipes.remove(<techreborn:cable:3>);
recipes.remove(<techreborn:cable:2>);
recipes.remove(<techreborn:cable:1>);
mods.jei.JEI.removeAndHide(<techreborn:cable>);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:1>, <ore:ingotTin>, <immersiveengineering:mold:4>, 4000);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:2>, <ore:ingotGold>, <immersiveengineering:mold:4>, 4000);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:cable:3>, <ore:ingotRefinedIron>, <immersiveengineering:mold:4>, 4000);

#insulated cables moved into eFab
recipes.remove(<techreborn:cable:5>);
recipes.remove(<techreborn:cable:6>);
recipes.remove(<techreborn:cable:7>);

#circuits
recipes.remove(<techreborn:part:29>);
mods.actuallyadditions.Empowerer.addRecipe(<techreborn:part:29>, <techreborn:plates:34>, <refinedstorage:silicon>, <minecraft:redstone>, <thermalfoundation:material:128>, <minecraft:gold_ingot>, 5000, 100);
recipes.remove(<techreborn:part:30>);
mods.actuallyadditions.Empowerer.addRecipe(<techreborn:part:30>, <stevescarts:modulecomponents:22>, <techreborn:part:29>, <minecraft:redstone>, <minecraft:glowstone_dust>, <minecraft:dye:4>, 10000, 200);

#iron furnance
recipes.remove(<techreborn:iron_furnace>);
recipes.addShaped(<techreborn:iron_furnace>, [[<techreborn:ingot:19>, <techreborn:ingot:19>, <techreborn:ingot:19>], [<techreborn:ingot:19>, null, <techreborn:ingot:19>], [<techreborn:ingot:19>, <minecraft:furnace>, <techreborn:ingot:19>]]);

#basic machine frame
recipes.remove(<techreborn:machine_frame>);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:machine_frame>, <techreborn:storage2:10>, <immersiveengineering:mold>, 4000);

#remove bucket from rolling machine
mods.techreborn.rollingMachine.removeRecipe(<minecraft:bucket>);

#energy crystal
recipes.remove(<techreborn:energycrystal>);
recipes.addShaped(<techreborn:energycrystal>, [[<ore:dustRedstone>, <ore:dustSmallDiamond>, <ore:dustRedstone>], [<ore:dustSmallDiamond>, <actuallyadditions:item_battery_triple>, <ore:dustSmallDiamond>], [<ore:dustRedstone>, <ore:dustSmallDiamond>, <ore:dustRedstone>]]);

#dragon egg energy siphon
recipes.remove(<techreborn:dragon_egg_syphon>);
recipes.addShaped(<techreborn:dragon_egg_syphon>, [[<ore:circuitMaster>, <techreborn:lapotronicorb>, <techreborn:part>], [<techreborn:plates:37>, <ore:craftingSuperconductor>, <techreborn:plates:37>], [<techreborn:part>, <techreborn:lapotronicorb>, <ore:circuitMaster>]]);

#solar panels
#basic
recipes.remove(<techreborn:solar_panel>);
recipes.addShaped(<techreborn:solar_panel>, [[<ore:blockGlass>, <ore:blockFuelCoke>, <ore:blockGlass>], [<ore:blockFuelCoke>, <ore:machineBlockBasic>, <ore:blockFuelCoke>], [<ore:circuitBasic>, <ore:ic2Generator>, <ore:circuitBasic>]]);
#hybrid
recipes.remove(<techreborn:solar_panel:1>);
recipes.addShaped(<techreborn:solar_panel:1>, [[<ore:glassReinforced>, <ore:glassReinforced>, <ore:glassReinforced>], [<rftoolspower:cell1>, <techreborn:machine_casing:1>, <rftoolspower:cell1>], [<ore:ic2SolarPanel>, <techreborn:solar_panel>, <ore:ic2SolarPanel>]]);
#advanced
recipes.remove(<techreborn:solar_panel:2>);
recipes.addShaped(<techreborn:solar_panel:2>, [[<ore:glassReinforced>, <ore:glassReinforced>, <ore:glassReinforced>], [<rftoolspower:cell2>, <techreborn:machine_casing:2>, <rftoolspower:cell2>], [<techreborn:solar_panel:1>, <techreborn:solar_panel:1>, <techreborn:solar_panel:1>]]);
#ultimate
recipes.remove(<techreborn:solar_panel:3>);
recipes.addShaped(<techreborn:solar_panel:3>, [[<bigreactors:reactorglass>, <bigreactors:reactorglass>, <bigreactors:reactorglass>], [<rftoolspower:cell3>, <techreborn:machine_casing:2>, <rftoolspower:cell3>], [<techreborn:solar_panel:2>, <techreborn:solar_panel:2>, <techreborn:solar_panel:2>]]);
#quantum
recipes.remove(<techreborn:solar_panel:4>);
recipes.addShaped(<techreborn:solar_panel:4>, [[<extrautils2:ineffableglass>, <extrautils2:ineffableglass>, <extrautils2:ineffableglass>], [<rftoolspower:cell3>, <appliedenergistics2:controller>, <rftoolspower:cell3>], [<techreborn:solar_panel:3>, <techreborn:solar_panel:3>, <techreborn:solar_panel:3>]]);

#small iron dust
recipes.addShapeless(<thermalfoundation:material>, [<ore:dustSmallIron>, <ore:dustSmallIron>, <ore:dustSmallIron>, <ore:dustSmallIron>]);

#small copper dust
recipes.addShapeless(<thermalfoundation:material:64>, [<ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallCopper>]);

#refined iron plate
mods.techreborn.compressor.addRecipe(<techreborn:plates:34>, <techreborn:ingot:19>, 300, 20);
mods.techreborn.compressor.addRecipe(<techreborn:plates:34> * 9, <techreborn:storage2:10>, 300, 20);

#constantan in alloy smelter
mods.techreborn.alloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:ingotNickel>, <ore:ingotCopper>, 300, 20);

#force tungsten only in TR upgraded Blast Furnance
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:15>);
recipes.remove(<techreborn:ingot:15>);
recipes.addShaped(<techreborn:ingot:15>, [[<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>], [<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>], [<ore:nuggetTungsten>, <ore:nuggetTungsten>, <ore:nuggetTungsten>]]);

#machine casings
recipes.remove(<techreborn:machine_casing>);
recipes.addShaped(<techreborn:machine_casing> * 2, [[<ore:platerefinedIron>, <ore:platerefinedIron>, <ore:platerefinedIron>], [<ore:circuitBasic>, <ore:machineBlockBasic>, <ore:circuitBasic>], [<ore:platerefinedIron>, <ore:platerefinedIron>, <ore:platerefinedIron>]]);
recipes.remove(<techreborn:machine_casing:1>);
recipes.addShaped(<techreborn:machine_casing:1> * 2, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:circuitAdvanced>, <techreborn:machine_casing>, <ore:circuitAdvanced>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.remove(<techreborn:machine_casing:2>);
recipes.addShaped(<techreborn:machine_casing:2> * 2, [[<ore:platechrome>, <ore:platechrome>, <ore:platechrome>], [<ore:circuitElite>, <techreborn:machine_casing:1>, <ore:circuitElite>], [<ore:platechrome>, <ore:platechrome>, <ore:platechrome>]]);

#rolling machine dupe bugs
mods.techreborn.rollingMachine.removeRecipe(<minecraft:light_weighted_pressure_plate>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:minecart>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:iron_bars>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:heavy_weighted_pressure_plate>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:iron_door>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:tripwire_hook>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:activator_rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:detector_rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:rail>);
mods.techreborn.rollingMachine.removeRecipe(<minecraft:golden_rail>);

#remove chrome from arc furnance
mods.immersiveengineering.ArcFurnace.removeRecipe(<techreborn:ingot:3>);

#phosphorous dust uses
recipes.addShapeless(<minecraft:gunpowder>, [<ore:dustPhosphorous>, <ore:dustPhosphorous>, <ore:dustPhosphorous>, <ore:dustPhosphorous>]);

#manganese dust uses
recipes.addShapeless(<thermalfoundation:material:98>, [<ore:dustManganese>, <ore:dustManganese>, <ore:dustManganese>, <ore:dustManganese>]);

#wind mill
recipes.remove(<techreborn:wind_mill>);
recipes.addShaped(<techreborn:wind_mill>, [[<immersiveengineering:material:12>, <ore:platemagnalium>, <immersiveengineering:material:12>], [<ore:plateadvancedAlloy>, <ore:ic2Generator>, <ore:plateadvancedAlloy>], [<immersiveengineering:material:12>, <ore:platemagnalium>, <immersiveengineering:material:12>]]);

#remove titanium pyrotheum recipe
recipes.remove(<techreborn:ingot:14>);
recipes.addShaped(<techreborn:ingot:14>, [[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>], [<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>], [<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>]]);
recipes.addShaped(<techreborn:storage:2>, [[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]]);

#add alum brass to alloy smelter
mods.techreborn.alloySmelter.addRecipe(<tconstruct:ingots:5>, <ore:ingotAluminum>, <ore:ingotCopper>, 300, 20);

#remove rubber from extractor
#mods.techreborn.extractor.removeRecipe(<techreborn:part:32>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:rubber_sapling>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:rubber_log>);
mods.techreborn.extractor.removeInputRecipe(<techreborn:part:31>);
#mods.techreborn.extractor.removeInputRecipe(<ore:slimeball>);

#add uu-matter recipe for iridium ore
recipes.addShaped(<thermalfoundation:ore:7>, [[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>], [null, <techreborn:uumatter>, null], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);

#alarm
recipes.remove(<techreborn:alarm>);
recipes.addShaped(<techreborn:alarm>, [[<ore:ingotIron>, <techreborn:cable:5>, <ore:ingotIron>],[<techreborn:cable:5>, <ore:blockRedstone>, <techreborn:cable:5>], [<ore:ingotIron>, <techreborn:cable:5>, <ore:ingotIron>]]);

#incandescent lamp
recipes.remove(<techreborn:lamp_incandescent>);
recipes.addShaped(<techreborn:lamp_incandescent>, [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],[<techreborn:cable:5>, <techreborn:part:35>, <techreborn:cable:5>], [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>]]);

#UU-matter platium
recipes.addShaped(<thermalfoundation:material:70>, [[null, <techreborn:uumatter>, <techreborn:uumatter>],[<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>], [<techreborn:uumatter>, <techreborn:uumatter>, <techreborn:uumatter>]]);

print("Initialized 'techReborn.zs'");