print("Futurepack");

// Metal Block
mods.recipestages.Recipes.addShaped("research_knowledge", <fp:color_iron:8>, [[<immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:1>, <immersiveengineering:sheetmetal:9>], [<immersiveengineering:sheetmetal:1>, null, <immersiveengineering:sheetmetal:1>], [<immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:1>, <immersiveengineering:sheetmetal:9>]]);

// Magnetite
recipes.removeShapeless(<fp:itemerze:4>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<primal:magnetite_dust>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<fp:erze:4>, <thermalfoundation:material:865>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<fp:erze:4>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<fp:erze:4>, <minecraft:sand>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<fp:itemerze:4>);

// Bauxite recipe for completionists
mods.thermalexpansion.InductionSmelter.addRecipe(<fp:erze:3>, <thermalfoundation:storage:4>, <minecraft:stone>, 5000);

// Glowtite Dupe Prevention
<ore:blockMenelausCrytals>.remove(<fp:cristall:6>);