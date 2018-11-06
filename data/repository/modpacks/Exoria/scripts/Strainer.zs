print("Strainer");

// Base
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<ore:stickWood>, null, <ore:stickWood>], [<ore:plankWood>, <tinkerskyblock:wooden_hopper>, <ore:plankWood>], [<ore:plankWood>, <immcraft:chest>, <ore:plankWood>]]);

// Nets
recipes.remove(<waterstrainer:net:*>);
recipes.addShaped(<waterstrainer:net>, [[<ore:cordagePlant>, null, <ore:cordagePlant>], [null, null, null], [<ore:cordagePlant>, null, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:net>, [[<minecraft:string>, null, <minecraft:string>], [null, null, null], [<minecraft:string>, null, <minecraft:string>]]);
recipes.addShaped(<waterstrainer:net:1>, [[<ore:cordagePlant>, null, <ore:cordagePlant>], [null, <ore:cordagePlant>, null], [<ore:cordagePlant>, null, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:net:1>, [[<minecraft:string>, null, <minecraft:string>], [null, <minecraft:string>, null], [<minecraft:string>, null, <minecraft:string>]]);

// Fisher Strainer Remove
mods.jei.JEI.removeAndHide(<waterstrainer:strainer_fisherman>);
mods.jei.JEI.removeAndHide(<waterstrainer:garden_trowel>);