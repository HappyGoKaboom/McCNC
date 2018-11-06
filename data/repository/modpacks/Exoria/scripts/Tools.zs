print("Tools");

//Disable Wooden Tools
mods.jei.JEI.removeAndHide(<minecraft:wooden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_axe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_hoe>);

//Disable Diamond Tools
mods.jei.JEI.removeAndHide(<minecraft:diamond_sword>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_axe>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_hoe>);

//Disable Obsidian Tools
mods.jei.JEI.removeAndHide(<actuallyadditions:item_pickaxe_obsidian>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_axe_obsidian>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_shovel_obsidian>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_sword_obsidian>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_hoe_obsidian>);
mods.jei.JEI.removeAndHide(<primal:obsidian_pickaxe>);
mods.jei.JEI.removeAndHide(<primal:obsidian_shovel>);
mods.jei.JEI.removeAndHide(<primal:obsidian_hoe>);
mods.jei.JEI.removeAndHide(<primal:obsidian_axe>);
mods.jei.JEI.removeAndHide(<primal:obsidian_workblade>);

// Disable AIOT
mods.jei.JEI.removeAndHide(<actuallyadditions:wooden_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:stone_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:iron_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:gold_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:diamond_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:emerald_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:obsidian_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:quartz_paxel>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_red>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_blue>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_light_blue>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_black>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_green>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_paxel_crystal_white>);

// Disable Wooden Hammer & Excavator the vanilla way
recipes.remove(<sparkshammers:hammer_head_wood>);
recipes.remove(<sparkshammers:excavator_head_wood>);
recipes.remove(<sparkshammers:hammer_wood>);
recipes.remove(<sparkshammers:excavator_wood>);

// Station
recipes.remove(<sparkshammers:hammer_craft>);
recipes.addShaped(<sparkshammers:hammer_craft>, [[<minecraft:stone>, <tconstruct:tooltables>, <minecraft:stone>], [<tconstruct:tooltables>, <embers:tinker_hammer>, <tconstruct:tooltables>], [<minecraft:stone>, <tconstruct:tooltables>, <minecraft:stone>]]);
recipes.addShaped(<sparkshammers:hammer_craft>, [[<minecraft:stone>, <minecraft:crafting_table>, <minecraft:stone>], [<minecraft:crafting_table>, <embers:tinker_hammer>, <minecraft:crafting_table>], [<minecraft:stone>, <minecraft:crafting_table>, <minecraft:stone>]]);

// Flexible Tools
recipes.removeShaped(<flexibletools:swordi>);
recipes.removeShaped(<flexibletools:picki>);
recipes.removeShaped(<flexibletools:axi>);
recipes.removeShaped(<flexibletools:shovi>);
recipes.addShaped(<flexibletools:picki>, [[<magneticraft:light_plates:5>.noReturn(), <magneticraft:light_plates:5>.noReturn(), <magneticraft:light_plates:5>.noReturn()], [null, <primal:diamond_pickaxe>.noReturn(), null], [null, <redstonearsenal:material:192>.noReturn(), null]]);
recipes.addShaped(<flexibletools:axi>, [[<magneticraft:light_plates:5>.noReturn(), <magneticraft:light_plates:5>.noReturn(), null], [null, <primal:diamond_axe>.noReturn(), null], [null, <redstonearsenal:material:192>.noReturn(), null]]);
recipes.addShaped(<flexibletools:swordi>, [[null, <magneticraft:light_plates:5>.noReturn(), null], [null, <primal:diamond_axe>.noReturn(), null], [null, <redstonearsenal:material:192>.noReturn(), null]]);
recipes.addShaped(<flexibletools:shovi>, [[null, <magneticraft:light_plates:5>.noReturn(), null], [null, <primal:diamond_shovel>.noReturn(), null], [null, <redstonearsenal:material:192>.noReturn(), null]]);

// Upgrades
recipes.remove(<flexibletools:tool_upgrade_area>);
recipes.addShaped(<flexibletools:tool_upgrade_area>, [[<ore:gemDiamond>, <minecraft:flint>, <ore:gemDiamond>], [<minecraft:sticky_piston>, <minecraft:brick>, <minecraft:sticky_piston>], [<ore:gemDiamond>, <ore:blockIron>, <ore:gemDiamond>]]);
recipes.remove(<flexibletools:tool_upgrade_area:1>);
recipes.addShaped(<flexibletools:tool_upgrade_area:1>, [[<ore:gemDiamond>, <minecraft:flint>, <ore:gemDiamond>], [<flexibletools:tool_upgrade_area>, <minecraft:brick>, <flexibletools:tool_upgrade_area>], [<ore:gemDiamond>, <ore:blockGold>, <ore:gemDiamond>]]);
recipes.remove(<flexibletools:tool_upgrade_area:2>);
recipes.addShaped(<flexibletools:tool_upgrade_area:2>, [[<ore:gemDiamond>, <minecraft:flint>, <ore:gemDiamond>], [<flexibletools:tool_upgrade_area>, <minecraft:brick>, <flexibletools:tool_upgrade_area>], [<ore:gemDiamond>, <ore:blockQuartz>, <ore:gemDiamond>]]);
recipes.remove(<flexibletools:tool_upgrade_area:3>);
recipes.remove(<flexibletools:tool_upgrade_support:7>);
recipes.addShaped(<flexibletools:tool_upgrade_support:7>, [[<minecraft:redstone>, <ore:ingotLead>, <minecraft:redstone>], [<ore:ingotElectrum>, <minecraft:brick>, <ore:ingotElectrum>], [<minecraft:redstone>, <magneticraft:battery_item_medium>, <minecraft:redstone>]]);

recipes.remove(<flexibletools:tool_upgrade_support>);
recipes.addShaped(<flexibletools:tool_upgrade_support>, [[<ore:blockQuartz>, <minecraft:flint>, <ore:blockQuartz>], [<ore:blockQuartz>, <minecraft:brick>, <ore:blockQuartz>], [<ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>]]);
recipes.remove(<flexibletools:tool_upgrade_support:1>);
recipes.addShaped(<flexibletools:tool_upgrade_support:1>, [[<ore:blockRedstone>, <minecraft:glowstone>, <ore:blockRedstone>], [<ore:blockRedstone>, <minecraft:brick>, <ore:blockRedstone>], [<ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>]]);
recipes.remove(<flexibletools:tool_upgrade_support:2>);
recipes.addShaped(<flexibletools:tool_upgrade_support:2>, [[<ore:blockLapis>, <minecraft:glowstone>, <ore:blockLapis>], [<ore:blockLapis>, <minecraft:brick>, <ore:blockLapis>], [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>]]);
recipes.remove(<flexibletools:tool_upgrade_support:3>);
recipes.addShaped(<flexibletools:tool_upgrade_support:3>, [[<ore:gemEmerald>, <ore:blockWool>, <ore:gemEmerald>], [<minecraft:slime>, <minecraft:brick>, <minecraft:slime>], [<ore:gemEmerald>, <ore:blockWool>, <ore:gemEmerald>]]);
recipes.remove(<flexibletools:tool_upgrade_support:5>);
recipes.addShaped(<flexibletools:tool_upgrade_support:5>, [[<minecraft:blaze_rod>, <minecraft:enchanting_table>, <minecraft:blaze_rod>], [<minecraft:writable_book>, <minecraft:brick>, <minecraft:writable_book>], [<minecraft:blaze_rod>, <ore:bookshelf>, <minecraft:blaze_rod>]]);
recipes.remove(<flexibletools:tool_upgrade_skill:4>);
recipes.addShaped(<flexibletools:tool_upgrade_skill:4>, [[<ore:gemEmerald>, <ore:blockCoal>, <ore:gemEmerald>], [<minecraft:obsidian>, <flexibletools:tool_upgrade_area>, <minecraft:obsidian>], [<ore:gemEmerald>, <ore:gearDiamond>, <ore:gemEmerald>]]);
recipes.remove(<flexibletools:tool_upgrade_effect>);
recipes.addShaped(<flexibletools:tool_upgrade_effect>, [[null, <minecraft:glowstone_dust>, null], [<mist:sponge_slime>, <minecraft:brick>, <mist:sponge_slime>], [null, <minecraft:potion>, null]]);
recipes.remove(<flexibletools:tool_upgrade_effect:2>);
recipes.addShaped(<flexibletools:tool_upgrade_effect:2>, [[null, <minecraft:glowstone_dust>, null], [<minecraft:rotten_flesh>, <minecraft:brick>, <minecraft:rotten_flesh>], [null, <minecraft:potion>, null]]);

// Disable TE Hammers
recipes.remove(<thermalfoundation:tool.hammer_copper>);
recipes.remove(<thermalfoundation:tool.hammer_tin>);
recipes.remove(<thermalfoundation:tool.hammer_silver>);
recipes.remove(<thermalfoundation:tool.hammer_lead>);
recipes.remove(<thermalfoundation:tool.hammer_aluminum>);
recipes.remove(<thermalfoundation:tool.hammer_nickel>);
recipes.remove(<thermalfoundation:tool.hammer_platinum>);
recipes.remove(<thermalfoundation:tool.hammer_steel>);
recipes.remove(<thermalfoundation:tool.hammer_electrum>);
recipes.remove(<thermalfoundation:tool.hammer_invar>);
recipes.remove(<thermalfoundation:tool.hammer_bronze>);
recipes.remove(<thermalfoundation:tool.hammer_constantan>);
recipes.remove(<thermalfoundation:tool.hammer_iron>);
recipes.remove(<thermalfoundation:tool.hammer_diamond>);
recipes.remove(<thermalfoundation:tool.hammer_gold>);
