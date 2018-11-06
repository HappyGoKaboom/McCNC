// File generated by MineTweakerRecipeMaker
//                     READ THIS HEADER BEFORE EDITING ANYTHING
// ================================================================================
//     This file is read and changed by the mod.
//     If you remove/edit any of the markers, IT WILL STOP WORKING!
//     If you want to make manual edits, make a backup of this file!
//     Markers look like this: "//#MARKER something"
//     They indicate where calls should be placed, so that MineTweaker does them in the correct order.
//     Removes come first, then stuff is added.
// ================================================================================
//

// ================================================================================
//#MARKER REMOVE
recipes.remove(<landlust:chain> * 16);
recipes.remove(<chinjufumod:block_steel_block> * 2);
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.remove(<techguns:nightvisiongoggles>);
recipes.remove(<dooglamoocitiesmod:farmlotblock>);
recipes.remove(<dooglamoocitiesmod:lumbermilllotblock>);
recipes.remove(<dooglamoocitiesmod:mineshaftlotblock>);
recipes.remove(<dooglamoocitiesmod:quarrylotblock>);
recipes.remove(<dooglamoocitiesmod:fisherylotblock>);
recipes.remove(<dooglamoocitiesmod:gardenlotblock>);
recipes.remove(<dooglamoocitiesmod:ranchlotblock>);
recipes.remove(<techreborn:water_mill>);
recipes.remove(<techreborn:wind_mill>);
recipes.remove(<techreborn:solar_panel:4>);
recipes.remove(<techreborn:solar_panel:3>);
recipes.remove(<techreborn:solar_panel:1>);
recipes.remove(<techreborn:solar_panel:2>);
recipes.remove(<techreborn:solar_panel>);
recipes.remove(<techreborn:gas_turbine>);


// ================================================================================
//#MARKER REMOVE SHAPELESS

// ================================================================================
//#MARKER REMOVE SHAPED
recipes.removeShaped(<fp:spaceship:12> * 8, [[<minecraft:iron_ingot>], [<ore:ingotIron>]]);

// ================================================================================
//#MARKER ADD

// ================================================================================
//#MARKER ADD SHAPELESS
recipes.addShapeless(<thermalfoundation:material:225> * 9, [<ore:ingotElectrum>]);
recipes.addShapeless(<thermalfoundation:material:225>, [<ore:ingotElectrum>]);
recipes.addShapeless(<fp:spaceship:12> * 8, [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]);

// ================================================================================
//#MARKER ADD SHAPED
recipes.addShaped(<opencomputers:material:12>, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [null, <ore:nuggetIron>, null]]);
recipes.addShaped(<landlust:chain> * 16, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, null, <ore:nuggetIron>], [null, <minecraft:iron_nugget>, null]]);
recipes.addShaped(<car:iron_stick>, [[<minecraft:iron_nugget>], [<minecraft:iron_ingot>]]);
recipes.addShaped(<car:iron_stick>, [[null, <ore:ingotIron>], [<ore:ingotIron>, null]]);
recipes.addShaped(<techguns:scatterbeamrifle>, [[null, <ore:plateTitanium>, null], [<techguns:itemshared:41>, <techguns:itemshared:130>, <techguns:itemshared:44>], [null, <techguns:itemshared:29>, <techguns:itemshared:59>]]);
recipes.addShaped(<techguns:alienblaster>, [[<techguns:itemshared:129>, <techguns:itemshared:131>, <techguns:itemshared:130>], [<techguns:itemshared:54>, <techguns:itemshared:29>, null]]);
recipes.addShaped(<techguns:alienblaster>, [[<techguns:itemshared:129>, <techguns:itemshared:131>, <techguns:itemshared:130>], [<techguns:itemshared:54>, <techguns:itemshared:29>, null]]);
recipes.addShaped(<fp:spaceship:12> * 8, [[<ore:ingotIron>], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<chinjufumod:block_steel_block>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, null, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);
recipes.addShaped(<rcroads:line11> * 16, [[<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]]);
recipes.addShaped(<rcroads:line11a> * 16, [[<ore:dyeYellow>, <ore:dyeYellow>, <ore:dyeYellow>]]);
recipes.addShaped(<rcroads:road> * 16, [[<ore:stone>, <ore:stone>, <ore:stone>], [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>], [<ore:stoneGranite>, <ore:stoneGranite>, <ore:stoneGranite>]]);
recipes.addShaped(<mts:wrench>, [[<ore:nuggetIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:ingotIron>, null], [null, <ore:ingotIron>, null]]);
recipes.addShaped(<techreborn:gas_turbine>, [[<ore:plateAluminum>, <ore:circuitAd
vanced>, <ore:plateAluminum>], [<ore:ic2Generator>, <ore:glassReinforced>, <ore:ic2Generator>], [<ore:plateAluminum>, <ore:circuitAdvanced>, <ore:plateAluminum>]]);
recipes.addShaped(<techreborn:gas_turbine>, [[<ore:plateInvar>, <ore:circuitAdvanced>, <ore:plateInvar>], [<ore:ic2Generator>, <ore:glassReinforced>, <ore:ic2Generator>], [<ore:plateInvar>, <ore:circuitAdvanced>, <ore:plateInvar>]]);