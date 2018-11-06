#Name: storageDrawers.zs
#Author: Feed the Beast

print("Initializing 'storageDrawers.zs'...");

#upgrade template moved to efab
recipes.remove(<storagedrawers:upgrade_template>);

#storage upgrades
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.addShaped(<storagedrawers:upgrade_storage>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ironchest:iron_chest:3>, <storagedrawers:upgrade_template>, <ironchest:iron_chest:3>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:4>);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>], [<ironchest:iron_chest:6>, <storagedrawers:upgrade_template>, <ironchest:iron_chest:6>], [<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>]]);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ironchest:iron_chest:2>, <storagedrawers:upgrade_template>, <ironchest:iron_chest:2>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ironchest:iron_chest:1>, <storagedrawers:upgrade_template>, <ironchest:iron_chest:1>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ironchest:iron_chest>, <storagedrawers:upgrade_template>, <ironchest:iron_chest>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

#storage key
recipes.remove(<storagedrawers:drawer_key>);
recipes.addShaped(<storagedrawers:drawer_key>, [[<ore:nuggetGold>, <ore:ingotGold>], [null, <ore:ingotGold>], [null, <ore:ingotGold>]]);

#compacting drawer
recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped(<storagedrawers:compdrawers>, [[<ore:craftingPiston>, <ore:drawerBasic>, <ore:craftingPiston>], [<ore:craftingPiston>, <ore:compressed3xCobblestone>, <ore:craftingPiston>], [<ore:craftingPiston>, <ore:drawerBasic>, <ore:craftingPiston>]]);

#drawer controller and slave
recipes.remove(<storagedrawers:controllerslave>);
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controllerslave>, [[<ore:drawerBasic>, <forestry:thermionic_tubes:3>, <ore:drawerBasic>], [<forestry:chipsets>, <ore:blockIron>, <forestry:chipsets>], [<ore:drawerBasic>, <forestry:thermionic_tubes:3>, <ore:drawerBasic>]]);
recipes.addShaped(<storagedrawers:controller>, [[<ore:drawerBasic>, <forestry:thermionic_tubes:4>, <ore:drawerBasic>], [<forestry:chipsets:3>, <ore:craftingIndustrialDiamond>, <forestry:chipsets:3>], [<ore:drawerBasic>, <forestry:thermionic_tubes:4>, <ore:drawerBasic>]]);



print("Initialized 'storageDrawers.zs'");