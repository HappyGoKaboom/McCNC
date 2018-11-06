print("Ceramics");

// Clay Bucket
recipes.removeShaped(<ceramics:unfired_clay>);
recipes.addShaped(<ceramics:unfired_clay>, [[<ore:clayball>, null, <ore:clayball>], [null, <ore:clayball>, null]]);

// Porcelain Clay
recipes.remove(<ceramics:unfired_clay:4>);
recipes.addShapeless(<ceramics:unfired_clay:4>, [<ore:clayball>, <ore:clayball>, <ore:dustQuartz>]);

// Remove Clay Barrels
mods.jei.JEI.removeAndHide(<ceramics:clay_barrel_unfired>);
mods.jei.JEI.removeAndHide(<ceramics:clay_barrel_unfired:1>);
mods.jei.JEI.removeAndHide(<ceramics:clay_barrel>);
mods.jei.JEI.removeAndHide(<ceramics:clay_barrel:1>);