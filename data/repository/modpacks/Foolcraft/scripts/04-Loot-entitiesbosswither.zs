import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//Value
val wither = LootTables.getTable("minecraft:entities/boss/wither");

//Create 2 tables to use
//val main = wither.addPool("main", 1, 1, 1, 1);
val loot = wither.addPool("loot", 1, 1, 1, 1);

//wither loot
loot.addItemEntry(<minecraft:nether_star>, 100);


val loot2 = wither.addPool("loot2", 1, 1, 1, 1);

loot2.addItemEntry(<tp:wither_rib>, 50);