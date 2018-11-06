print("Tinkers Construct");

// Removals
mods.jei.JEI.removeAndHide(<tconstruct:smeltery_controller>);
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:1>);
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:2>);
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:3>);
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:4>);
mods.jei.JEI.removeAndHide(<tconstruct:tooltables:5>);
mods.jei.JEI.removeAndHide(<tconstruct:toolforge:*>);
mods.jei.JEI.removeAndHide(<tconstruct:pattern>);
mods.jei.JEI.removeAndHide(<tconstruct:casting:*>);
mods.jei.JEI.removeAndHide(<tconstruct:stone_torch>);
mods.jei.JEI.removeAndHide(<tconstruct:materials:16>);
mods.jei.JEI.removeAndHide(<tconstruct:materials:14>);
mods.jei.JEI.removeAndHide(<tconstruct:materials:15>);
mods.jei.JEI.removeAndHide(<tconstruct:materials:12>);
mods.jei.JEI.removeAndHide(<tconstruct:materials:13>);
mods.jei.JEI.removeAndHide(<tconstruct:soil:2>);

// Remove Stone Rod in favour of EXN
recipes.remove(<tconstruct:stone_stick>);

// Crafting Station
recipes.remove(<tconstruct:tooltables>);
mods.recipestages.Recipes.addShaped("crafting_knowledge", <tconstruct:tooltables>, [[<minecraft:crafting_table>, <minecraft:crafting_table>],[<ore:stickWood>, <ore:stickWood>]]);

// Disable Drying Rack
mods.jei.JEI.removeAndHide(<tconstruct:rack:1>);

// Ardite Smelting
mods.thermalexpansion.RedstoneFurnace.addRecipe(<tconstruct:ingots:1>, <exnihilocreatio:item_ore_ardite:2>, 1500);

/* Casts
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom>, <tconstruct:materials>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:1>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:1>, <thermalfoundation:material:192>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <thermalfoundation:material:321>, <liquid:gold>, 288, true);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <exnihilocreatio:item_material:7>, <liquid:gold>, 288, true);*/

// Stone
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:materials>);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:seared>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:stone>, null, <liquid:stone>, 72);


// Ingot Casting
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_ingot>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_ingot>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:128>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:129>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:130>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:131>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:132>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:161>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:163>);

// Nugget Casting
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_nugget>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_nugget>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:192>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:193>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:194>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:195>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:196>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:225>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:227>);

// Plate Casting
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:32>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:33>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:320>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:321>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:322>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:323>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:324>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:353>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:355>);

// Gear Casting
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:24>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:25>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:256>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:257>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:258>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:259>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:260>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:289>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:291>);

// Dawnstone Block
mods.tconstruct.Casting.addBasinRecipe(<embers:block_dawnstone>, null, <liquid:dawnstone>, 1296);

// Skyblock Tools
recipes.addShaped(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 1, HarvestLevel: 0, Attack: 1.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.pickaxe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock"], Modifiers: ["cobble_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "cobble_breaker", color: 10000536, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "cobble_breaker", "reinforced"]}), [[<biomesoplenty:gem:6>, <primal:hardened_stone>, <biomesoplenty:gem:6>], [null, <ore:rodStone>, null], [null, <biomesoplenty:gem:4>, null]]);
mods.jei.JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 1, HarvestLevel: 0, Attack: 1.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.pickaxe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock"], Modifiers: ["cobble_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "cobble_breaker", color: 10000536, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "cobble_breaker", "reinforced"]}));

recipes.addShaped(<tconstruct:lumberaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 3.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.axe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock"], Modifiers: ["log_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "log_breaker", color: 9659178, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "log_breaker", "reinforced"]}), [[<biomesoplenty:gem:6>, <primal:hardened_stone>], [<biomesoplenty:gem:6>, <ore:rodStone>], [null, <biomesoplenty:gem:4>]]);
mods.jei.JEI.addItem(<tconstruct:lumberaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 3.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.axe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool"]}, TinkerData: {UsedModifiers: 6, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock"], Modifiers: ["log_breaker", "reinforced", "soulbound"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "log_breaker", color: 9659178, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}], Traits: ["skyblock", "log_breaker", "reinforced"]}));

recipes.addShaped(<tconstruct:scythe>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 1.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.scythe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool", "weapon"]}, TinkerData: {UsedModifiers: 8, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock2"], Modifiers: ["leaf_breaker", "reinforced", "soulbound", "harvestwidth", "harvestheight"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "leaf_breaker", color: 51456, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}, {identifier: "harvestwidth", color: 13301410}, {identifier: "harvestheight", color: 13301410}], Traits: ["skyblock", "leaf_breaker", "reinforced"]}), [[<biomesoplenty:gem:6>, <primal:hardened_stone>], [null, <ore:rodStone>], [null, <biomesoplenty:gem:4>]]);
mods.jei.JEI.addItem(<tconstruct:scythe>.withTag({ench: [{lvl: 1 as short, id: 33 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 3, Durability: 2, HarvestLevel: 0, Attack: 1.0 as float}, Unbreakable: 1 as byte, display: {LocName: "item.tinkerskyblock.scythe"}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.0 as float, FreeModifiers: 0, Durability: 1, HarvestLevel: 0, Attack: 0.0 as float}, Special: {Categories: ["harvest", "tool", "weapon"]}, TinkerData: {UsedModifiers: 8, Materials: ["skyblock2", "skyblock", "skyblock", "skyblock2"], Modifiers: ["leaf_breaker", "reinforced", "soulbound", "harvestwidth", "harvestheight"]}, Modifiers: [{identifier: "skyblock", color: -3652181, level: 1}, {identifier: "leaf_breaker", color: 51456, level: 1}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}, {identifier: "harvestwidth", color: 13301410}, {identifier: "harvestheight", color: 13301410}], Traits: ["skyblock", "leaf_breaker", "reinforced"]}));
