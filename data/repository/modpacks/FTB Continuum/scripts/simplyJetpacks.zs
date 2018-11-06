#Name: simplyJetpacks.zs
#Author: Feed the Beast

print("Initializing 'simplyJetpacks.zs'...");

#leadstone thruster
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.addShaped(<simplyjetpacks:metaitemmods:23>, [[<ore:plateTitanium>, <ore:blockGlass>, <ore:plateTitanium>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<minecraft:blaze_powder>, null, <minecraft:blaze_powder>]]);

#hardened thruster
recipes.remove(<simplyjetpacks:metaitemmods:24>);
recipes.addShaped(<simplyjetpacks:metaitemmods:24>, [[<ore:plateChrome>, <ore:blockGlass>, <ore:plateChrome>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<minecraft:blaze_powder>, <simplyjetpacks:metaitemmods:23>, <minecraft:blaze_powder>]]);

#reinforced thruster
recipes.remove(<simplyjetpacks:metaitemmods:25>);
recipes.addShaped(<simplyjetpacks:metaitemmods:25>, [[<ore:plateSignalum>, <ore:blockGlass>, <ore:plateSignalum>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<minecraft:blaze_powder>, <simplyjetpacks:metaitemmods:24>, <minecraft:blaze_powder>]]);

#resonant thruster
recipes.remove(<simplyjetpacks:metaitemmods:26>);
recipes.addShaped(<simplyjetpacks:metaitemmods:26>, [[<ore:plateiridiumAlloy>, <ore:blockGlass>, <ore:plateiridiumAlloy>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<minecraft:blaze_powder>, <simplyjetpacks:metaitemmods:25>, <minecraft:blaze_powder>]]);

#fluxed thruster
recipes.remove(<simplyjetpacks:metaitemmods:27>);
recipes.addShaped(<simplyjetpacks:metaitemmods:27>, [[<bigreactors:reactorglass>, <bigreactors:reactorglass>, <bigreactors:reactorglass>], [<ore:ingotCyanite>, <redstonearsenal:material:224>, <ore:ingotCyanite>], [<simplyjetpacks:metaitemmods:16>, <simplyjetpacks:metaitemmods:26>, <simplyjetpacks:metaitemmods:16>]]);

#remove flux chest plate (moved into efab)
recipes.remove(<simplyjetpacks:metaitemmods:14>);

#glowstone elevation unit
recipes.remove(<simplyjetpacks:metaitemmods:15>);
recipes.addShaped(<simplyjetpacks:metaitemmods:15>, [[<ore:ingotElectrumFlux>, <ore:ingotLumium>, <ore:ingotElectrumFlux>], [<ore:ingotLumium>, <ore:blockGlassHardened>, <ore:ingotLumium>], [<ore:ingotElectrumFlux>, <ore:ingotLumium>, <ore:ingotElectrumFlux>]]);

#flux packs
//tier 1
recipes.remove(<simplyjetpacks:itemfluxpack:6>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:6>, [[<ore:ingotLead>, <rftoolspower:cell1>, <ore:ingotLead>], [<ore:ingotLead>, <simplyjetpacks:metaitem:4>, <ore:ingotLead>]]);
//tier 2
recipes.remove(<simplyjetpacks:itemfluxpack:7>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:7>, [[null, <rftoolspower:cell2>, null], [<ore:ingotElectrum>, <simplyjetpacks:itemfluxpack:6>, <ore:ingotElectrum>], [<ore:ingotLead>, <thermalfoundation:material:515>, <ore:ingotLead>]]);
//tier 3
recipes.remove(<simplyjetpacks:itemfluxpack:8>);
recipes.addShaped(<simplyjetpacks:itemfluxpack:8>, [[null, <rftoolspower:cell3>, null], [<ore:ingotEnderium>, <simplyjetpacks:itemfluxpack:7>, <ore:ingotEnderium>], [<ore:ingotLead>, <thermalfoundation:material:515>, <ore:ingotLead>]]);

#armor
//tier 1
recipes.remove(<simplyjetpacks:metaitemmods:19>);
mods.techreborn.rollingMachine.addShaped(<simplyjetpacks:metaitemmods:19>, [[<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>]]);
//tier 2
#mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:163> * 10, <simplyjetpacks:metaitemmods:19>);
mods.techreborn.blastFurnace.addRecipe(<simplyjetpacks:metaitemmods:20>, <simplyjetpacks:metaitem:2>,<thermalfoundation:material:163> * 10, <simplyjetpacks:metaitemmods:19>,200,512,1500);
//tier 3
#mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:162> * 10, <simplyjetpacks:metaitemmods:20>);
mods.techreborn.blastFurnace.addRecipe(<simplyjetpacks:metaitemmods:21>, <simplyjetpacks:metaitem:1>,<thermalfoundation:material:162> * 10, <simplyjetpacks:metaitemmods:20>,400,512,2500);
//tier 4
#mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:167> * 10, <simplyjetpacks:metaitemmods:21>);
mods.techreborn.blastFurnace.addRecipe(<simplyjetpacks:metaitemmods:22>, <simplyjetpacks:metaitem:3>, <thermalfoundation:material:167> * 10, <simplyjetpacks:metaitemmods:21>,800,512,3500);

print("Initialized 'simplyJetpacks.zs'");