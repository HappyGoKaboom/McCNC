print("Botania");

// Disable Apothecary
recipes.remove(<botania:altar:*>);

// Remove Stuff
mods.jei.JEI.removeAndHide(<botania:conjurationcatalyst>);
mods.jei.JEI.removeAndHide(<botania:terrapick>);
mods.jei.JEI.removeAndHide(<botania:rfgenerator>);

// Hourglass
recipes.remove(<botania:hourglass>);
mods.recipestages.Recipes.addShaped("magical_knowledge", <botania:hourglass>, [[<minecraft:light_weighted_pressure_plate>], [<ore:blockGlass>], [<minecraft:light_weighted_pressure_plate>]]);

// Ender Air Bottle
recipes.addShapeless(<botania:manaresource:15>, [<botania:manabottle>, <biomesoplenty:crystal_shard>]);

// Magnet Lens
recipes.remove(<botania:lens:10>);
recipes.addShapeless(<botania:lens:10>, [<botania:lens>, <magneticraft:crafting:4>]);

// Disable Fel Pumpkin
recipes.remove(<botania:felpumpkin>);

recipes.remove(<botania:craftpattern:*>);
recipes.addShaped(<botania:craftpattern>, [[null, <botania:manaresource:11>, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:1>, [[null, null, <botania:manaresource:11>], [null, null, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:2>, [[null, <botania:manaresource:11>, <botania:manaresource:11>], [null, <botania:manaresource:11>, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:3>, [[null, null, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:4>, [[null, <botania:manaresource:11>, <botania:manaresource:11>], [null, <botania:manaresource:11>, <botania:manaresource:11>], [null, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:5>, [[null, null, null], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:6>, [[null, null, <botania:manaresource:11>], [null, null, <botania:manaresource:11>], [null, null, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:7>, [[null, null, null], [null, null, null], [<botania:manaresource:11>, <botania:manaresource:11>, <botania:manaresource:11>]]);
recipes.addShaped(<botania:craftpattern:8>, [[null, null, null], [null, <botania:manaresource:11>, null], [null, null, null]]);

// Elven Trade
mods.botania.ElvenTrade.addRecipe([<biomesoplenty:dirt:8>], [<chisel:basalt2:7>, <chisel:basalt2:7>]);
mods.botania.ElvenTrade.addRecipe([<biomesoplenty:sapling_0:5>], [<biomesoplenty:ash_block>, <biomesoplenty:ash_block>, <biomesoplenty:ash_block>, <biomesoplenty:ash_block>]);
mods.botania.ElvenTrade.addRecipe([<botania:grassseeds:3>], [<biomesoplenty:coral:4>, <forestry:apatite>]);
mods.botania.ElvenTrade.addRecipe([<botania:grassseeds:1>], [<minecraft:coal:1>, <biomesoplenty:bamboo>]);

// Elven Trade Oreberry
mods.botania.ElvenTrade.addRecipe([<oreberries:iron_oreberry_bush>], [<terraqueous:multifood:7>, <ore:ingotIron>, <ore:ingotIron>]);
mods.botania.ElvenTrade.addRecipe([<oreberries:gold_oreberry_bush>], [<terraqueous:multifood:5>, <ore:ingotGold>, <ore:ingotGold>]);
mods.botania.ElvenTrade.addRecipe([<oreberries:copper_oreberry_bush>], [<terraqueous:multifood:1>, <ore:ingotCopper>, <ore:ingotCopper>]);
mods.botania.ElvenTrade.addRecipe([<oreberries:tin_oreberry_bush>], [<terraqueous:multifood>, <ore:ingotTin>, <ore:ingotTin>]);
mods.botania.ElvenTrade.addRecipe([<oreberries:lead_oreberry_bush>], [<terraqueous:multifood:6>, <ore:ingotLead>, <ore:ingotLead>]);
mods.botania.ElvenTrade.addRecipe([<oreberries:silver_oreberry_bush>], [<terraqueous:multifood:3>, <ore:ingotSilver>, <ore:ingotSilver>]);

// Elven Trade Removal
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:7>);
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:8>);
mods.botania.ElvenTrade.removeRecipe(<botania:manaresource:9>);
mods.botania.ElvenTrade.removeRecipe(<botania:storage:2>);
mods.botania.ElvenTrade.removeRecipe(<botania:storage:4>);
mods.botania.ElvenTrade.removeRecipe(<botania:quartz:5>);
mods.botania.ElvenTrade.removeRecipe(<botania:elfglass>);
mods.botania.ElvenTrade.removeRecipe(<botania:dreamwood>);
mods.botania.ElvenTrade.removeRecipe(<minecraft:iron_ingot>);

// Disable Redstone Glowstone conversion
mods.botania.ManaInfusion.removeRecipe(<minecraft:glowstone_dust>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:redstone>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:gunpowder>);

// Alternative recipes
recipes.addShapeless(<botania:manaresource:7>, [<botania:manaresource>, <botania:manaresource>, <botania:manaresource:18>]);
recipes.addShapeless(<botania:quartz:5>, [<botania:quartz:1>, <botania:quartz:1>, <botania:manaresource:18>]);
recipes.addShapeless(<botania:elfglass>, [<ore:blockGlass>, <botania:quartz:1>, <botania:manaresource:23>]);
recipes.addShapeless(<botania:manaresource:9>, [<botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:2>]);

// ManaSTEEL
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 3000);
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 27000);

// Manaweave Stuff
recipes.remove(<botania:manaresource:22>);
recipes.addShaped(<botania:manaresource:22> * 2, [[<botania:manaresource:16>, <botania:manaresource:16>, <botania:manaresource:16>], [<botania:manaresource:16>, <botania:manaresource:17>, <botania:manaresource:16>], [<botania:manaresource:16>, <botania:manaresource:16>, <botania:manaresource:16>]]);
recipes.remove(<botania:teruterubozu>);
recipes.addShaped(<botania:teruterubozu>, [[<botania:manaresource:22>], [<botania:manaresource:22>], [<botania:spark>]]);

// Alchemy Catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>, [[<botania:livingrock>, <ore:ingotGold>, <botania:livingrock>], [<botania:livingrock>, <botania:manaresource:2>, <botania:livingrock>], [<botania:livingrock>, <ore:ingotGold>, <botania:livingrock>]]);

// Pure Daisy
mods.botania.PureDaisy.addRecipe(<primal:blue_stone>,<roots:runestone>);
mods.botania.PureDaisy.addRecipe(<botania:livingwood>,<botania:dreamwood>);	

// Enchanting Stuff
recipes.remove(<minecraft:enchanting_table>);
mods.botania.RuneAltar.addRecipe(<minecraft:enchanting_table>, [<botania:pylon>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:book>], 10000);
recipes.remove(<terraqueous:ender_table>);
mods.botania.RuneAltar.addRecipe(<terraqueous:ender_table>, [<minecraft:enchanting_table>, <terraqueous:item_main:109>], 10000);
recipes.remove(<va:xphopper>);
mods.botania.RuneAltar.addRecipe(<va:xphopper>, [<botania:pylon>, <minecraft:hopper>], 10000);
recipes.remove(<openblocks:vacuum_hopper>);
mods.botania.RuneAltar.addRecipe(<openblocks:vacuum_hopper>, [<va:xphopper>, <embers:vacuum>], 10000);
recipes.remove(<openblocks:auto_enchantment_table>);
mods.botania.RuneAltar.addRecipe(<openblocks:auto_enchantment_table>, [<minecraft:enchanting_table>, <minecraft:piston>], 10000);
recipes.remove(<persistentbits:chunk_loader>);
mods.botania.RuneAltar.addRecipe(<persistentbits:chunk_loader>, [<botania:pylon>, <minecraft:enchanting_table>], 10000);
recipes.remove(<openblocks:xp_drain>);
mods.botania.RuneAltar.addRecipe(<openblocks:xp_drain>, [<botania:pylon>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], 10000);
recipes.remove(<flexibletools:tool_upgrade_support:5>);
mods.botania.RuneAltar.addRecipe(<flexibletools:tool_upgrade_support:5>, [<minecraft:brick>, <minecraft:enchanting_table>, <minecraft:writable_book>, <ore:bookshelf>], 10000);
recipes.remove(<flexibletools:tool_upgrade_support:4>);
mods.botania.RuneAltar.addRecipe(<flexibletools:tool_upgrade_support:4>, [<minecraft:brick>, <minecraft:enchanting_table>, <minecraft:writable_book>, <minecraft:flint>], 10000);
recipes.remove(<actuallyadditions:block_xp_solidifier>);
mods.botania.RuneAltar.addRecipe(<actuallyadditions:block_xp_solidifier>, [<minecraft:enchanting_table>, <actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_misc:8>], 10000);
recipes.remove(<everlastingabilities:ability_bottle>);
mods.botania.RuneAltar.addRecipe(<everlastingabilities:ability_bottle>, [<botania:pylon>, <botania:vial:1>, <minecraft:gold_ingot>], 10000);

// Seeds
mods.botania.ManaInfusion.removeRecipe(<botania:grassseeds:1>);
recipes.remove(<botania:grassseeds:3>);

// Autumn Rune
mods.botania.RuneAltar.removeRecipe(<botania:rune:6>);
mods.botania.RuneAltar.addRecipe(<botania:rune:6>, [<botania:rune:1>, <botania:rune:3>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:rotten_flesh>], 8000);

// Disable Functional Flora
mods.botania.Apothecary.removeRecipe("agricarnation");
mods.botania.Apothecary.removeRecipe("bellethorn");
mods.botania.Apothecary.removeRecipe("daffomill");
mods.botania.Apothecary.removeRecipe("dreadthorn");
mods.botania.Apothecary.removeRecipe("exoflame");
mods.botania.Apothecary.removeRecipe("fallenKanade");
mods.botania.Apothecary.removeRecipe("heiseiDream");
mods.botania.Apothecary.removeRecipe("hibeescus");
mods.botania.Apothecary.removeRecipe("hyacidus");
mods.botania.Apothecary.removeRecipe("jiyuulia");
mods.botania.Apothecary.removeRecipe("loonium");
mods.botania.Apothecary.removeRecipe("medumone");
mods.botania.Apothecary.removeRecipe("orechid");
mods.botania.Apothecary.removeRecipe("orechidIgnem");
mods.botania.Apothecary.removeRecipe("pollidisiac");
mods.botania.Apothecary.removeRecipe("tangleberrie");
mods.botania.Apothecary.removeRecipe("tigerseye");
mods.botania.Apothecary.removeRecipe("vinculotus");