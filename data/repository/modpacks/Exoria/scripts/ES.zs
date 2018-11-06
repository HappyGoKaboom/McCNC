print("Electrostatics");

// Tree Tap
recipes.remove(<electrostatics:tree_tap>);
recipes.addShaped(<electrostatics:tree_tap>, [[null, <botania:dreamwood:1>, null], [<botania:dreamwood:1>, <botania:dreamwood:1>, <botania:dreamwood:1>], [<botania:dreamwood:1>, null, null]]);

// Generator
recipes.remove(<electrostatics:electrostatic_generator>);
recipes.addShaped(<electrostatics:electrostatic_generator>, [[<ore:plateBronze>, <ore:blockRedstone>, <ore:plateBronze>], [<ore:itemRubber>, <minecraft:furnace>, <ore:itemRubber>], [<ore:stone>, <ore:itemRubber>, <ore:stone>]]);