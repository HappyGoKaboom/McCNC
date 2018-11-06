print("Modular Machinery");

recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotCopper>, null, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>, [[<immcraft:chest>], [<modularmachinery:blockcasing>]]);
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [[<modularmachinery:blockcasing>], [<immcraft:chest>]]);

recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [[<minecraft:chest>], [<modularmachinery:blockcasing>]]);
recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [[<modularmachinery:blockcasing>], [<minecraft:chest>]]);

recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [[<tconstruct:seared_tank>], [<modularmachinery:blockcasing>]]);
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [[<modularmachinery:blockcasing>], [<tconstruct:seared_tank>]]);

recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [[<foundry:refractorytankstandard>], [<modularmachinery:blockcasing>]]);
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [[<modularmachinery:blockcasing>], [<foundry:refractorytankstandard>]]);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<minecraft:lever>], [<modularmachinery:blockcasing>]]);

// Hide unnecessary stuff
mods.jei.JEI.removeAndHide(<modularmachinery:blockcasing:2>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockcasing:4>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyinputhatch>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyinputhatch:1>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyoutputhatch>);
mods.jei.JEI.removeAndHide(<modularmachinery:blockenergyoutputhatch:1>);
mods.jei.JEI.removeAndHide(<modularmachinery:itemmodularium>);
