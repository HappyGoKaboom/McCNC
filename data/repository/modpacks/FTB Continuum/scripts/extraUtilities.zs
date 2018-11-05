#Name: extraUtilities.zs
#Author: Feed the Beast

print("Initializing 'extraUtilities.zs'...");

#remove watering can
mods.jei.JEI.removeAndHide(<extrautils2:wateringcan>);
mods.jei.JEI.removeAndHide(<extrautils2:wateringcan:1000>);

#golden bag of holding
recipes.remove(<extrautils2:bagofholding>);
recipes.addShaped(<extrautils2:bagofholding>, [[<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>], [<ore:enderpearl>, <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}), <ore:enderpearl>], [<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>]]);
recipes.addShaped(<extrautils2:bagofholding>, [[<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>], [<ore:enderpearl>, <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}), <ore:enderpearl>], [<actuallyadditions:item_crystal_empowered:2>, <ore:gemEmerald>, <actuallyadditions:item_crystal_empowered:2>]]);

#furnance/crusher
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));

#drums
recipes.remove(<extrautils2:drum:3>);
recipes.remove(<extrautils2:drum:2>);
recipes.remove(<extrautils2:drum:1>);
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum:1>, [[<ore:plateIron>, <thermalexpansion:tank>, <ore:plateIron>], [<ore:plateIron>, <extrautils2:drum>, <ore:plateIron>], [<ore:plateIron>, <thermalexpansion:tank>, <ore:plateIron>]]);
recipes.addShaped(<extrautils2:drum:2>, [[<ore:craftingIndustrialDiamond>, <ore:plateTitanium>, <ore:craftingIndustrialDiamond>], [<ore:craftingIndustrialDiamond>, <extrautils2:drum:1>, <ore:craftingIndustrialDiamond>], [<ore:craftingIndustrialDiamond>, <ore:plateTitanium>, <ore:craftingIndustrialDiamond>]]);
recipes.addShaped(<extrautils2:drum:1>, [[<ore:plateIron>, <thermalexpansion:tank>, <ore:plateIron>], [<ore:plateIron>, <extrautils2:drum>, <ore:plateIron>], [<ore:plateIron>, <thermalexpansion:tank>, <ore:plateIron>]]);
recipes.addShaped(<extrautils2:drum>, [[<ore:compressed2xCobblestone>, <minecraft:stone_pressure_plate>, <ore:compressed2xCobblestone>], [<ore:compressed2xCobblestone>, <minecraft:bucket>, <ore:compressed2xCobblestone>], [<ore:compressed2xCobblestone>, <minecraft:stone_pressure_plate>, <ore:compressed2xCobblestone>]]);
recipes.addShaped(<extrautils2:drum:3>, [[<extrautils2:drum:2>, <ore:platetungstensteel>, <extrautils2:drum:2>], [<extrautils2:drum:2>, <ore:netherStar>, <extrautils2:drum:2>], [<extrautils2:drum:2>, <ore:platetungstensteel>, <extrautils2:drum:2>]]);

#transfer pipe and nodes
recipes.remove(<extrautils2:pipe>);
mods.techreborn.rollingMachine.addShaped(<extrautils2:pipe> * 4, [[<ore:dustRedstone>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:dustRedstone>], [null, <ore:itemSilicon>, null], [<ore:dustRedstone>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:dustRedstone>]]);
recipes.remove(<extrautils2:grocket>);
recipes.remove(<extrautils2:grocket:2>);
recipes.addShaped(<extrautils2:grocket:2>, [[<extrautils2:pipe>, <forestry:chipsets:2>, <extrautils2:pipe>], [<minecraft:bucket>, <techreborn:part:29>, <minecraft:bucket>], [<extrautils2:pipe>, <forestry:thermionic_tubes>, <extrautils2:pipe>]]);
recipes.addShaped(<extrautils2:grocket>, [[<extrautils2:pipe>, <forestry:chipsets:2>, <extrautils2:pipe>], [<ore:ingotIron>, <techreborn:part:29>, <ore:ingotIron>], [<extrautils2:pipe>, <forestry:thermionic_tubes>, <extrautils2:pipe>]]);

#angel rings
mods.jei.JEI.removeAndHide(<extrautils2:angelring:5>);
mods.jei.JEI.removeAndHide(<extrautils2:angelring:4>);
mods.jei.JEI.removeAndHide(<extrautils2:angelring:3>);
mods.jei.JEI.removeAndHide(<extrautils2:angelring:2>);
mods.jei.JEI.removeAndHide(<extrautils2:angelring:1>);
mods.jei.JEI.removeAndHide(<extrautils2:chickenring>);
mods.jei.JEI.removeAndHide(<extrautils2:chickenring:1>);
mods.jei.JEI.removeAndHide(<extrautils2:angelring>);

#deep dark portal
mods.jei.JEI.removeAndHide(<extrautils2:teleporter:1>);

#wireless RF battery
mods.jei.JEI.removeAndHide(<extrautils2:powerbattery>);

#enchanter
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), [[<actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>, <actuallyadditions:block_misc:9>], [<actuallyadditions:block_misc:9>, <openblocks:auto_enchantment_table>, <actuallyadditions:block_misc:9>], [<actuallyadditions:block_misc:9>, <immersiveengineering:metal_decoration0:2>, <actuallyadditions:block_misc:9>]]);

#remove iron and stone spikes
mods.jei.JEI.removeAndHide(<extrautils2:spike_iron>);
mods.jei.JEI.removeAndHide(<extrautils2:spike_stone>);

#spikes
recipes.remove(<extrautils2:spike_diamond>);
recipes.remove(<extrautils2:spike_gold>);
recipes.remove(<extrautils2:spike_wood>);
recipes.addShaped(<extrautils2:spike_diamond>, [[null, <minecraft:diamond_sword>, null], [<minecraft:diamond_sword>, <forestry:thermionic_tubes:5>, <minecraft:diamond_sword>], [<ore:gemRedstone>, <ore:blockDiamond>, <ore:gemRedstone>]]);
recipes.addShaped(<extrautils2:spike_wood>, [[null, <minecraft:wooden_sword>, null], [<minecraft:wooden_sword>, <forestry:thermionic_tubes:3>, <minecraft:wooden_sword>], [<ore:gemRedstone>, <ore:blockMagicalWood>, <ore:gemRedstone>]]);
recipes.addShaped(<extrautils2:spike_gold>, [[null, <minecraft:golden_sword>, null], [<minecraft:golden_sword>, <forestry:thermionic_tubes:4>, <minecraft:golden_sword>], [<ore:gemRedstone>, <ore:blockGold>, <ore:gemRedstone>]]);

#mechanical crafter
recipes.remove(<extrautils2:crafter>);
recipes.addShaped(<extrautils2:crafter>, [[<ore:plankWood>, <techreborn:part:29>, <ore:plankWood>], [<ore:gearBronze>, <ore:workbench>, <ore:gearBronze>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

#resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>], [<refinedstorage:quartz_enriched_iron>, <ore:gemRedstone>, <refinedstorage:quartz_enriched_iron>], [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]]);

#terraformer
recipes.remove(<extrautils2:terraformer>);
recipes.addShaped(<extrautils2:terraformer>, [[<wrcbe:material:2>, <rftools:machine_frame>, <wrcbe:material:2>], [<ore:dustRedstone>, <minecraft:comparator>, <ore:dustRedstone>]]);

#climograph base unit
recipes.remove(<extrautils2:terraformer:9>);
recipes.addShaped(<extrautils2:terraformer:9>, [[<ore:dustRedstone>, <actuallyadditions:item_crystal_empowered:2>, <ore:dustRedstone>], [<wrcbe:material:2>, <thermalexpansion:frame:64>, <wrcbe:material:2>], [<ore:dustRedstone>, <actuallyadditions:item_crystal_empowered:2>, <ore:dustRedstone>]]);

#mechanical user//disabled due to crashes with modded tools
#recipes.remove(<extrautils2:user>);
#recipes.addShaped(<extrautils2:user>, [[<ore:plateLazurite>, <ore:plateLazurite>, <ore:plateLazurite>], [<actuallyadditions:block_placer>, null, <actuallyadditions:block_breaker>], [<ore:plateLazurite>, <ore:plateLazurite>, <ore:plateLazurite>]]);

#redstone gear (force through compactor)
#recipes.remove(<extrautils2:ingredients:1>);

#mill
mods.jei.JEI.removeAndHide(<extrautils2:passivegenerator:8>);
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.remove(<extrautils2:passivegenerator:3>);
recipes.remove(<extrautils2:passivegenerator:5>);
recipes.remove(<extrautils2:passivegenerator:2>);
recipes.addShaped(<extrautils2:passivegenerator:3>, [[<extrautils2:decorativesolid:3>, <techreborn:part:38>, <extrautils2:decorativesolid:3>], [<techreborn:part:38>, <thermalfoundation:material:295>, <techreborn:part:38>], [<extrautils2:decorativesolid:3>, <techreborn:part:38>, <extrautils2:decorativesolid:3>]]);
recipes.addShaped(<extrautils2:passivegenerator:4>, [[<extrautils2:decorativesolid:3>, <techreborn:part:38>, <extrautils2:decorativesolid:3>], [<techreborn:part:38>, <thermalfoundation:material:263>, <techreborn:part:38>], [<extrautils2:decorativesolid:3>, <techreborn:part:38>, <extrautils2:decorativesolid:3>]]);
recipes.addShaped(<extrautils2:passivegenerator:2>, [[<extrautils2:decorativesolid:3>, <techreborn:part:9>, <extrautils2:decorativesolid:3>], [<techreborn:part:9>, <ore:gearIridium>, <techreborn:part:9>], [<extrautils2:decorativesolid:3>, <techreborn:part:9>, <extrautils2:decorativesolid:3>]]);
recipes.addShaped(<extrautils2:passivegenerator:5>, [[<extrautils2:decorativesolid:3>, <techreborn:part:9>, <extrautils2:decorativesolid:3>], [<techreborn:part:9>, <ore:gearEnderium>, <techreborn:part:9>], [<extrautils2:decorativesolid:3>, <techreborn:part:9>, <extrautils2:decorativesolid:3>]]);

#heating coil
mods.extrautils2.Resonator.remove(<extrautils2:ingredients:13>);


print("Initialized 'extraUtilities.zs'");