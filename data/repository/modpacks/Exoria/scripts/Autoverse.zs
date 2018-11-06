print("Autoverse");

// Disable Barrels
mods.jei.JEI.removeAndHide(<autoverse:barrel:*>);

// Block Breaker
recipes.remove(<autoverse:breaker>);
recipes.remove(<autoverse:breaker:1>);
recipes.addShaped(<autoverse:breaker>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:chest>, <primal:diamond_pickaxe>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<autoverse:breaker:1>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], [<primal:diamond_pickaxe>, <minecraft:chest>, <primal:diamond_pickaxe>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);