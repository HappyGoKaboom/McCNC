#Name: chestTransporter.zs
#Author: Feed the Beast

print("Initializing 'chestTransporter.zs'...");

#remove extra transporters
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_iron>);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_silver>);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_gold>);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_tin>);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_copper>);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter>);

#obsidian transporter
recipes.remove(<chesttransporter:chesttransporter_obsidian>);
recipes.addShaped(<chesttransporter:chesttransporter_obsidian>, [[<minecraft:obsidian>, null, <minecraft:obsidian>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], [null, <ore:stickTreatedWood>, null]]);

#diamond transporter (can move spawners)
recipes.remove(<chesttransporter:chesttransporter_diamond>);
recipes.addShaped(<chesttransporter:chesttransporter_diamond>, [[<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>], [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>], [null, <ore:stickTreatedWood>, null]]);

print("Initialized 'chestTransporter.zs'");