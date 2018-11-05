#Name: advancedRocketry.zs
#Author: Feed the Beast

print("Initializing 'advancedRocketry.zs'...");

#machine structure
recipes.remove(<libvulpes:structuremachine>);
mods.extrautils2.Resonator.add(<libvulpes:structuremachine>, <techreborn:machine_frame>, 4800);

#advanced machine structure
recipes.remove(<libvulpes:advstructuremachine>);
recipes.addShaped(<libvulpes:advstructuremachine>, [[<ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>], [<ore:stickTitanium>, <libvulpes:structuremachine>, <ore:stickTitanium>], [<ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>]]);


print("Initialized 'advancedRocketry.zs'");