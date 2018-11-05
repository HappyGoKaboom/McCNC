#Name: yabba.zs
#Author: Feed the Beast

print("Initializing 'yabba.zs'...");

#barrel
recipes.remove(<yabba:item_barrel>);
recipes.addShaped(<yabba:item_barrel>, [[<ore:logWood>, <ore:slabWood>, <ore:logWood>], [<ore:logWood>, <ironchest:iron_chest:4>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

#upgrade template (moved into efab)
recipes.remove(<yabba:upgrade_blank>);

#storage upgrades
recipes.remove(<yabba:upgrade_star_tier>);
recipes.remove(<yabba:upgrade_diamond_tier>);
recipes.remove(<yabba:upgrade_gold_tier>);
recipes.remove(<yabba:upgrade_iron_tier>);
recipes.addShaped(<yabba:upgrade_star_tier>, [[<ore:logWood>, <ore:netherStar>, <ore:logWood>], [<ironchest:iron_chest:6>, <yabba:upgrade_blank>, <ironchest:iron_chest:6>], [<ore:logWood>, <ore:netherStar>, <ore:logWood>]]);
recipes.addShaped(<yabba:upgrade_diamond_tier>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ironchest:iron_chest:2>, <yabba:upgrade_blank>, <ironchest:iron_chest:2>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<yabba:upgrade_gold_tier>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ironchest:iron_chest:1>, <yabba:upgrade_blank>, <ironchest:iron_chest:1>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<yabba:upgrade_iron_tier>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ironchest:iron_chest>, <yabba:upgrade_blank>, <ironchest:iron_chest>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);




print("Initialized 'yabba.zs'");