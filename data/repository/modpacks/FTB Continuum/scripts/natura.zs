#Name: natura.zs
#Author: Feed the Beast

print("Initializing 'natura.zs'...");

#remove flour from barley
recipes.remove(<natura:materials:1>);

#add two barley to flour recipe
recipes.addShapeless(<natura:materials:1>, [<natura:materials>, <natura:materials>]);

#add seeds from barley
recipes.addShapeless(<natura:overworld_seeds>, [<ore:cropBarley>]);

#adjust stick output to 2
//overworld woods
recipes.remove(<natura:sticks>);
recipes.addShapeless(<natura:sticks> * 2, [<natura:overworld_planks>, <natura:overworld_planks>]);
recipes.remove(<natura:sticks:8>);
recipes.addShapeless(<natura:sticks:8> * 2, [<natura:overworld_planks:8>, <natura:overworld_planks:8>]);
recipes.remove(<natura:sticks:1>);
recipes.addShapeless(<natura:sticks:1> * 2, [<natura:overworld_planks:1>, <natura:overworld_planks:1>]);
recipes.remove(<natura:sticks:2>);
recipes.addShapeless(<natura:sticks:2> * 2, [<natura:overworld_planks:2>, <natura:overworld_planks:2>]);
recipes.remove(<natura:sticks:3>);
recipes.addShapeless(<natura:sticks:3> * 2, [<natura:overworld_planks:3>, <natura:overworld_planks:3>]);
recipes.remove(<natura:sticks:4>);
recipes.addShapeless(<natura:sticks:4> * 2, [<natura:overworld_planks:4>, <natura:overworld_planks:4>]);
recipes.remove(<natura:sticks:5>);
recipes.addShapeless(<natura:sticks:5> * 2, [<natura:overworld_planks:5>, <natura:overworld_planks:5>]);
recipes.remove(<natura:sticks:6>);
recipes.addShapeless(<natura:sticks:6> * 2, [<natura:overworld_planks:6>, <natura:overworld_planks:6>]);
recipes.remove(<natura:sticks:7>);
recipes.addShapeless(<natura:sticks:7> * 2, [<natura:overworld_planks:7>, <natura:overworld_planks:7>]);
//nether woods
recipes.remove(<natura:sticks:11>);
recipes.addShapeless(<natura:sticks:11> * 2, [<natura:nether_planks:3>, <natura:nether_planks:3>]);
recipes.remove(<natura:sticks:9>);
recipes.addShapeless(<natura:sticks:9> * 2, [<natura:nether_planks>, <natura:nether_planks>]);
recipes.remove(<natura:sticks:12>);
recipes.addShapeless(<natura:sticks:12> * 2, [<natura:nether_planks:1>, <natura:nether_planks:1>]);
recipes.remove(<natura:sticks:10>);
recipes.addShapeless(<natura:sticks:10> * 2, [<natura:nether_planks:2>, <natura:nether_planks:2>]);

#fix string output from cotton
recipes.removeShaped(<minecraft:string>, [[null, null, null],[<natura:materials:3>, <natura:materials:3>, <natura:materials:3>], [null, null, null]]);

print("Initialized 'natura.zs'");