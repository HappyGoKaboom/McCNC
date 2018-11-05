#Name: buildersWands.zs
#Author: Feed the Beast

print("Initializing 'buildersWands.zs'...");

#wands
recipes.remove(<betterbuilderswands:wanddiamond>);
recipes.remove(<betterbuilderswands:wandiron>);
recipes.remove(<betterbuilderswands:wandstone>);
recipes.addShaped(<betterbuilderswands:wanddiamond>, [[null, null, <ore:blockDiamond>], [null, <ore:stickTreatedWood>, null], [<ore:stickTreatedWood>, null, null]]);
recipes.addShaped(<betterbuilderswands:wandiron>, [[null, null, <ore:blockIron>], [null, <ore:stickTreatedWood>, null], [<ore:stickTreatedWood>, null, null]]);
recipes.addShaped(<betterbuilderswands:wandstone>, [[null, null, <ore:compressed2xCobblestone>], [null, <ore:stickTreatedWood>, null], [<ore:stickTreatedWood>, null, null]]);

print("Initialized 'buildersWands.zs'");