#Name: quark.zs
#Author: Feed the Beast

print("Initializing 'quark.zs'...");

#wither ash
recipes.addShaped(<minecraft:skull:1>, [[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>], [<quark:black_ash>, <minecraft:skull>, <quark:black_ash>], [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]]);

#chute
recipes.remove(<quark:chute>);
recipes.addShaped(<quark:chute>, [[<ore:plankWood>, null, <ore:plankWood>],[<ore:plankWood>, null, <ore:plankWood>], [null, <ore:plankWood>, null]]);

print("Initialized 'quark.zs'");