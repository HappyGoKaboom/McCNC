#Name: seeds.zs
#Author: Feed the Beast

print("Initializing 'seeds.zs'...");


#remove seeds
vanilla.seeds.removeSeed(<extratrees:hops>);
vanilla.seeds.removeSeed(<natura:overworld_seeds:1>);
vanilla.seeds.removeSeed(<natura:overworld_seeds>);
vanilla.seeds.removeSeed(<immersiveengineering:seed>);

#add seeds
vanilla.seeds.addSeed(<minecraft:carrot> % 2);
vanilla.seeds.addSeed(<minecraft:potato> % 2);
vanilla.seeds.addSeed(<minecraft:beetroot_seeds> % 1);

print("Initialized 'seeds.zs'");