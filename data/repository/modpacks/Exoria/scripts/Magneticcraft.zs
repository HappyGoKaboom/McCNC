print("Magneticcraft");

// Crushing Table
recipes.remove(<magneticraft:crushing_table>);
recipes.addShaped(<magneticraft:crushing_table>, [[<primal:hardened_stone>, <primal:hardened_stone>, <primal:hardened_stone>], [null, <ore:plankWood>, null], [<ore:plankWood>, <ore:logWood>, <ore:plankWood>]]);

// Crushing Table Removals
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:skull>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:sandstone>);

// Remove
mods.jei.JEI.removeAndHide(<magneticraft:water_generator>);
mods.jei.JEI.removeAndHide(<magneticraft:grinder>);

// Sluice
recipes.remove(<magneticraft:sluice_box>);
recipes.addShaped(<magneticraft:sluice_box>, [[<ore:plankWood>, null, null], [<exnihilocreatio:item_mesh:1>, <ore:stickWood>, <ore:stickWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

// Sluice Removals
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);
// mods.magneticraft.SluiceBox.removeRecipe(<ore:sand>);

// Sieve Removals
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);

// Plates from Blocks
mods.magneticraft.CrushingTable.addRecipe(<minecraft:iron_block>, <thermalfoundation:material:32> * 9, false);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_block>, <thermalfoundation:material:33> * 9, false);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage>, <thermalfoundation:material:320> * 9, false);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage:1>, <thermalfoundation:material:321> * 9, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage:2>, <thermalfoundation:material:322> * 9, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage:3>, <thermalfoundation:material:323> * 9, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage_alloy:3>, <thermalfoundation:material:355> * 9, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:storage_alloy:1>, <thermalfoundation:material:353> * 9, true);

// Plates from Ingots
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:32>, false);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:33>, false);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:321>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:322>, true);
mods.magneticraft.CrushingTable.addRecipe(<embers:ingot_bronze>, <thermalfoundation:material:355>, true);
mods.magneticraft.CrushingTable.addRecipe(<embers:ingot_electrum>, <thermalfoundation:material:353>, true);

// Glowstone
mods.magneticraft.CrushingTable.addRecipe(<fp:cristall:6>, <minecraft:glowstone_dust>, false);
mods.magneticraft.CrushingTable.addRecipe(<fp:erz_blocke:6>, <minecraft:glowstone_dust> * 9, false);

// Netherrack
mods.magneticraft.CrushingTable.addRecipe(<minecraft:netherrack>, <skyresources:techitemcomponent:3>, false);

// Urushi
mods.magneticraft.CrushingTable.addRecipe(<electrostatics:resin>, <primal:urushi_ground>, false);

// Magnet
recipes.remove(<magneticraft:crafting:4>);
recipes.addShaped(<magneticraft:crafting:4>, [[<appliedenergistics2:material:7>, <minecraft:redstone>, <appliedenergistics2:material:7>], [<minecraft:redstone>, <ore:ingotIron>, <minecraft:redstone>], [<appliedenergistics2:material:7>, <minecraft:redstone>, <appliedenergistics2:material:7>]]);

// Motor
recipes.remove(<magneticraft:crafting:2>);
recipes.addShaped(<magneticraft:crafting:2>, [[<ore:plateLead>, <ore:plateIron>, <ore:nuggetCopper>], [<magneticraft:copper_coil>, <magneticraft:crafting:4>, <ore:stickIron>], [<ore:plateLead>, <ore:plateIron>, <ore:nuggetCopper>]]);

// Copper Coil
recipes.remove(<magneticraft:copper_coil>);
recipes.addShapeless(<magneticraft:copper_coil>, [<immersiveengineering:wirecoil>]);
recipes.addShapeless(<immersiveengineering:wirecoil>, [<magneticraft:copper_coil>]);

// Machine Block
recipes.remove(<magneticraft:multiblock_parts>);
recipes.addShaped(<magneticraft:multiblock_parts> * 2, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:ingotSteel>, <magneticraft:crafting:2>, <ore:ingotSteel>], [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);

// Thermopile
recipes.remove(<magneticraft:thermopile>);
recipes.addShaped(<magneticraft:thermopile>, [[<ore:ingotSteel>, <ore:plateBronze>, <ore:ingotSteel>], [<ore:plateBronze>, <magneticraft:multiblock_parts>, <ore:plateBronze>], [<ore:ingotSteel>, <ore:plateBronze>, <ore:ingotSteel>]]);

// Conveyor
recipes.remove(<magneticraft:conveyor_belt>);
recipes.addShaped(<magneticraft:conveyor_belt> * 16, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:stickIron>, <magneticraft:multiblock_parts>, <ore:stickIron>], [<ore:stickIron>, null, <ore:stickIron>]]);

// Inserter
recipes.remove(<magneticraft:inserter>);
recipes.addShaped(<magneticraft:inserter> * 2, [[null, <ore:stickIron>, null], [null, null, <ore:stickIron>], [<ore:plateIron>, <magneticraft:crafting:2>, <ore:plateIron>]]);

// Connector
recipes.remove(<magneticraft:connector>);
recipes.addShaped(<magneticraft:connector> * 8, [[<chisel:basalt2:7>, <ore:ingotCopper>, <chisel:basalt2:7>], [<minecraft:stone_slab>, <ore:ingotCopper>, <minecraft:stone_slab>]]);

// Wooden Box
recipes.remove(<magneticraft:box>);
recipes.addShaped(<magneticraft:box>, [[<ore:nuggetIron>, <ore:plankWood>, <ore:nuggetIron>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:nuggetIron>, <ore:plankWood>, <ore:nuggetIron>]]);

// Iron Pipe
recipes.remove(<magneticraft:iron_pipe>);
recipes.addShaped(<magneticraft:iron_pipe> * 12, [[null, <ore:plateIron>, null], [<ore:plateIron>, <ore:blockGlass>, <ore:plateIron>], [null, <ore:plateIron>, null]]);

// Furnace
recipes.remove(<magneticraft:electric_furnace>);
recipes.addShaped(<magneticraft:electric_furnace>, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>], [<minecraft:brick_block>, <minecraft:furnace>, <minecraft:brick_block>], [<minecraft:brick_block>, <ore:plateCopper>, <minecraft:brick_block>]]);

// Battery
recipes.remove(<magneticraft:battery>);
recipes.addShaped(<magneticraft:battery>, [[<magneticraft:battery_item_low>, <magneticraft:battery_item_low>, <magneticraft:battery_item_low>], [<ore:plateIron>, <magneticraft:multiblock_parts:2>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.remove(<magneticraft:battery_item_low>);
recipes.addShaped(<magneticraft:battery_item_low>, [[<ore:nuggetIron>, <ore:nuggetCopper>, <ore:nuggetIron>], [<ore:plateLead>, <ore:dustSulfur>, <ore:plateLead>], [<ore:plateLead>, <ore:dustSulfur>, <ore:plateLead>]]);
recipes.remove(<magneticraft:battery_item_medium>);
recipes.addShaped(<magneticraft:battery_item_medium>, [[null, <ore:nuggetCopper>, null], [<magneticraft:battery_item_low>, <ore:plateLead>, <magneticraft:battery_item_low>], [<magneticraft:battery_item_low>, <ore:plateLead>, <magneticraft:battery_item_low>]]);