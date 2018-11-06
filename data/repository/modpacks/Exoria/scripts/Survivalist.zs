print("Survivalist");

// Chopping Block
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log>,<minecraft:planks>,2);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log:1>,<minecraft:planks:1>,2);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log:2>,<minecraft:planks:2>,2);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log:3>,<minecraft:planks:3>,2);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log2>,<minecraft:planks:4>,2);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:log2:1>,<minecraft:planks:5>,2);
recipes.remove(<terraqueous:planks:*>);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk1>,<terraqueous:planks>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk1:1>,<terraqueous:planks:1>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk1:2>,<terraqueous:planks:2>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk1:3>,<terraqueous:planks:3>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk1:4>,<terraqueous:planks:4>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk2>,<terraqueous:planks:5>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk2:1>,<terraqueous:planks:6>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk2:2>,<terraqueous:planks:7>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk2:3>,<terraqueous:planks:8>,2);
gigaherz.survivalist.Choppable.addRecipe(<terraqueous:trunk2:4>,<terraqueous:planks:9>,2);
gigaherz.survivalist.Choppable.addRecipe(<ore:treeLeaves>,<primal:plant_fiber>,1);
gigaherz.survivalist.Choppable.addRecipe(<primal:planks:2>,<primal:lacquer_stick>,2);

// Drying Rack
gigaherz.survivalist.Dryable.addRecipe(<biomesoplenty:mud>,<primal:terraclay_clump>,600);
gigaherz.survivalist.Dryable.addRecipe(<primal:thatching_wet>,<primal:thatching_dry>,600);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:clay>,<tconstruct:dried_clay>,2400);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:clay_ball>,<tconstruct:materials:2>,600);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:tallgrass:1>,<minecraft:deadbush>,600);

// Fish
gigaherz.survivalist.Dryable.addRecipe(<minecraft:fish>,<primal:fish_cod_dried>,600);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:fish:1>,<primal:fish_salmon_dried>,600);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:fish:2>,<primal:fish_clown_dried>,600);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:fish:3>,<primal:fish_puffer_dried>,600);

// Remove Survivalist Tools
mods.jei.JEI.removeAndHide(<survivalist:hatchet>);
mods.jei.JEI.removeAndHide(<survivalist:pick>);
mods.jei.JEI.removeAndHide(<survivalist:spade>);

// Fix Gravel recipe
recipes.remove(<minecraft:gravel>);
recipes.addShaped(<minecraft:gravel>, [[<ore:lumpGravel>, <ore:lumpGravel>], [<ore:lumpGravel>, <ore:lumpGravel>]]);
recipes.addShaped(<minecraft:gravel>, [[<survivalist:rock>, <survivalist:rock>], [<survivalist:rock>, <survivalist:rock>]]);

recipes.remove(<survivalist:sawmill>);
recipes.addShaped(<survivalist:sawmill>, [[<primal:slat_iron>.noReturn(), <primal:slat_iron>.noReturn(), <primal:slat_iron>.noReturn()], [<ore:gearBronze>.noReturn(), <primal:diamond_saw>.noReturn(), <ore:gearBronze>.noReturn()], [<minecraft:piston>.noReturn(), <minecraft:furnace>.noReturn(), <minecraft:piston>.noReturn()]]);


