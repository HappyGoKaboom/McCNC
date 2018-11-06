#Name: openBlocks.zs
#Author: Feed the Beast

print("Initializing 'openBlocks.zs'...");

#hangglider
recipes.remove(<openblocks:generic>);
recipes.addShaped(<openblocks:generic>, [[null, <ore:stickWood>, <harvestcraft:hardenedleatheritem>], [<ore:stickWood>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]]);
recipes.addShaped(<openblocks:generic>, [[<harvestcraft:hardenedleatheritem>, <ore:stickWood>, null], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:stickWood>], [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]]);

recipes.remove(<openblocks:hang_glider>);
recipes.addShaped(<openblocks:hang_glider>, [[<openblocks:generic>, <ore:string>, <openblocks:generic>], [<ore:stickIron>, null, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

#sprinkler
recipes.remove(<openblocks:sprinkler>);
recipes.addShaped(<openblocks:sprinkler>, [[<minecraft:iron_bars>, <actuallyadditions:item_crystal:5>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <minecraft:redstone_torch>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <actuallyadditions:item_crystal:5>, <minecraft:iron_bars>]]);

#vacuum hopper
recipes.remove(<openblocks:vacuum_hopper>);
recipes.addShaped(<openblocks:vacuum_hopper>, [[<ore:obsidian>, <ore:electronTube>, <ore:obsidian>], [<minecraft:ender_eye>, <ore:hopper>, <minecraft:ender_eye>], [<ore:obsidian>, <ore:enderpearl>, <ore:obsidian>]]);

#auto enchantment table
recipes.remove(<openblocks:auto_enchantment_table>);
recipes.addShaped(<openblocks:auto_enchantment_table>, [[<ore:craftingIndustrialDiamond>, <ore:craftingIndustrialDiamond>, <ore:craftingIndustrialDiamond>], [<ore:ingotIron>, <minecraft:enchanting_table>, <ore:ingotIron>], [<ore:blockMagicalWood>, <ore:circuitBasic>, <ore:blockMagicalWood>]]);

#auto anvil
recipes.remove(<openblocks:auto_anvil>);
recipes.addShaped(<openblocks:auto_anvil>, [[<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>], [<ore:ingotIron>, <minecraft:anvil>, <ore:ingotIron>], [<ore:blockMagicalWood>, <ore:circuitBasic>, <ore:blockMagicalWood>]]);

#xp drain
recipes.remove(<openblocks:xp_drain>);
recipes.addShaped(<openblocks:xp_drain>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

#fan
recipes.remove(<openblocks:fan>);
recipes.addShaped(<openblocks:fan>, [[<minecraft:iron_bars>], [<forestry:thermionic_tubes:4>], [<ore:plateIron>]]);

#xp bottler
recipes.remove(<openblocks:xp_bottler>);
recipes.addShaped(<openblocks:xp_bottler>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

#luggage
recipes.remove(<openblocks:luggage>);
recipes.addShaped(<openblocks:luggage>, [[<ore:stickWood>, <magicbees:mysteriousmagnet:2>, <ore:stickWood>], [<ore:stickWood>, <ironchest:iron_chest:3>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

print("Initialized 'openBlocks.zs'");