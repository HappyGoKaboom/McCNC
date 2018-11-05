#Name: powerGeneration.zs
#Author: Feed the Beast

print("Initializing 'powerGeneration.zs'...");

#clockwork engine
recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <minecraft:gold_block>, null], [<ore:gearGold>, <ore:craftingPiston>, <minecraft:clock>]]);

#extra util early generator
#--machine block
recipes.remove(<extrautils2:machine>);
#--survival generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [[<actuallyadditions:block_misc:9>, <ore:ingotTin>, <actuallyadditions:block_misc:9>], [<ore:ingotTin>, <ore:gearAluminum>, <ore:ingotTin>], [<actuallyadditions:block_misc:9>, <forestry:chipsets:2>, <actuallyadditions:block_misc:9>]]);

#coal generators
#--actually additions coal
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<actuallyadditions:block_misc:9>, <minecraft:gold_ingot>, <actuallyadditions:block_misc:9>], [<ore:ingotGold>, <ore:gearGold>, <ore:ingotGold>], [<minecraft:furnace>, <forestry:chipsets:3>, <minecraft:furnace>]]);
#--rftools coal generator
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [[<actuallyadditions:block_misc:9>, <ore:ingotSilver>, <actuallyadditions:block_misc:9>], [<ore:ingotSilver>, <ore:gearSilver>, <ore:ingotSilver>], [<minecraft:furnace>, <forestry:chipsets:1>, <minecraft:furnace>]]);
#--extra util furnace generator
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [[<actuallyadditions:block_misc:9>, <ore:ingotLead>, <actuallyadditions:block_misc:9>], [<ore:ingotLead>, <ore:gearLead>, <ore:ingotLead>], [<minecraft:furnace>, <forestry:chipsets:2>, <minecraft:furnace>]]);
#--techreborn generator
recipes.remove(<techreborn:solid_fuel_generator>);
recipes.addShaped(<techreborn:solid_fuel_generator>, [[<actuallyadditions:block_misc:9>, <ore:ingotSilver>, <actuallyadditions:block_misc:9>], [<ore:ingotSilver>, <ore:gearSilver>, <ore:ingotSilver>], [<minecraft:furnace>, <forestry:chipsets>, <minecraft:furnace>]]);

#oil generator (canola)
recipes.remove(<actuallyadditions:block_oil_generator>);
recipes.addShaped(<actuallyadditions:block_oil_generator>, [[<ore:materialStoneTool>, <actuallyadditions:block_misc:9>, <ore:materialStoneTool>], [<ore:materialStoneTool>, <actuallyadditions:item_misc:24>, <ore:materialStoneTool>], [<ore:materialStoneTool>, <actuallyadditions:block_misc:9>, <ore:materialStoneTool>]]);

#culinary
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [[<ore:listAllbeefcooked>, <ore:circuitBasic>, <ore:listAllmeatcooked>], [<ore:blockSheetmetalSteel>, <ore:machineBlockBasic>, <ore:blockSheetmetalSteel>], [<ore:listAllmeatcooked>, <immersiveengineering:metal_decoration0:1>, <ore:listAllfishcooked>]]);

#overclocked
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [[<ore:blockRedstone>, <ore:circuitBasic>, <ore:blockRedstone>], [<ore:blockSheetmetalSteel>, <ore:machineBlockBasic>, <ore:blockSheetmetalSteel>], [<ore:blockRedstone>, <immersiveengineering:metal_decoration0:1>, <ore:blockRedstone>]]);

#potion
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [[<minecraft:potion>.withTag({Potion: "minecraft:invisibility"}), <ore:circuitBasic>, <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"})], [<ore:blockSheetmetalSteel>, <ore:machineBlockBasic>, <ore:blockSheetmetalSteel>], [<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}), <immersiveengineering:metal_decoration0:1>, <minecraft:potion>.withTag({Potion: "minecraft:healing"})]]);

#explosive
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [[<minecraft:tnt>, <ore:circuitBasic>, <minecraft:tnt>], [<ore:blockSheetmetalSteel>, <ore:machineBlockBasic>, <ore:blockSheetmetalSteel>], [<minecraft:tnt>, <immersiveengineering:metal_decoration0:1>, <minecraft:tnt>]]);

#netherstar
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [[<ore:blockLudicrite>, <actuallyadditions:item_misc:19>, <ore:blockLudicrite>], [<actuallyadditions:item_misc:19>, <thermalexpansion:frame>, <actuallyadditions:item_misc:19>], [<ore:blockLudicrite>, <actuallyadditions:item_misc:19>, <ore:blockLudicrite>]]);

#te dynamos
recipes.remove(<thermalexpansion:dynamo:4>);
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo:4>, [[null, <thermalfoundation:material:514>, null], [<ore:ingotElectrum>, <ore:gearElectrum>, <ore:ingotElectrum>], [<ore:blockRedstone>, <ore:circuitBasic>, <ore:blockRedstone>]]);
recipes.addShaped(<thermalexpansion:dynamo:3>, [[null, <thermalfoundation:material:514>, null], [<ore:ingotLead>, <ore:gearLead>, <ore:ingotLead>], [<ore:blockRedstone>, <ore:circuitBasic>, <ore:blockRedstone>]]);
recipes.addShaped(<thermalexpansion:dynamo:2>, [[null, <thermalfoundation:material:514>, null], [<ore:ingotTin>, <ore:gearTin>, <ore:ingotTin>], [<ore:blockRedstone>, <ore:circuitBasic>, <ore:blockRedstone>]]);
recipes.addShaped(<thermalexpansion:dynamo>, [[null, <thermalfoundation:material:514>, null], [<ore:ingotCopper>, <ore:gearCopper>, <ore:ingotCopper>], [<ore:blockRedstone>, <ore:circuitBasic>, <ore:blockRedstone>]]);

#portable generator
recipes.remove(<immersivepetroleum:metal_device:1>);
recipes.addShaped(<immersivepetroleum:metal_device:1>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_decoration0:1>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

#extreme reactors (see extremeReactors.zs)


print("Initialized 'powerGeneration.zs'");