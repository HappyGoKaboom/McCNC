import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

//Value
val dragon = LootTables.getTable("minecraft:entities/boss/dragon");

//Create 2 tables to use
//val main = dragon.addPool("main", 1, 1, 1, 1);
val loot = dragon.addPool("loot", 1, 1, 1, 1);

//dragon loot
loot.addItemEntry(<minecraft:dragon_egg>, 100);
loot.addItemEntry(<minecraft:skull:5>, 30);
loot.addItemEntry(<minecraft:dragon_breath>, 15);