print("Food");

mods.jei.JEI.removeAndHide(<xlfoodmod:bucket_of_fried_chicken>);

// Salt
furnace.addRecipe(<xlfoodmod:salt> * 4, <minecraft:potion>.withTag({Potion: "minecraft:water"}));

// Dough Clay Bucket
recipes.addShaped(<xlfoodmod:dough> * 8, [[<minecraft:wheat>, <minecraft:wheat>, null], [<minecraft:wheat>, <minecraft:wheat>, null], [null, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), null]]); 

// Paper Cup
recipes.remove(<xlfoodmod:paper_cup>);
recipes.addShaped(<xlfoodmod:paper_cup> * 3, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
