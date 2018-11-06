#Name: actuallyAdditions.zs
#Author: Feed the Beast

print("Initializing 'actuallyAdditions.zs'...");

#***blackquartz moved into efab***

#remove nether quartz to prismarine shard recipe
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<minecraft:prismarine_shard>);

#remove leather from reconstructor
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<minecraft:leather>);

#iron casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:stickWood>, <ore:gearIron>, <ore:stickWood>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);

#basic coil
recipes.remove(<actuallyadditions:item_misc:7>);
recipes.addShaped(<actuallyadditions:item_misc:7>, [[null, <actuallyadditions:item_crystal>, null], [<actuallyadditions:item_crystal>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_crystal>], [null, <actuallyadditions:item_crystal>, null]]);

#advanced coil
recipes.remove(<actuallyadditions:item_misc:8>);
recipes.addShaped(<actuallyadditions:item_misc:8>, [[<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>], [<ore:nuggetNickel>, <actuallyadditions:item_misc:7>, <ore:nuggetNickel>], [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>]]);

#display stand
recipes.remove(<actuallyadditions:block_display_stand>);
recipes.addShaped(<actuallyadditions:block_display_stand>, [[null, <actuallyadditions:item_misc:8>, null], [<actuallyadditions:block_testifi_bucks_white_wall>, <forestry:thermionic_tubes>, <actuallyadditions:block_testifi_bucks_white_wall>], [<actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_green_wall>, <actuallyadditions:block_testifi_bucks_green_wall>]]);

#drill
recipes.remove(<actuallyadditions:item_drill:3>);
recipes.addShaped(<actuallyadditions:item_drill:3>, [[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>], [<actuallyadditions:item_misc:8>, <actuallyadditions:item_misc:16>, <actuallyadditions:item_misc:8>], [null, <immersiveengineering:metal_decoration0:2>, null]]);

#energizer
recipes.remove(<actuallyadditions:block_energizer>);
recipes.addShaped(<actuallyadditions:block_energizer>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:metal_device1:2>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

#drill augments
recipes.remove(<actuallyadditions:item_drill_upgrade_three_by_three>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_three_by_three>, [[<actuallyadditions:item_crystal_empowered:4>, <ore:plateAluminum>, <actuallyadditions:item_crystal_empowered:4>], [<ore:plateAluminum>, <actuallyadditions:item_misc:8>, <ore:plateAluminum>], [<actuallyadditions:item_crystal_empowered:4>, <ore:plateAluminum>, <actuallyadditions:item_crystal_empowered:4>]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_speed>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed>, [[<actuallyadditions:item_crystal_empowered:2>, <ore:plateAluminum>, <actuallyadditions:item_crystal_empowered:2>], [<ore:plateAluminum>, <actuallyadditions:item_misc:8>, <ore:plateAluminum>], [<actuallyadditions:item_crystal_empowered:2>, <ore:plateAluminum>, <actuallyadditions:item_crystal_empowered:2>]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_speed_ii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed_ii>, [[<actuallyadditions:item_crystal_empowered:4>, <ore:plateTitanium>, <actuallyadditions:item_crystal_empowered:4>], [<ore:plateTitanium>, <actuallyadditions:item_drill_upgrade_speed>, <ore:plateTitanium>], [<actuallyadditions:item_crystal_empowered:4>, <ore:plateTitanium>, <actuallyadditions:item_crystal_empowered:4>]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_speed_iii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_speed_iii>, [[<actuallyadditions:item_crystal_empowered:4>, <ore:plateEnderium>, <actuallyadditions:item_crystal_empowered:4>], [<ore:plateEnderium>, <actuallyadditions:item_drill_upgrade_speed_ii>, <ore:plateEnderium>], [<actuallyadditions:item_crystal_empowered:4>, <ore:plateEnderium>, <actuallyadditions:item_crystal_empowered:4>]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_silk_touch>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_silk_touch>, [[null, <tconstruct:materials:16>, null], [<tconstruct:materials:16>, <actuallyadditions:block_misc:8>, <tconstruct:materials:16>], [null, <tconstruct:materials:16>, null]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_fortune>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_fortune>, [[<actuallyadditions:block_crystal_empowered:1>, <ore:ingotSignalum>, <actuallyadditions:block_crystal_empowered:1>], [<ore:ingotSignalum>, <actuallyadditions:block_misc:8>, <ore:ingotSignalum>], [<actuallyadditions:block_crystal_empowered:1>, <ore:ingotSignalum>, <actuallyadditions:block_crystal_empowered:1>]]);
recipes.remove(<actuallyadditions:item_drill_upgrade_fortune_ii>);
recipes.addShaped(<actuallyadditions:item_drill_upgrade_fortune_ii>, [[<actuallyadditions:block_crystal_empowered:2>, <ore:ingotEnderium>, <actuallyadditions:block_crystal_empowered:2>], [<ore:ingotEnderium>, <actuallyadditions:item_drill_upgrade_fortune>, <ore:ingotEnderium>], [<actuallyadditions:block_crystal_empowered:2>, <ore:ingotEnderium>, <actuallyadditions:block_crystal_empowered:2>]]);

#block placer
recipes.remove(<actuallyadditions:block_placer>);
recipes.addShaped(<actuallyadditions:block_placer>, [[<ore:plateruby>, <minecraft:diamond_pickaxe>, <ore:plateruby>], [<ore:plateruby>, <ore:machineBlockHighlyAdvanced>, <ore:plateruby>], [<ore:plateruby>, <ore:plateruby>, <ore:plateruby>]]);

#block breaker
recipes.remove(<actuallyadditions:block_breaker>);
recipes.addShaped(<actuallyadditions:block_breaker>, [[<ore:plateSapphire>, <minecraft:diamond_pickaxe>, <ore:plateSapphire>], [<ore:plateSapphire>, <ore:machineBlockHighlyAdvanced>, <ore:plateSapphire>], [<ore:plateSapphire>, <ore:plateSapphire>, <ore:plateSapphire>]]);

#phantom face
recipes.remove(<actuallyadditions:block_phantomface>);
recipes.addShaped(<actuallyadditions:block_phantomface>, [[<wrcbe:material:2>, <actuallyadditions:item_crystal_empowered:2>, <wrcbe:material:2>], [<actuallyadditions:block_breaker>, <ore:machineBlockHighlyAdvanced>, <actuallyadditions:block_placer>], [<wrcbe:material:2>, <actuallyadditions:item_crystal_empowered:2>, <wrcbe:material:2>]]);

#farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer>, [[<ore:plateGold>, <minecraft:diamond_hoe>, <ore:plateGold>], [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal_empowered:4>], [<ore:plateGold>, <minecraft:diamond_hoe>, <ore:plateGold>]]);

#auto feeder
recipes.remove(<actuallyadditions:block_feeder>);
recipes.addShaped(<actuallyadditions:block_feeder>, [[<ore:plateGold>, <minecraft:golden_apple>, <ore:plateGold>], [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal_empowered:4>], [<ore:plateGold>, <minecraft:golden_apple>, <ore:plateGold>]]);

#storage crate
recipes.remove(<actuallyadditions:block_giant_chest>);
recipes.addShaped(<actuallyadditions:block_giant_chest>, [[<ore:plateIron>, <ironchest:iron_chest:6>, <ore:plateIron>], [<actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>, <actuallyadditions:block_misc:4>], [<ore:plateIron>, <ironchest:iron_chest:6>, <ore:plateIron>]]);

#esd
recipes.remove(<actuallyadditions:block_inputter>);
recipes.addShaped(<actuallyadditions:block_inputter>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<translocators:translocator_part>, <actuallyadditions:block_misc:4>, <translocators:translocator_part>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

#lens of miner
mods.jei.JEI.removeAndHide(<actuallyadditions:item_mining_lens>);

#spawner changer (moved into efab)
recipes.remove(<actuallyadditions:item_spawner_changer>);

#Empty generator
recipes.addShapeless(<actuallyadditions:block_oil_generator>, [<actuallyadditions:block_oil_generator>]);

print("Initialized 'actuallyAdditions.zs'");