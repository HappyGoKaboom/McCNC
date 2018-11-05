#Name: harvestcraft.zs
#Author: Feed the Beast

print("Initializing 'harvestcraft.zs'...");

#shipping bin
recipes.remove(<harvestcraft:shippingbin>);
mods.actuallyadditions.Empowerer.addRecipe(<harvestcraft:shippingbin>, <immersiveengineering:wooden_device0>, <harvestcraft:garlicitem>, <harvestcraft:cactusfruititem>, <harvestcraft:seaweeditem>, <harvestcraft:kiwiitem>, 1000, 200);

#force pressed wax to capsule recipe
recipes.addShaped(<forestry:capsule> * 3, [[null, null, null], [<harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>], [null, null, null]]);

print("Initialized 'harvestcraft.zs'");