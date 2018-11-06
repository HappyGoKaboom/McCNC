print("Seeds");

// Removing Seeds
vanilla.seeds.removeSeed(<minecraft:beetroot_seeds>);
vanilla.seeds.removeSeed(<minecraft:carrot>);
vanilla.seeds.removeSeed(<minecraft:melon_seeds>);
vanilla.seeds.removeSeed(<minecraft:potato>);
vanilla.seeds.removeSeed(<minecraft:pumpkin_seeds>);
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);
vanilla.seeds.removeSeed(<actuallyadditions:item_flax_seed>);
vanilla.seeds.removeSeed(<actuallyadditions:item_rice_seed>);
vanilla.seeds.removeSeed(<extratrees:hops>);
vanilla.seeds.removeSeed(<teslathingies:tesla_plant_seeds>);

// Fixing Rates
vanilla.seeds.removeSeed(<minecraft:dye:3>);
vanilla.seeds.removeSeed(<immersiveengineering:seed>);
vanilla.seeds.removeSeed(<botania:overgrowthseed>);
vanilla.seeds.addSeed(<minecraft:dye:3> % 1000);
vanilla.seeds.addSeed(<immersiveengineering:seed> % 1000);
vanilla.seeds.addSeed(<xlfoodmod:onion> % 1000);
vanilla.seeds.addSeed(<botania:overgrowthseed> % 600);
//vanilla.seeds.addSeed(<endercrop:ender_seeds> % 200);