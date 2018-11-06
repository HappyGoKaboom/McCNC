//Ore Dict
<ore:ingotOsmium>.remove(<sgextraparts:ingot:10>);
<ore:ingotCobalt>.remove(<sgextraparts:ingot:18>);
<ore:ingotArdite>.remove(<sgextraparts:ingot:19>);
<ore:ingotManyullyn>.remove(<sgextraparts:ingot:20>);
<ore:itemSalt>.add(<immersivetech:material>);
<ore:dustSalt>.add(<immersivetech:material>);
<ore:oreDraconium>.add(<draconicevolution:draconium_ore:1>);
<ore:oreDraconium>.add(<draconicevolution:draconium_ore:2>);
<ore:dustDark>.add(<evilcraft:dark_gem_crushed>);
<ore:oreDimensionalShard>.add(<rftools:dimensional_shard_ore:1>);
<ore:oreDimensionalShard>.add(<rftools:dimensional_shard_ore:2>);
<ore:blockManasteel>.add(<botania:storage>);
<ore:blockTerrasteel>.add(<botania:storage:1>);
<ore:blockElementium>.add(<botania:storage:2>);
<ore:treeSapling>.add(<harvestcraft:spiderweb_sapling>);
<ore:treeSapling>.add(<harvestcraft:avocado_sapling>);

//Food
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:aridgarden>, <minecraft:leaves2>, 0.25);
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:frostgarden>, <minecraft:leaves:1>, 0.25);
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:shadedgarden>, <minecraft:leaves2:1>, 0.25);
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:soggygarden>, <minecraft:leaves>, 0.25);
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:tropicalgarden>, <minecraft:leaves:3>, 0.25);
mods.skyresources.rockgrinder.addRecipe(<harvestcraft:windygarden>, <minecraft:leaves:2>, 0.25);

mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:aridgarden>, <minecraft:leaves2>, 0.25);
mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:frostgarden>, <minecraft:leaves:1>, 0.25);
mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:shadedgarden>, <minecraft:leaves2:1>, 0.25);
mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:soggygarden>, <minecraft:leaves>, 0.25);
mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:tropicalgarden>, <minecraft:leaves:3>, 0.25);
mods.sc.compressedrockgrinder.addRecipe(<harvestcraft:windygarden>, <minecraft:leaves:2>, 0.25);

//Useful SR2 Stuff
mods.skyresources.combustion.addRecipe(<minecraft:coal_block>, [<mekanism:basicblock:3>], 1530);
mods.skyresources.fusion.addRecipe(<skyresources:alchemyitemcomponent:1>, [<quark:glass_shards>*2], 0.05);
mods.skyresources.fusion.addRecipe(<embers:archaic_brick>, [<minecraft:netherbrick>,<embers:brick_caminite>*2], 0.41);

//Tooltips
<mysticalagriculture:crafting:5>.addTooltip(format.yellow("Can only be obtained from the ore."));

//Making AS usuable
mods.actuallyadditions.AtomicReconstructor.addRecipe(<astralsorcery:blockmarble>, <minecraft:stone:4>, 10000);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<astralsorcery:itemcraftingcomponent>,<silentgems:gem:8>, 100);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<astralsorcery:blockcollectorcrystal>.withTag({astralsorcery:{constellationName:"astralsorcery.constellation.discidia",crystalProperties:{collectiveCapability:100,size:400,purity:100},collectorType:0}}),<astralsorcery:itemrockcrystalsimple>, 100000);

mods.actuallyadditions.Empowerer.addRecipe(<astralsorcery:blockcustomore>, <minecraft:stone>, <actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal:5>, 2500, 100);

//TR Mg Dust to Mg Ingot
furnace.addRecipe(<nuclearcraft:ingot:7>, <techreborn:dust:30>);

//Compressed Cobble compatability
recipes.remove(<extrautils2:compressedcobblestone:1>);
recipes.addShaped(<extrautils2:compressedcobblestone:1>,[
[<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>],
[<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>],
[<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>,<ore:compressed1xCobblestone>]
]);
recipes.addShapeless(<extrautils2:compressedcobblestone:1>*9,[<extrautils2:compressedcobblestone:2>]);

//For The Sake Of Progression
mods.jei.JEI.removeAndHide(<flyringbaublemod:flyingring:*>);
mods.jei.JEI.removeAndHide(<randomthings:fertilizeddirt>);
recipes.remove(<environmentalmaterials:alabaster:*>);
recipes.remove(<rftools:dimensional_shard>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:grindstone>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:crank>);

//ExU Extra Stuff
mods.jei.JEI.removeAndHide(<extrautils2:teleporter:*>);
mods.jei.JEI.removeAndHide(<extrautils2:quarryproxy>);
mods.jei.JEI.removeAndHide(<extrautils2:quarry>);

//Balancing AA Dough
recipes.remove(<actuallyadditions:item_misc:4>);
recipes.addShapeless(<actuallyadditions:item_misc:4>*2,[<ore:listAllgrain>,<ore:listAllgrain>,<ore:listAllgrain>,<harvestcraft:mortarandpestleitem>,<harvestcraft:mixingbowlitem>,<ore:listAllwater>]);

recipes.remove(<actuallyadditions:item_misc:9>);
recipes.addShapeless(<actuallyadditions:item_misc:9>*2,[<ore:cropRice>,<ore:cropRice>,<ore:cropRice>,<harvestcraft:mortarandpestleitem>,<harvestcraft:mixingbowlitem>,<ore:listAllwater>]);

//SonarCore
recipes.remove(<sonarcore:reinforcedstoneblock>);
recipes.remove(<sonarcore:reinforceddirtblock>);
recipes.remove(<sonarcore:reinforcedstonebrick>);
recipes.remove(<sonarcore:reinforceddirtbrick>);
recipes.remove(<sonarcore:stablestone_normal>*2);
recipes.remove(<sonarcore:stableglass>*2);

//Disable GoG Stuff
recipes.remove(<minecraft:end_portal_frame>);
mods.botania.Apothecary.removeRecipe("orechid");
mods.botania.Apothecary.removeRecipe("orechidIgnem");

//Fix Conflicts
mods.jei.JEI.removeAndHide(<techreborn:cable>);
recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped(<advgenerators:iron_frame>,[
[null, <ore:stickIron>],
[<ore:stickIron>, null, <ore:stickIron>],
[null, <ore:stickIron>]
]);

//Prevent Exploits
recipes.removeByRecipeName("minecraft:coarse_dirt");
mods.jei.JEI.removeAndHide(<xreliquary:altar>);
recipes.remove(<harvestcraft:spiderweb_sapling>);
recipes.addShapeless(<harvestcraft:spiderweb_sapling>,[<ore:treeSapling>,<minecraft:web>,<minecraft:web>,<minecraft:web>]);

//GC OreDicr Fix
<ore:oreTungsten>.remove(<extraplanets:pluto:6>);
<ore:oreMagnesium>.remove(<extraplanets:saturn:6>);
<ore:oreZinc>.remove(<extraplanets:neptune:6>);

//GC Fix Rad Layer Fix
recipes.remove(<extraplanets:tier1_radiation_layer>);
recipes.addShaped(<extraplanets:tier1_radiation_layer>,[
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>]
]);
recipes.remove(<extraplanets:tier2_radiation_layer>);
recipes.addShaped(<extraplanets:tier2_radiation_layer>,[
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:tier1_radiation_layer>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>]
]);
recipes.remove(<extraplanets:tier3_radiation_layer>);
recipes.addShaped(<extraplanets:tier3_radiation_layer>,[
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:tier2_radiation_layer>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>]
]);
recipes.remove(<extraplanets:tier4_radiation_layer>);
recipes.addShaped(<extraplanets:tier4_radiation_layer>,[
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:tier3_radiation_layer>,<ore:ingotLead>],
[<ore:ingotLead>,<extraplanets:cloth>,<ore:ingotLead>]
]);

//Fix Tiny Coal/Charcoal
recipes.removeByRecipeName("galacticraftplanets:carbon_fragments_alt_alt");
recipes.removeByRecipeName("galacticraftplanets:carbon_fragments");

//Chemical Reactor Chicken Recipes
mods.techreborn.chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Chicken: "chickens:quartzchicken"}), <roost:chicken>.withTag({Chicken: "minecraft:chicken"}), <minecraft:quartz>*64, 60, 500);
mods.techreborn.chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Chicken: "chickens:sandchicken"}), <roost:chicken>.withTag({Chicken: "minecraft:chicken"}), <minecraft:sand>*64, 60, 500);
mods.techreborn.chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Chicken: "chickens:flintchicken"}), <roost:chicken>.withTag({Chicken: "minecraft:chicken"}), <minecraft:flint>*64, 60, 500);
mods.techreborn.chemicalReactorRecipe.addRecipe(<roost:chicken>.withTag({Chicken: "chickens:logchicken"}), <roost:chicken>.withTag({Chicken: "minecraft:chicken"}), <minecraft:log>*64, 60, 500);

//Wooden Gear
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);

//Save Servers
mods.jei.JEI.removeAndHide(<projecte:item.pe_time_watch>);
recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.addShapeless(<projecte:item.pe_gem_armor_1>,[<projecte:item.pe_rm_armor_1>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_black_hole>,<projecte:item.pe_mind_stone>]);

//Seeds
vanilla.seeds.addSeed(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "potato_plant", agri_growth: 1 as byte}) % 1000);

recipes.addShapeless(<minecraft:wheat_seeds>,[<minecraft:wheat>]);
recipes.addShapeless(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "potato_plant", agri_growth: 1 as byte}),[<minecraft:potato>]);
recipes.addShapeless(<agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "carrot_plant", agri_growth: 1 as byte}),[<minecraft:carrot>]);

//Remove disabled items
mods.jei.JEI.removeAndHide(<twilightforest:uncrafting_table>);

//Chance Pendants
recipes.remove(<chancecubes:chance_pendant_tier1>);
recipes.remove(<chancecubes:chance_pendant_tier2>);
recipes.remove(<chancecubes:chance_pendant_tier3>);
recipes.remove(<chancecubes:silk_touch_pendant>);

//No melting
mods.tconstruct.Melting.removeRecipe(<liquid:ender>);
mods.tconstruct.Melting.removeRecipe(<liquid:redstone>);
mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>);

//Make TC Playable
mods.skyresources.infusion.addRecipe(<thaumcraft:sapling_greatwood>, <embers:aspectus_iron>, <minecraft:sapling:5>, 20);
mods.skyresources.infusion.addRecipe(<thaumcraft:sapling_silverwood>, <embers:aspectus_silver>, <minecraft:sapling:2>, 20);
mods.skyresources.infusion.addRecipe(<thaumcraft:shimmerleaf>, <minecraft:red_flower:6>, <minecraft:sapling:2>, 16);

mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_aer>, <botania:rune:3>, <astralsorcery:blockcelestialcrystals:*>, 18);
mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_ignis>, <botania:rune:1>, <astralsorcery:blockcelestialcrystals:*>, 18);
mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_aqua>, <botania:rune>, <astralsorcery:blockcelestialcrystals:*>, 18);
mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_terra>, <botania:rune:2>, <astralsorcery:blockcelestialcrystals:*>, 18);
mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_ordo>, <astralsorcery:itemusabledust>, <astralsorcery:blockcelestialcrystals:*>, 18);
mods.skyresources.infusion.addRecipe(<thaumcraft:crystal_perditio>, <astralsorcery:itemusabledust:1>, <astralsorcery:blockcelestialcrystals:*>, 18);

//TC, why must you have crafting recipes for plates!?
recipes.remove(<thaumcraft:plate:*>);

//Fix Charcoal
furnace.remove(<minecraft:coal:1>);
furnace.addRecipe(<minecraft:coal:1>,<ore:logWood>);
furnace.addRecipe(<minecraft:coal:1>,<thermalfoundation:material:801>);
furnace.addRecipe(<minecraft:coal:1>,<skyresources:baseitemcomponent>);