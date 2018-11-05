#Name: engineersWorkshop.zs
#Author: Feed the Beast

print("Initializing 'engineersWorkshop.zs'...");


#chest upgrade
recipes.remove(<engineersworkshop:upgrade:2>);
recipes.addShapeless(<engineersworkshop:upgrade:2>, [<engineersworkshop:upgrade>, <ironchest:iron_chest:3>]);

#upgrades
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:9>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:8>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:7>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:3>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:5>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:1>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:6>);
mods.jei.JEI.removeAndHide(<engineersworkshop:upgrade:4>);

print("Initialized 'engineersWorkshop.zs'");