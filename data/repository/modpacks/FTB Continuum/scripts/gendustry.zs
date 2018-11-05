#Name: gendustry.zs
#Author: Feed the Beast

print("Initializing 'gendustry.zs'...");

#power module (moved into efab)
recipes.remove(<gendustry:power_module>);

#upgrade frame (moved into efab)
recipes.remove(<gendustry:upgrade_frame>);

#bee receptacle (moved into efab)
recipes.remove(<gendustry:bee_receptacle>);

print("Initialized 'gendustry.zs'");