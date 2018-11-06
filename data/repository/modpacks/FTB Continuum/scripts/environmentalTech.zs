#Name: template.zs
#Author: Feed the Beast

print("Initializing 'template.zs'...");

#remove not needed blocks and items
#mods.jei.JEI.removeAndHide(<environmentaltech:ionite:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:lonsdaleite:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:aethium:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:pladium:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:kyronite:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:erodium:*>);
#mods.jei.JEI.removeAndHide(<environmentaltech:litherite:*>);
mods.jei.JEI.removeAndHide(<environmentaltech:lonsdaleite_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:aethium_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:ionite_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:pladium_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:kyronite_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:erodium_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:litherite_crystal>);
mods.jei.JEI.removeAndHide(<environmentaltech:mica>);
mods.jei.JEI.removeAndHide(<environmentaltech:diode>);

#assembler
recipes.remove(<environmentaltech:tool_multiblock_assembler>);
recipes.addShaped(<environmentaltech:tool_multiblock_assembler>, [[null, null, <ore:gemEmerald>], [null, <ore:obsidian>, null], [<ore:obsidian>, null, null]]);

#null modifer
recipes.remove(<environmentaltech:modifier_null>);
recipes.addShaped(<environmentaltech:modifier_null>, [[<ore:ingotRefinedIron>, <environmentaltech:interconnect>, <ore:ingotRefinedIron>], [<environmentaltech:interconnect>, <ore:blockDiamond>, <environmentaltech:interconnect>], [<ore:ingotRefinedIron>, <environmentaltech:interconnect>, <ore:ingotRefinedIron>]]);

#speed modifier
recipes.remove(<environmentaltech:modifier_speed>);
recipes.addShaped(<environmentaltech:modifier_speed>, [[<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <techreborn:upgrades>, <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})], [<techreborn:upgrades>, <environmentaltech:modifier_null>, <techreborn:upgrades>], [<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), <techreborn:upgrades>, <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})]]);

#accuracy modifer
recipes.remove(<environmentaltech:modifier_accuracy>);
recipes.addShaped(<environmentaltech:modifier_accuracy>, [[<minecraft:arrow>, <techreborn:plates:2>, <minecraft:arrow>], [<techreborn:plates:2>, <environmentaltech:modifier_null>, <techreborn:plates:2>], [<minecraft:arrow>, <techreborn:plates:2>, <minecraft:arrow>]]);

#--tier 1 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>, [[<techreborn:cable:7>, <ore:gearSilver>, <techreborn:cable:7>], [<techreborn:machine_casing>, <actuallyadditions:item_drill:*>, <techreborn:machine_casing>], [<ore:gearGold>, <ore:lapotronCrystal>, <ore:gearGold>]]);
//resource miner
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_1>, [[<ore:compressed3xCobblestone>, <betterbuilderswands:wandiron>, <ore:compressed3xCobblestone>], [<betterbuilderswands:wandiron>, <ore:circuitAdvanced>, <betterbuilderswands:wandiron>], [<ore:compressed3xCobblestone>, <betterbuilderswands:wandiron>, <ore:compressed3xCobblestone>]]);
//structure frame
recipes.remove(<environmentaltech:structure_frame_1>);
recipes.addShaped(<environmentaltech:structure_frame_1>, [[null, <ore:ingotRefinedIron>, null], [<ore:ingotRefinedIron>, <environmentaltech:interconnect>, <ore:ingotRefinedIron>], [null, <ore:ingotRefinedIron>, null]]);

#--tier 2 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_2>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_2>, [[<techreborn:machine_casing:1>, <ore:plateTitanium>, <techreborn:machine_casing:1>], [<ore:plateTitanium>, <environmentaltech:void_ore_miner_cont_1>, <ore:plateTitanium>], [<techreborn:machine_casing:1>, <ore:plateTitanium>, <techreborn:machine_casing:1>]]);
recipes.remove(<environmentaltech:void_res_miner_cont_2>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_2>, [[<ore:compressed3xNetherrack>, <betterbuilderswands:wanddiamond>, <ore:compressed3xNetherrack>], [<betterbuilderswands:wanddiamond>, <environmentaltech:void_res_miner_cont_1>, <betterbuilderswands:wanddiamond>], [<ore:compressed3xNetherrack>, <betterbuilderswands:wanddiamond>, <ore:compressed3xNetherrack>]]);
//structure frame
recipes.remove(<environmentaltech:structure_frame_2>);
recipes.addShaped(<environmentaltech:structure_frame_2>, [[<ore:stoneBasalt>, <environmentaltech:structure_frame_1>, <ore:stoneBasalt>], [<environmentaltech:connector>, <ore:blockAlubrass>, <environmentaltech:connector>], [<ore:stoneBasalt>, <environmentaltech:connector>, <ore:stoneBasalt>]]);

#--tier 3 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_3>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_3>, [[<ore:ingotTungstensteel>, <ore:platechrome>, <ore:ingotTungstensteel>], [<ore:platechrome>, <environmentaltech:void_ore_miner_cont_2>, <ore:platechrome>], [<ore:ingotTungstensteel>, <ore:platechrome>, <ore:ingotTungstensteel>]]);
//resource miner
recipes.remove(<environmentaltech:void_res_miner_cont_3>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_3>, [[<ore:blockPrismarine>, <ore:cropPumpkin>, <ore:blockPrismarine>], [<minecraft:melon_block>, <environmentaltech:void_res_miner_cont_2>, <minecraft:melon_block>], [<ore:blockPrismarine>, <ore:cropPumpkin>, <ore:blockPrismarine>]]);
//structure frame
recipes.remove(<environmentaltech:structure_frame_3>);
recipes.addShaped(<environmentaltech:structure_frame_3>, [[<ore:obsidian>, <environmentaltech:structure_frame_2>, <ore:obsidian>], [<environmentaltech:connector>, <actuallyadditions:block_crystal_empowered:1>, <environmentaltech:connector>], [<ore:obsidian>, <environmentaltech:connector>, <ore:obsidian>]]);

#--tier 4 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_4>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_4>, [[<refinedstorage:quartz_enriched_iron_block>, <ore:dustPyrope>, <refinedstorage:quartz_enriched_iron_block>], [<ore:dustPyrope>, <environmentaltech:void_ore_miner_cont_3>, <ore:dustPyrope>], [<refinedstorage:quartz_enriched_iron_block>, <ore:dustPyrope>, <refinedstorage:quartz_enriched_iron_block>]]);
//resource miner
mods.jei.JEI.removeAndHide(<environmentaltech:void_res_miner_cont_4>);
//structure frame
recipes.remove(<environmentaltech:structure_frame_4>);
recipes.addShaped(<environmentaltech:structure_frame_4>, [[<ore:dustPhosphorous>, <environmentaltech:structure_frame_3>, <ore:dustPhosphorous>], [<environmentaltech:connector>, <techreborn:uumatter>, <environmentaltech:connector>], [<ore:dustPhosphorous>, <environmentaltech:connector>, <ore:dustPhosphorous>]]);


#--tier 5 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_5>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_5>, [[<techreborn:machine_casing:2>, <ore:machineBlockHighlyAdvanced>, <techreborn:machine_casing:2>], [<techreborn:storage2:1>, <environmentaltech:void_ore_miner_cont_4>, <techreborn:storage2:1>], [<techreborn:machine_casing:2>, <ore:machineBlockHighlyAdvanced>, <techreborn:machine_casing:2>]]);
//resource miner
mods.jei.JEI.removeAndHide(<environmentaltech:void_res_miner_cont_5>);
//structure frame
recipes.remove(<environmentaltech:structure_frame_5>);
recipes.addShaped(<environmentaltech:structure_frame_5>, [[<ore:gemPeridot>, <environmentaltech:structure_frame_4>, <ore:gemPeridot>], [<environmentaltech:connector>, <ore:ingotCyanite>, <environmentaltech:connector>], [<ore:gemPeridot>, <environmentaltech:connector>, <ore:gemPeridot>]]);

#--tier 6 miners
//ore miner
recipes.remove(<environmentaltech:void_ore_miner_cont_6>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_6>, [[<ore:blockEvilMetal>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}), <ore:blockEvilMetal>], [<techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}), <environmentaltech:void_ore_miner_cont_5>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}})], [<ore:blockEvilMetal>, <techreborn:dynamiccell>.withTag({Fluid: {FluidName: "fluidheliumplasma", Amount: 1000}}), <ore:blockEvilMetal>]]);
//resource miner
mods.jei.JEI.removeAndHide(<environmentaltech:void_res_miner_cont_6>);
//structure frame
recipes.remove(<environmentaltech:structure_frame_6>);
recipes.addShaped(<environmentaltech:structure_frame_6>, [[<ore:ingotArdite>, <environmentaltech:structure_frame_5>, <ore:ingotCobalt>], [<environmentaltech:connector>, <ore:plateiridiumAlloy>, <environmentaltech:connector>], [<ore:ingotCobalt>, <environmentaltech:connector>, <ore:ingotArdite>]]);

print("Initialized 'template.zs'");