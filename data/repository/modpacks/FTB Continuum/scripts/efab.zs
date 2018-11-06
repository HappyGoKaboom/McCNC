#Name: efab.zs
#Author: Feed the Beast

print("Initializing 'efab.zs'...");

#mana upgrade (not needed in this pack
mods.jei.JEI.removeAndHide(<efab:upgrade_magic>);

#crafting grid
recipes.remove(<efab:grid>);
recipes.addShaped(<efab:grid>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:logWood>, <ore:plankWood>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

#gearbox
recipes.remove(<efab:gearbox>);
recipes.addShaped(<efab:gearbox>, [[<ore:ingotIron>, <appliedenergistics2:material:40>, <ore:ingotIron>], [<appliedenergistics2:material:40>, <minecraft:iron_block>, <appliedenergistics2:material:40>], [<ore:ingotIron>, <appliedenergistics2:material:40>, <ore:ingotIron>]]);

#tank
recipes.remove(<efab:tank>);
recipes.addShaped(<efab:tank>, [[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [<ore:blockGlass>, <actuallyadditions:block_misc:9>, <ore:blockGlass>], [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]]);

#advanced tank
recipes.remove(<efab:tank2>);
recipes.addShaped(<efab:tank2>, [[<efab:tank>, <ore:blockSheetmetalSteel>, <efab:tank>], [<ore:blockSheetmetalSteel>, <ore:blockGlass>, <ore:blockSheetmetalSteel>], [<efab:tank>, <ore:blockSheetmetalSteel>, <efab:tank>]]);

#pipe
recipes.remove(<efab:pipes>);
recipes.addShaped(<efab:pipes>, [[<ore:ingotBronze>, <ore:blockGlass>, <ore:ingotBronze>]]);

#steam crafting tier
#boiler
recipes.remove(<efab:boiler>);
recipes.addShaped(<efab:steamengine>, [[<ore:gearBronze>, <actuallyadditions:item_crystal_empowered:2>, <ore:gearBronze>], [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]]);
#steam engine
recipes.remove(<efab:steamengine>);
recipes.addShaped(<efab:boiler>, [[<ore:ingotBronze>, null, <ore:ingotBronze>], [<ore:ingotBronze>, <forestry:thermionic_tubes:7>, <ore:ingotBronze>], [<ore:blockCoal>, <ore:blockCoal>, <ore:blockCoal>]]);

#rf upgrades
#module
recipes.remove(<efab:upgrade_power>);
recipes.addShaped(<efab:upgrade_power>, [[<ore:ingotTitanium>, <ore:craftingIndustrialDiamond>, <ore:ingotTitanium>], [<ore:craftingIndustrialDiamond>, <ore:circuitAdvanced>, <ore:craftingIndustrialDiamond>], [<ore:ingotTitanium>, <actuallyadditions:item_battery_quintuple>, <ore:ingotTitanium>]]);
#controller
recipes.remove(<efab:rfcontrol>);
recipes.addShaped(<efab:rfcontrol>, [[<ore:platerefinedIron>, <ore:circuitBasic>, <ore:platerefinedIron>], [<ore:insulatedGoldCableItem>, <immersiveengineering:metal_decoration0:2>, <ore:insulatedGoldCableItem>], [<ore:platerefinedIron>, <ore:platerefinedIron>, <ore:platerefinedIron>]]);
#storage
recipes.remove(<efab:rfstorage>);
recipes.addShaped(<efab:rfstorage>, [[null, <efab:base>, null], [<techreborn:lapotroncrystal>, <techreborn:part:30>, <techreborn:lapotroncrystal>], [null, <efab:base>, null]]);
#advanced storage
recipes.remove(<efab:rfstorage_advanced>);
#<efab:rfstorage_advanced>.addTooltip(format.darkRed("Disabled until bug is fixed!"));
recipes.addShaped(<efab:rfstorage_advanced>, [[<efab:base>, <efab:rfstorage>, <efab:base>], [<efab:rfstorage>, <appliedenergistics2:material:17>, <efab:rfstorage>], [<efab:base>, <efab:rfstorage>, <efab:base>]]);

#auto crafting tier
#storage block
recipes.remove(<efab:storage>);
recipes.addShaped(<efab:storage>, [[<efab:base>, <efab:base>, <efab:base>], [<efab:base>, <ironchest:iron_chest:1>, <efab:base>], [<efab:base>, <efab:base>, <efab:base>]]);
#processor
recipes.remove(<efab:processor>);
recipes.addShaped(<efab:processor>, [[<efab:base>, <techreborn:part:29>, <efab:base>], [<thermalfoundation:material:357>, <thermalfoundation:material:515>, <thermalfoundation:material:357>], [<efab:base>, <techreborn:part:29>, <efab:base>]]);
#crafter
recipes.remove(<efab:crafter>);
recipes.addShaped(<efab:crafter>, [[<ore:gearEnderium>, <thermalfoundation:material:515>, <ore:gearEnderium>], [<efab:base>, <ore:circuitBasic>, <efab:base>]]);

#digital upgrade (more end game)
recipes.remove(<efab:upgrade_digital>);
recipes.addShaped(<efab:upgrade_digital>, [[<ore:blockLudicrite>, <ore:circuitMaster>, <ore:blockLudicrite>], [<simplyjetpacks:metaitemmods:18>, <ore:xuUpgradeBlank>, <simplyjetpacks:metaitemmods:18>], [<ore:blockLudicrite>, <ore:circuitMaster>, <ore:blockLudicrite>]]);

#power optimizer
recipes.remove(<efab:power_optimizer>);
recipes.addShaped(<efab:power_optimizer>, [[<ore:circuitAdvanced>, <ore:circuitBasic>, <ore:circuitAdvanced>], [<ore:circuitBasic>, <advancedrocketry:gravitymachine>, <ore:circuitBasic>], [<ore:circuitAdvanced>, <ore:circuitBasic>, <ore:circuitAdvanced>]]);

#monitor
recipes.remove(<efab:monitor>);
recipes.addShaped(<efab:monitor>, [[<ore:blockGlass>, <forestry:thermionic_tubes:2>, <ore:blockGlass>], [<ore:ingotBronze>, <forestry:chipsets:3>, <ore:ingotBronze>], [<ore:blockGlass>, <ore:ingotBronze>, <ore:blockGlass>]]);

#crafting monitor
recipes.remove(<efab:autocrafting_monitor>);
recipes.addShaped(<efab:autocrafting_monitor>, [[<ore:blockGlass>, <ore:ingotBronze>, <ore:blockGlass>], [<ore:ingotBronze>, <efab:monitor>, <ore:ingotBronze>], [<ore:blockGlass>, <ore:ingotBronze>, <ore:blockGlass>]]);

print("Initialized 'efab.zs'");