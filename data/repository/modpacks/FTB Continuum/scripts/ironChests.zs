#Name: ironChests.zs
#Author: Feed the Beast

print("Initializing 'ironChests.zs'...");

#disable upgrades due to changed progression and hide from JEI
mods.jei.JEI.removeAndHide(<ironchest:diamond_obsidian_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_obsidian_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:wood_copper_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:wood_iron_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_crystal_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:copper_iron_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:silver_gold_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:copper_silver_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:gold_diamond_chest_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:iron_gold_chest_upgrade>);

#slightly larger chest (ExU)
recipes.remove(<extrautils2:largishchest>);
recipes.addShaped(<extrautils2:largishchest>, [[<ore:logWood>, <ore:logWood>, <ore:logWood>], [<ore:logWood>, <ore:chest>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

#copper
recipes.remove(<ironchest:iron_chest:3>);
recipes.addShaped(<ironchest:iron_chest:3>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotCopper>, <extrautils2:largishchest>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

#iron
recipes.remove(<ironchest:iron_chest>);
recipes.addShaped(<ironchest:iron_chest>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ironchest:iron_chest:3>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

#silver
recipes.remove(<ironchest:iron_chest:4>);
recipes.addShaped(<ironchest:iron_chest:4>, [[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], [<ore:ingotSilver>, <ironchest:iron_chest>, <ore:ingotSilver>], [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);

#gold
recipes.remove(<ironchest:iron_chest:1>);
recipes.addShaped(<ironchest:iron_chest:1>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, <ironchest:iron_chest:4>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

#diamond
recipes.remove(<ironchest:iron_chest:2>);
recipes.addShaped(<ironchest:iron_chest:2>, [[null, <ore:craftingIndustrialDiamond>, null], [<ore:craftingIndustrialDiamond>, <ironchest:iron_chest:1>, <ore:craftingIndustrialDiamond>], [null, <ore:craftingIndustrialDiamond>, null]]);

#crystal
recipes.remove(<ironchest:iron_chest:5>);
recipes.addShaped(<ironchest:iron_chest:5>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <ironchest:iron_chest:2>, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

#obsidian
recipes.remove(<ironchest:iron_chest:6>);
recipes.addShaped(<ironchest:iron_chest:6>, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>], [<ore:obsidian>, <ironchest:iron_chest:5>, <ore:obsidian>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);
recipes.addShaped(<ironchest:iron_chest:6>, [[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>], [<ore:obsidian>, <ironchest:iron_chest:2>, <ore:obsidian>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

print("Initialized 'ironChests.zs'");
