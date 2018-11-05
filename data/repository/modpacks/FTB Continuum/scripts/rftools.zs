#Name: rftools.zs
#Author: Feed the Beast

print("Initializing 'rftools.zs'...");

#machine blocks
recipes.remove(<rftools:machine_base>);
recipes.remove(<rftools:machine_frame>);
recipes.addShaped(<rftools:machine_frame>, [[<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>], [<ore:nuggetGold>, <ore:machineBlockAdvanced>, <ore:nuggetGold>], [<ore:ingotIron>, <ore:dyeBlue>, <ore:ingotIron>]]);
recipes.addShaped(<rftools:machine_base>, [[null, <ore:machineBlockAdvanced>, null], [<ore:stone>, <ore:stone>, <ore:stone>]]);

#storage module
recipes.remove(<rftools:storage_module:6>);
recipes.addShaped(<rftools:storage_module:6>, [[<refinedstorage:quartz_enriched_iron>, <ore:ingotGold>, <refinedstorage:quartz_enriched_iron>], [<ore:enderpearl>, <rftools:machine_base>, <ore:enderpearl>], [<refinedstorage:quartz_enriched_iron>, <ore:ingotGold>, <refinedstorage:quartz_enriched_iron>]]);

#storage tablet
recipes.removeShaped(<rftools:storage_module_tablet>, [[<minecraft:gold_nugget>, <minecraft:emerald>, <minecraft:gold_nugget>], [<minecraft:redstone_block>, <minecraft:quartz_block>, <minecraft:redstone_block>], [<minecraft:gold_nugget>, <minecraft:redstone_block>, <minecraft:gold_nugget>]]);
recipes.addShaped(<rftools:storage_module_tablet>, [[<ore:ingotIron>, <extrautils2:terraformer:1>, <ore:ingotIron>], [<wrcbe:material:2>, <thermalexpansion:frame>, <wrcbe:material:2>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

#powercell card
mods.jei.JEI.removeAndHide(<rftools:powercell_card>);

#quarry shape card
recipes.remove(<rftools:shape_card:2>);
recipes.addShaped(<rftools:shape_card:2>, [[<projecte:item.pe_matter>, <ore:blockPladium>, <projecte:item.pe_matter>], [<ore:blockErodium>, <minecraft:diamond_pickaxe>, <ore:blockIonite>], [<projecte:item.pe_matter>, <ore:blockLitherite>, <projecte:item.pe_matter>]]);

print("Initialized 'rftools.zs'");