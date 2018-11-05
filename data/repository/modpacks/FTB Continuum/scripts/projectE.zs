#Name: projectE.zs
#Author: Feed the Beast

print("Initializing 'projectE.zs'...");

#alchemical bags
mods.jei.JEI.removeAndHide(<projecte:item.pe_alchemical_bag:*>);
#recipes.addShaped(<projecte:item.pe_alchemical_bag>, [[<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>], [<ore:enderpearl>, <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}), <ore:enderpearl>], [<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>]]);
#recipes.addShaped(<projecte:item.pe_alchemical_bag>, [[<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>], [<ore:enderpearl>, <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), <ore:enderpearl>], [<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>]]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:1>, [<projecte:item.pe_alchemical_bag>, <ore:dyeOrange>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:2>, [<projecte:item.pe_alchemical_bag>, <ore:dyeMagenta>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:3>, [<projecte:item.pe_alchemical_bag>, <ore:dyeLightBlue>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:4>, [<projecte:item.pe_alchemical_bag>, <ore:dyeYellow>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:5>, [<projecte:item.pe_alchemical_bag>, <ore:dyeLime>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:6>, [<projecte:item.pe_alchemical_bag>, <ore:dyePink>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:7>, [<projecte:item.pe_alchemical_bag>, <ore:dyeGray>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:8>, [<projecte:item.pe_alchemical_bag>, <ore:dyeLightGray>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:9>, [<projecte:item.pe_alchemical_bag>, <ore:dyeCyan>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:10>, [<projecte:item.pe_alchemical_bag>, <ore:dyePurple>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:11>, [<projecte:item.pe_alchemical_bag>, <ore:dyeBlue>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:12>, [<projecte:item.pe_alchemical_bag>, <ore:dyeBrown>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:13>, [<projecte:item.pe_alchemical_bag>, <ore:dyeGreen>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:14>, [<projecte:item.pe_alchemical_bag>, <ore:dyeRed>]);
#recipes.addShapeless(<projecte:item.pe_alchemical_bag:15>, [<projecte:item.pe_alchemical_bag>, <ore:dyeBlack>]);

#remove unused items
mods.jei.JEI.removeAndHide(<projecte:item.pe_catalitic_lens>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_tome>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_transmutation_tablet>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_manual>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_water_orb>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_lava_orb>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_randomizer>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_lens_explosive>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_fire_projectile>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_wind_projectile>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_fuel>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_philosophers_stone>);
mods.jei.JEI.removeAndHide(<projecte:transmutation_table>);
mods.jei.JEI.removeAndHide(<projecte:nova_cataclysm>);
mods.jei.JEI.removeAndHide(<projecte:nova_catalyst>);
mods.jei.JEI.removeAndHide(<projecte:fuel_block:2>);
mods.jei.JEI.removeAndHide(<projecte:fuel_block:1>);
mods.jei.JEI.removeAndHide(<projecte:fuel_block>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_hyperkinetic_lens>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_life_stone>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_mind_stone>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_soul_stone>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_body_stone>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_arcana_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_arcana_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_arcana_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_arcana_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_void_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_gem_density>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_time_watch>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_swrg>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_zero_ring>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_ignition>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_harvest_god>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_covalence_dust:2>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_covalence_dust:1>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_covalence_dust>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_fuel:2>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_fuel:1>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_destruction_catalyst>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_1>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_2>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_divining_rod_3>);


#alchemical chest
recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [[<ore:plateEnderium>, <ore:plateIridium>, <ore:plateEnderium>], [<ore:plateSteel>, <ironchest:iron_chest:2>, <ore:plateSteel>], [<ore:plateEnderium>, <ore:plateIridium>, <ore:plateEnderium>]]);

#talisman of repair
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShaped(<projecte:item.pe_repair_talisman>, [[<actuallyadditions:block_item_repairer>, <ore:dustAlmandine>, <actuallyadditions:block_item_repairer>], [<ore:dustAlmandine>, <ore:gearSignalum>, <ore:dustAlmandine>], [<actuallyadditions:block_item_repairer>, <ore:dustAlmandine>, <actuallyadditions:block_item_repairer>]]);

#condensor (force through efab)
recipes.remove(<projecte:condenser_mk1>);

#energy collector
recipes.remove(<projecte:collector_mk1>);
recipes.addShaped(<projecte:collector_mk1>, [[<ore:blockIonite>, <ore:glowstone>, <ore:blockIonite>], [<stevescarts:blockmetalstorage:2>, <actuallyadditions:item_misc:19>, <stevescarts:blockmetalstorage:2>], [<ore:blockIonite>, <ore:blockDiamond>, <ore:blockIonite>]]);

#anti-matter relay
recipes.remove(<projecte:relay_mk1>);
recipes.addShaped(<projecte:relay_mk1>, [[<ore:blockLonsdaleite>, <ore:obsidian>, <ore:blockLonsdaleite>], [<stevescarts:blockmetalstorage:2>, <actuallyadditions:item_misc:19>, <stevescarts:blockmetalstorage:2>], [<ore:blockLonsdaleite>, <ore:blockDiamond>, <ore:blockLonsdaleite>]]);

#klein star
//tier 1
recipes.remove(<projecte:item.pe_klein_star>);
recipes.addShaped(<projecte:item.pe_klein_star>, [[<ore:blockDiamond>, <ore:blockDiamond>, <ore:blockDiamond>], [<ore:blockDiamond>, <projecte:matter_block>, <ore:blockDiamond>], [<ore:blockDiamond>, <ore:blockDiamond>, <ore:blockDiamond>]]);
//tier 2
recipes.remove(<projecte:item.pe_klein_star:1>);
recipes.addShapeless(<projecte:item.pe_klein_star:1>, [<projecte:item.pe_klein_star>, <projecte:item.pe_klein_star>, <projecte:item.pe_klein_star>, <projecte:item.pe_klein_star>]);
//tier 3
recipes.remove(<projecte:item.pe_klein_star:2>);
recipes.addShapeless(<projecte:item.pe_klein_star:2>, [<projecte:item.pe_klein_star:1>, <projecte:item.pe_klein_star:1>, <projecte:item.pe_klein_star:1>, <projecte:item.pe_klein_star:1>]);
//tier 4
recipes.remove(<projecte:item.pe_klein_star:3>);
recipes.addShapeless(<projecte:item.pe_klein_star:3>, [<projecte:item.pe_klein_star:2>, <projecte:item.pe_klein_star:2>, <projecte:item.pe_klein_star:2>, <projecte:item.pe_klein_star:2>]);
//tier 5
recipes.remove(<projecte:item.pe_klein_star:4>);
recipes.addShapeless(<projecte:item.pe_klein_star:4>, [<projecte:item.pe_klein_star:3>, <projecte:item.pe_klein_star:3>, <projecte:item.pe_klein_star:3>, <projecte:item.pe_klein_star:3>]);
//tier 6
recipes.remove(<projecte:item.pe_klein_star:5>);
recipes.addShapeless(<projecte:item.pe_klein_star:5>, [<projecte:item.pe_klein_star:4>, <projecte:item.pe_klein_star:4>, <projecte:item.pe_klein_star:4>, <projecte:item.pe_klein_star:4>]);

#katar
recipes.remove(<projecte:item.pe_rm_katar>);
recipes.addShaped(<projecte:item.pe_rm_katar>, [[<projecte:matter_block:1>], [<projecte:matter_block:1>], [<ore:stickTitaniumIridium>]]);

#morningstar
recipes.remove(<projecte:item.pe_rm_morning_star>);
recipes.addShaped(<projecte:item.pe_rm_morning_star>, [[null, <projecte:matter_block:1>, <projecte:matter_block:1>], [null, <projecte:matter_block:1>, <projecte:matter_block:1>], [<ore:stickTitaniumIridium>, null, null]]);

#dark matter
recipes.remove(<projecte:item.pe_matter>);
recipes.addShaped(<projecte:item.pe_matter>, [[<ore:ingotTungstensteel>, <ore:ingotTungstensteel>, <ore:ingotTungstensteel>], [<ore:blockDiamond>, <advancedrocketry:charcoallog>, <ore:blockDiamond>], [<ore:ingotTungstensteel>, <ore:ingotTungstensteel>, <ore:ingotTungstensteel>]]);

#red matter
recipes.remove(<projecte:item.pe_matter:1>);
recipes.addShaped(<projecte:item.pe_matter:1>, [[<stevescarts:blockmetalstorage:2>, <actuallyadditions:item_misc:19>, <stevescarts:blockmetalstorage:2>], [<actuallyadditions:item_misc:19>, <projecte:matter_block>, <actuallyadditions:item_misc:19>], [<stevescarts:blockmetalstorage:2>, <actuallyadditions:item_misc:19>, <stevescarts:blockmetalstorage:2>]]);

#dark matter block
recipes.remove(<projecte:matter_block>);
mods.techreborn.blastFurnace.addRecipe(<projecte:matter_block>, null, <projecte:item.pe_matter> * 9, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "if.pink_slime", Amount: 1000}}), 1000, 512, 3500);

#red matter block
recipes.remove(<projecte:matter_block:1>);
mods.techreborn.blastFurnace.addRecipe(<projecte:matter_block:1>, null, <projecte:item.pe_matter:1> * 9, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "if.pink_slime", Amount: 1000}}), 1000, 512, 3500);

#gem armor
//helm
recipes.remove(<projecte:item.pe_gem_armor_3>);
recipes.addShaped(<projecte:item.pe_gem_armor_3>, [[<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_rm_armor_3>, <projecte:matter_block:1>], [null, <projecte:item.pe_klein_star:5>, null]]);
//chest
recipes.remove(<projecte:item.pe_gem_armor_2>);
recipes.addShaped(<projecte:item.pe_gem_armor_2>, [[<projecte:matter_block:1>, <projecte:item.pe_klein_star:5>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_rm_armor_2>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]]);
//leggings
recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.addShaped(<projecte:item.pe_gem_armor_1>, [[<projecte:matter_block:1>, <projecte:item.pe_klein_star:5>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_rm_armor_1>, <projecte:matter_block:1>], [<projecte:matter_block:1>, null, <projecte:matter_block:1>]]);
//boots
recipes.remove(<projecte:item.pe_gem_armor_0>);
recipes.addShaped(<projecte:item.pe_gem_armor_0>, [[<projecte:matter_block:1>, <projecte:item.pe_rm_armor_0>, <projecte:matter_block:1>], [<projecte:matter_block:1>, <projecte:item.pe_klein_star:5>, <projecte:matter_block:1>]]);

print("Initialized 'projectE.zs'");