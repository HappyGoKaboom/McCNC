#Name: thermalCultivation.zs
#Author: Feed the Beast

print("Initializing 'thermalCultivation.zs'...");

#coppper watering can
recipes.remove(<thermalcultivation:watering_can>);
recipes.addShaped(<thermalcultivation:watering_can>, [[<ore:ingotCopper>, null, null], [<ore:ingotCopper>, <actuallyadditions:item_crystal_empowered:3>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]);

print("Initialized 'thermalCultivation.zs'");