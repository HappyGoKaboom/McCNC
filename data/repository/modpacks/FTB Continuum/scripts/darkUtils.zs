#Name: darkUtils.zs
#Author: Feed the Beast

print("Initializing 'darkUtils.zs'...");

#vector plate
recipes.remove(<darkutils:trap_move>);
recipes.addShaped(<darkutils:trap_move> * 8, [[null, <forestry:thermionic_tubes:11>, null], [<ore:dustRedstone>, <ore:slimeball>, <ore:dustRedstone>], [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

#timer
recipes.remove(<darkutils:timer>);
recipes.addShaped(<darkutils:timer>, [[<minecraft:stone_slab>, <actuallyadditions:item_crystal_empowered>, <minecraft:stone_slab>], [<actuallyadditions:item_crystal_empowered>, <minecraft:clock>, <actuallyadditions:item_crystal_empowered>], [<minecraft:stone_slab>, <actuallyadditions:item_crystal_empowered>, <minecraft:stone_slab>]]);

#sleep charm
recipes.remove(<darkutils:charm_sleep>);
recipes.addShaped(<darkutils:charm_sleep>, [[<harvestcraft:hardenedleatheritem>, <ore:stickTreatedWood>, <harvestcraft:hardenedleatheritem>], [<ore:stickTreatedWood>, <ore:blockWool>, <ore:stickTreatedWood>], [<harvestcraft:hardenedleatheritem>, <ore:stickTreatedWood>, <harvestcraft:hardenedleatheritem>]]);

#traps
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:3>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:2>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:1>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:7>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:6>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:5>);
mods.jei.JEI.removeAndHide(<darkutils:trap_tile:4>);



print("Initialized 'darkUtils.zs'");