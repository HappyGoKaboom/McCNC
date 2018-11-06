import crafttweaker.oredict.IOreDict;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.RedstoneFurnace;
import mods.chisel.Carving;
import mods.futurepack.zentrifuge;
import mods.mekanism.enrichment;
import mods.techreborn.rollingMachine;
import mods.thermalexpansion.Pulverizer;
import mods.rockycore.Anvil;

#Remove Recipes and Hide Items from JEI
removeAndHide(<techreborn:wind_mill>);
removeAndHide(<techreborn:water_mill>);
removeAndHide(<techreborn:solar_panel:4>);
removeAndHide(<techreborn:solar_panel:3>);
removeAndHide(<techreborn:solar_panel:1>);
removeAndHide(<techreborn:solar_panel:2>);
removeAndHide(<techreborn:solar_panel>);
removeAndHide(<ic2:te:82>);
removeAndHide(<opencomputers:upgrade:4>);
removeAndHide(<stevescarts:cartmodule:49>);
removeAndHide(<mekanism:anchorupgrade>);
hide(<techreborn:chunk_loader>);
hide(<mekanism:enrichediron>);
hide(<mekanism:compressedcarbon>);

#Remove Induction Smelter Steel Recipes
#They are reverse from what is shown in JEI, I don't know why, but its the only way they work
InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:802>);
InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:769> *  4);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:802>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:769> *  4);
InductionSmelter.removeRecipe(<thermalfoundation:material:0>, <thermalfoundation:material:768>);
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768> *  4);

#Remove Mekanism Steel Recipes
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>);
mods.mekanism.infuser.removeRecipe(<ore:dustSteel>);

#Remove Mekanism Compressed Carbon Recipe
enrichment.removeRecipe(<minecraft:coal:0>);
enrichment.removeRecipe(<minecraft:coal:1>);

#Add Missing Redstone Furnace Recipes
RedstoneFurnace.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 2000);
RedstoneFurnace.addRecipe(<techguns:itemshared:55>, <techguns:itemshared:96>, 2000);
RedstoneFurnace.addRecipe(<thermalfoundation:storage_resource:0>, <zettaindustries:blockgraphite>, 2000);

#Attempt to Remove Centrifuge Recipes from Futurepack
zentrifuge.remove((<minecraft:cobblestone> *  32));
zentrifuge.remove(<minecraft:stone:1> *  8);
zentrifuge.remove(<minecraft:stone:3> *  8);
zentrifuge.remove(<minecraft:stone:5> *  8);
zentrifuge.remove(<minecraft:gravel> *  16);

#Overriding the recipes since remmove doesn't work
zentrifuge.add([<minecraft:sand>], <minecraft:gravel>, 0);
zentrifuge.add([<minecraft:gravel>], <minecraft:stone:1>, 0);
zentrifuge.add([<minecraft:gravel>], <minecraft:stone:3>, 0);
zentrifuge.add([<minecraft:gravel>], <minecraft:stone:5>, 0);

#Enrichment Chamber Recipes for Ores
enrichment.addRecipe(<techreborn:ore:0>, <techreborn:dust:23> * 2);
enrichment.addRecipe(<techreborn:ore:4>, <techreborn:dust:5> * 2);
enrichment.addRecipe(<techreborn:ore:5>, <techreborn:dust:39> * 2);
enrichment.addRecipe(<techreborn:ore:6>, <techreborn:dust:11> * 2);
enrichment.addRecipe(<techreborn:ore:7>, <techreborn:dust:50> * 2);
enrichment.addRecipe(<techreborn:ore:8>, <techreborn:dust:55> * 2);
enrichment.addRecipe(<techreborn:ore:11>, <techreborn:dust:48> * 2);
enrichment.addRecipe(<techguns:itemshared:78>, <techreborn:dust:54> * 2);
enrichment.addRecipe(<fp:erze:4>, <fp:dust:12290> * 2);
enrichment.addRecipe(<cavern:cave_block:2>, <fp:dust:16042> * 2);
enrichment.addRecipe(<fp:erze:1>, <techreborn:dust:59> * 2);

#No More Free Quartz
mods.mekanism.combiner.removeRecipe(<minecraft:quartz_ore>);
mods.mekanism.combiner.addRecipe(<minecraft:quartz> * 8, <minecraft:netherrack>, <minecraft:quartz_ore>);

#Remove Efficient Rolling Machine Recipes for Recyclable Items
rollingMachine.removeRecipe(<minecraft:light_weighted_pressure_plate>);
rollingMachine.removeRecipe(<minecraft:minecart>);
rollingMachine.removeRecipe(<minecraft:bucket>);
rollingMachine.removeRecipe(<minecraft:iron_bars>);
rollingMachine.removeRecipe(<minecraft:heavy_weighted_pressure_plate>);
rollingMachine.removeRecipe(<minecraft:iron_door>);

#Remove XP from Dust to Ingot Recipes
furnace.remove(<minecraft:iron_ingot>, <ore:dustIron>);
furnace.remove(<minecraft:gold_ingot>, <ore:dustGold>);
furnace.remove(<thermalfoundation:material:131>, <ore:dustLead>);
furnace.remove(<thermalfoundation:material:136>, <ore:dustMithril>);
furnace.remove(<thermalfoundation:material:135>, <ore:dustIridium>);
furnace.remove(<thermalfoundation:material:134>, <ore:dustPlatinum>);
furnace.remove(<thermalfoundation:material:133>, <ore:dustNickel>);
furnace.remove(<thermalfoundation:material:132>, <ore:dustAluminum>);
furnace.remove(<chinjufumod:item_ingot_alumi>, <fp:dust:32056>);
furnace.remove(<cavern:cave_item:1>, <fp:dust:16042>);
furnace.remove(<mekanism:ingot:1>, <ore:dustOsmium>);
furnace.remove(<techguns:itemshared:98>, <ore:dustUraniumEnriched>);
furnace.remove(<immersiveengineering:material:19>, <ore:dustHOPGraphite>);
furnace.remove(<immersiveengineering:metal:5>, <ore:dustUranium>);
furnace.remove(<fp:itemerze:7>, <fp:dust:2309>);
furnace.remove(<fp:itemerze:6>, <fp:dust:25328>);
furnace.remove(<fp:itemerze:5>, <ore:dustRetium>);
furnace.remove(<fp:itemerze:3>, <ore:dustNeon>);
furnace.remove(<techreborn:ingot:18>, <ore:dustZinc>);
furnace.remove(<fp:itemerze:13>, <fp:dust:2057>);
furnace.remove(<fp:itemerze:11>, <fp:dust:48>);
furnace.remove(<fp:itemerze:10>, <fp:dust:517>);
furnace.remove(<fp:itemerze:9>, <fp:dust:38>);
furnace.remove(<fp:itemerze:8>, <fp:dust:20976>);
furnace.remove(<techreborn:ingot:22>, <fp:dust:142>);
furnace.remove(<techreborn:ingot:21>, <ore:dustMixedMetal>);
furnace.remove(<techreborn:ingot:20>, <fp:dust:22>);
furnace.remove(<techreborn:ingot:19>, <ore:dustRefinedIron>);
furnace.remove(<techreborn:ingot:16>, <fp:dust:3>);
furnace.remove(<techreborn:ingot:17>, <fp:dust:4>);
furnace.remove(<techreborn:ingot:1>, <ore:dustBrass>);
furnace.remove(<mekanism:ingot:3>, <fp:dust:32251>);
furnace.remove(<careerbees:ingredients:10>, <fp:dust:24497>);

furnace.addRecipe(<minecraft:iron_ingot>, <ore:dustIron>);
furnace.addRecipe(<minecraft:iron_ingot>, <mekanism:dust>);
furnace.addRecipe(<mekanism:ingot:1>, <mekanism:dust:2>);
furnace.addRecipe(<minecraft:gold_ingot>, <ore:dustGold>);
furnace.addRecipe(<minecraft:gold_ingot>, <mekanism:dust:1>);
furnace.addRecipe(<minecraft:gold_ingot>, <careerbees:ingredients:5>);
furnace.addRecipe(<minecraft:iron_ingot>, <careerbees:ingredients:4>);
furnace.addRecipe(<thermalfoundation:material:131>, <ore:dustLead>);
furnace.addRecipe(<thermalfoundation:material:136>, <ore:dustMithril>);
furnace.addRecipe(<thermalfoundation:material:135>, <ore:dustIridium>);
furnace.addRecipe(<thermalfoundation:material:134>, <ore:dustPlatinum>);
furnace.addRecipe(<thermalfoundation:material:133>, <ore:dustNickel>);
furnace.addRecipe(<thermalfoundation:material:132>, <ore:dustAluminum>);
furnace.addRecipe(<chinjufumod:item_ingot_alumi>, <fp:dust:32056>, 0);
furnace.addRecipe(<cavern:cave_item:1>, <fp:dust:16042>, 0);
furnace.addRecipe(<mekanism:ingot:1>, <ore:dustOsmium>);
furnace.addRecipe(<techguns:itemshared:98>, <fp:dust:130>);
furnace.addRecipe(<immersiveengineering:material:19>, <ore:dustHOPGraphite>);
furnace.addRecipe(<immersiveengineering:metal:5>, <ore:dustUranium>);
furnace.addRecipe(<fp:itemerze:7>, <fp:dust:2309>, 0);
furnace.addRecipe(<fp:itemerze:6>, <fp:dust:25328>, 0);
furnace.addRecipe(<fp:itemerze:5>, <fp:dust:30171>, 0);
furnace.addRecipe(<fp:itemerze:3>, <fp:dust:7721>, 0);
furnace.addRecipe(<techreborn:ingot:18>, <ore:dustZinc>);
furnace.addRecipe(<fp:itemerze:13>, <fp:dust:2057>, 0);
furnace.addRecipe(<fp:itemerze:11>, <fp:dust:48>, 0);
furnace.addRecipe(<fp:itemerze:10>, <fp:dust:517>, 0);
furnace.addRecipe(<fp:itemerze:9>, <fp:dust:38>, 0);
furnace.addRecipe(<fp:itemerze:8>, <fp:dust:20976>, 0);
furnace.addRecipe(<techreborn:ingot:22>, <fp:dust:142>, 0);
furnace.addRecipe(<techreborn:ingot:21>, <fp:dust:20738>, 0);
furnace.addRecipe(<techreborn:ingot:20>, <fp:dust:22>, 0);
furnace.addRecipe(<techreborn:ingot:19>, <fp:dust:16347>, 0);
furnace.addRecipe(<techreborn:ingot:16>, <fp:dust:3>, 0);
furnace.addRecipe(<techreborn:ingot:17>, <fp:dust:4>, 0);
furnace.addRecipe(<techreborn:ingot:1>, <ore:dustBrass>, 0);
furnace.addRecipe(<mekanism:ingot:3>, <fp:dust:32251>, 0);
furnace.addRecipe(<careerbees:ingredients:10>, <fp:dust:24497>, 0);

#Change TechGuns Recycling Recipes to Induction Smelter
furnace.remove(<minecraft:iron_ingot>, <techguns:itemshared:46>);
furnace.remove(<minecraft:iron_ingot> * 6, <techguns:itemshared:38>);
furnace.remove(<minecraft:iron_ingot> * 5, <techguns:itemshared:99>);
furnace.remove(<techguns:itemshared:84>, <techguns:itemshared:39>);
furnace.remove(<techguns:itemshared:84> * 6, <techguns:itemshared:46>);
furnace.remove(<techguns:itemshared:84> * 5, <techguns:itemshared:101>);
furnace.remove(<techguns:itemshared:83> * 5, <techguns:itemshared:100>);
furnace.remove(<techguns:itemshared:79>, <techguns:itemshared:47>);
furnace.remove(<techguns:itemshared:80>, <techguns:itemshared:48>);
furnace.remove(<techguns:itemshared:81>, <techguns:itemshared:49>);
furnace.remove(<techguns:itemshared:83>, <techguns:itemshared:50>);
furnace.remove(<techguns:itemshared:84>, <techguns:itemshared:51>);
furnace.remove(<techguns:itemshared:82>, <techguns:itemshared:52>);
furnace.remove(<techguns:itemshared:85>, <techguns:itemshared:54>);

InductionSmelter.addRecipe(<minecraft:iron_ingot>, <techguns:itemshared:46>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<minecraft:iron_ingot> * 6, <techguns:itemshared:38>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<minecraft:iron_ingot> * 5, <techguns:itemshared:99>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<techguns:itemshared:84>, <techguns:itemshared:39>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<techguns:itemshared:84> * 6, <techguns:itemshared:46>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<techguns:itemshared:84> * 5, <techguns:itemshared:101>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<thermalfoundation:material:160> * 5, <techguns:itemshared:100>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);

#Change Horse Armor Recipes to Match Recylcer Ouput
recipes.remove(<minecraft:iron_horse_armor>);
recipes.remove(<minecraft:golden_horse_armor>);
recipes.remove(<minecraft:diamond_horse_armor>);

recipes.addShaped("iron_horsearmor", <minecraft:iron_horse_armor>, [[<ore:ingotIron, <ore:ingotIron>, <ore:ingotIron>], [<ore:leather>, <ore:blockWool>, <ore:leather>], [<ore:ingotIron, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped("golden_horsearmor", <minecraft:golden_horse_armor>, [[<ore:ingotGold, <ore:ingotGold>, <ore:ingotGold>], [<ore:leather>, <ore:blockWool>, <ore:leather>], [<ore:ingotGold, <ore:ingotGold>, <ore:ingotGold>]]);
recipes.addShaped("diamond_horsearmor", <minecraft:diamond_horse_armor>, [[<ore:gemDiamond, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:leather>, <ore:blockWool>, <ore:leather>], [<ore:gemDiamond, <ore:gemDiamond>, <ore:gemDiamond>]]);

InductionSmelter.removeRecipe(<minecraft:iron_horse_armor>, <minecraft:sand>);
InductionSmelter.removeRecipe(<minecraft:golden_horse_armor>, <minecraft:sand>);
InductionSmelter.addRecipe(<minecraft:iron_ingot> * 6, <minecraft:iron_horse_armor>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);
InductionSmelter.addRecipe(<minecraft:gold_ingot> * 6, <minecraft:golden_horse_armor>, <minecraft:sand>, 6000, <thermalfoundation:material:864>, 25);

Pulverizer.removeRecipe(<minecraft:diamond_horse_armor>);
Pulverizer.addRecipe(<minecraft:diamond> * 6, <minecraft:diamond_horse_armor>, 6000);

#Remove Mending Recipes
Anvil.remove([<prefab:item_bulldozer>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<prefab:item_instant_bridge>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<prefab:item_villager_houses>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:handcannon>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:sawedoff>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:revolver>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:goldenrevolver>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:thompson>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:ak47>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:boltaction>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:m4>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:m4_infiltrator>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:pistol>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:combatshotgun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:mac10>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:flamethrower>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:rocketlauncher>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:grimreaper>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:grenadelauncher>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:aug>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:netherblaster>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:biogun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:teslagun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:lmg>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:minigun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:as50>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:vector>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:scar>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:lasergun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:blasterrifle>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:scatterbeamrifle>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:sonicshotgun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:pdw>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:pulserifle>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:mibgun>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:alienblaster>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:powerhammer>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:chainsaw>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:nucleardeathray>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:gaussrifle>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:guidedmissilelauncher>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:miningdrill>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:tfg>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:antigravpack>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:jetpack>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:jumppack>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:scubatanks>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:gasmask>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:nightvisiongoggles>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);
Anvil.remove([<techguns:tacticalmask>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 70 as short})]);

#Fix Jack-O-Lantern
recipes.addShapeless("lit_pumpkin", <minecraft:lit_pumpkin>, [<minecraft:torch>, <minecraft:pumpkin>]);

#Attempt to fix natura recipes
recipes.removeByRecipeName("minecraft:stick");
recipes.addShapedMirrored("stick", <minecraft:stick> * 4, [[<ore:plankWood>], [<ore:plankWood>]]);

recipes.removeByRecipeName("minecraft:wooden_pressure_plate");
recipes.addShapedMirrored("wooden_pressure_plate", <minecraft:wooden_pressure_plate>, [[<ore:plankWood>, <ore:plankWood>]]);

recipes.removeByRecipeName("minecraft:trapdoor");
recipes.addShapedMirrored("wooden_trapdoor", <minecraft:trapdoor>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

recipes.removeByRecipeName("minecraft:wooden_button");
recipes.addShapeless("wooden_button", <minecraft:wooden_button>, [<ore:plankWood>]);

#Fix Dungeon Key Blueprints
recipes.addShapeless("dungeon_key_1", <fp:research_blueprint>.withTag({research: "story.dungeon_1"}), [<minecraft:paper>.withTag({display: {Lore: ["This should be the Blueprint with enalbes you", "1xitem.spaceship@21"], Name: "This should be a Blueprint"}})]);
recipes.addShapeless("dungeon_key_2", <fp:research_blueprint>.withTag({research: "story.dungeon_2"}), [<minecraft:paper>.withTag({display: {Lore: ["This should be the Blueprint with enalbes you", "1xitem.spaceship@22"], Name: "This should be a Blueprint"}})]);
recipes.addShapeless("dungeon_key_3", <fp:research_blueprint>.withTag({research: "story.dungeon_3"}), [<minecraft:paper>.withTag({display: {Lore: ["This should be the Blueprint with enalbes you", "1xitem.spaceship@23"], Name: "This should be a Blueprint"}})]);

#Wooden Gear Conflict
recipes.removeByRecipeName("teslacorelib:gear_wood_1");

#OreDictionary
<ore:dustSulfur>.add(<drpmedieval:ore_chunk_sulfur>);

#Nerf Prefab Bulldozer
Anvil.remove(<prefab:block_compressed_stone:2>);

Anvil.remove([<prefab:item_bulldozer>, <minecraft:enchanted_book>.withTag({lvl: 1 as short, id: 34 as short})]);
Anvil.remove([<prefab:item_bulldozer>, <minecraft:enchanted_book>.withTag({lvl: 2 as short, id: 34 as short})]);
Anvil.remove([<prefab:item_bulldozer>, <minecraft:enchanted_book>.withTag({lvl: 3 as short, id: 34 as short})]);

Anvil.addRecipe(<prefab:item_bulldozer>.withTag({id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), <prefab:block_compressed_stone:2>, <prefab:item_bulldozer>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), 39);

Anvil.addRecipe(<prefab:item_bulldozer:1>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), <prefab:block_compressed_stone:2>, <prefab:item_bulldozer>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), 39);
Anvil.addRecipe(<prefab:item_bulldozer:2>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), <prefab:block_compressed_stone:2>, <prefab:item_bulldozer>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), 39);
Anvil.addRecipe(<prefab:item_bulldozer:3>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), <prefab:block_compressed_stone:2>, <prefab:item_bulldozer>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), 39);
Anvil.addRecipe(<prefab:item_bulldozer:4>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), <prefab:block_compressed_stone:2>, <prefab:item_bulldozer>.withTag({prefab: {powered: 1 as byte}, id: "prefab:item_bulldozer", Count: 1 as byte, Damage: 0 as short}), 39);

#Add Chisel Recipes for RC Roads
Carving.addGroup("White Lines");
Carving.addGroup("Yellow Lines");

Carving.addVariation("White Lines", <rcroads:line11>);
Carving.addVariation("White Lines", <rcroads:line111>);
Carving.addVariation("White Lines", <rcroads:line112>);
Carving.addVariation("White Lines", <rcroads:line12>);
Carving.addVariation("White Lines", <rcroads:line121>);
Carving.addVariation("White Lines", <rcroads:line13>);
Carving.addVariation("White Lines", <rcroads:line131>);
Carving.addVariation("White Lines", <rcroads:line132>);
Carving.addVariation("White Lines", <rcroads:line133>);
Carving.addVariation("White Lines", <rcroads:line1d11>);
Carving.addVariation("White Lines", <rcroads:line1d12>);
Carving.addVariation("White Lines", <rcroads:line1d13>);
Carving.addVariation("White Lines", <rcroads:line1141>);
Carving.addVariation("White Lines", <rcroads:line1142>);
Carving.addVariation("White Lines", <rcroads:line1181>);
Carving.addVariation("White Lines", <rcroads:line1182>);
Carving.addVariation("White Lines", <rcroads:line1183>);
Carving.addVariation("White Lines", <rcroads:line1184>);
Carving.addVariation("White Lines", <rcroads:line1185>);
Carving.addVariation("White Lines", <rcroads:line1186>);
Carving.addVariation("White Lines", <rcroads:line1187>);
Carving.addVariation("White Lines", <rcroads:line1188>);
Carving.addVariation("White Lines", <rcroads:line1189>);
Carving.addVariation("White Lines", <rcroads:line11810>);
Carving.addVariation("White Lines", <rcroads:line11811>);
Carving.addVariation("White Lines", <rcroads:line11812>);
Carving.addVariation("White Lines", <rcroads:bus>);
Carving.addVariation("White Lines", <rcroads:pedestrian>);
Carving.addVariation("White Lines", <rcroads:stop>);

Carving.addVariation("Yellow Lines", <rcroads:line11a>);
Carving.addVariation("Yellow Lines", <rcroads:line111a>);
Carving.addVariation("Yellow Lines", <rcroads:line112a>);
Carving.addVariation("Yellow Lines", <rcroads:line113a>);
Carving.addVariation("Yellow Lines", <rcroads:line13a>);
Carving.addVariation("Yellow Lines", <rcroads:line131a>);
Carving.addVariation("Yellow Lines", <rcroads:line132a>);
Carving.addVariation("Yellow Lines", <rcroads:line133a>);
Carving.addVariation("Yellow Lines", <rcroads:line1181a>);
Carving.addVariation("Yellow Lines", <rcroads:line1182a>);
Carving.addVariation("Yellow Lines", <rcroads:line1183a>);
Carving.addVariation("Yellow Lines", <rcroads:line1184a>);
Carving.addVariation("Yellow Lines", <rcroads:line1185a>);
Carving.addVariation("Yellow Lines", <rcroads:line1186a>);
Carving.addVariation("Yellow Lines", <rcroads:line11811a>);
Carving.addVariation("Yellow Lines", <rcroads:line11812a>);
Carving.addVariation("Yellow Lines", <rcroads:busa>);
Carving.addVariation("Yellow Lines", <rcroads:pedestriana>);
Carving.addVariation("Yellow Lines", <rcroads:stopa>);
Carving.addVariation("Yellow Lines", <rcroads:line1d11a>);
Carving.addVariation("Yellow Lines", <rcroads:line14>);
Carving.addVariation("Yellow Lines", <rcroads:line141>);
Carving.addVariation("Yellow Lines", <rcroads:line142>);

#Add Chisel Recipes for Futurepack Colored Metal Blocks
Carving.addGroup("Colored Metal Blocks");
Carving.addGroup("Colored Metal Vents");
Carving.addGroup("Colored Metal Grid Blocks");
Carving.addGroup("Colored Metal Glass");
Carving.addGroup("Colored Metal Stairs");
Carving.addGroup("Colored Metal Gates");
Carving.addGroup("Colored Metal Fences");
Carving.addGroup("Colored Metal Grids");
Carving.addGroup("Colored Metal Grid Stairs");

Carving.addVariation("Colored Metal Blocks", <fp:color_iron:0>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:1>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:2>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:3>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:4>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:5>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:6>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:7>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:8>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:9>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:10>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:11>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:12>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:13>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:14>);
Carving.addVariation("Colored Metal Blocks", <fp:color_iron:15>);

Carving.addVariation("Colored Metal Vents", <fp:color_luftung:0>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:1>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:2>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:3>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:4>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:5>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:6>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:7>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:8>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:9>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:10>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:11>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:12>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:13>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:14>);
Carving.addVariation("Colored Metal Vents", <fp:color_luftung:15>);

Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:0>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:1>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:2>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:3>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:4>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:5>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:6>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:7>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:8>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:9>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:10>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:11>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:12>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:13>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:14>);
Carving.addVariation("Colored Metal Grid Blocks", <fp:color_gitter:15>);

Carving.addVariation("Colored Metal Glass", <fp:color_glas:0>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:1>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:2>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:3>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:4>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:5>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:6>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:7>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:8>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:9>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:10>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:11>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:12>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:13>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:14>);
Carving.addVariation("Colored Metal Glass", <fp:color_glas:15>);

Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair0>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair1>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair2>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair3>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair4>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair5>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair6>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair7>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair8>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair9>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair10>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair11>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair12>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair13>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair14>);
Carving.addVariation("Colored Metal Stairs", <fp:color_iron_stair15>);

Carving.addVariation("Colored Metal Gates", <fp:color_gate_0>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_1>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_2>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_3>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_4>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_5>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_6>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_7>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_8>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_9>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_10>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_11>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_12>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_13>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_14>);
Carving.addVariation("Colored Metal Gates", <fp:color_gate_15>);

Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:0>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:1>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:2>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:3>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:4>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:5>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:6>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:7>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:8>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:9>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:10>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:11>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:12>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:13>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:14>);
Carving.addVariation("Colored Metal Fences", <fp:color_iron_fence:15>);

Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:0>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:1>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:2>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:3>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:4>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:5>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:6>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:7>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:8>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:9>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:10>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:11>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:12>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:13>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:14>);
Carving.addVariation("Colored Metal Grids", <fp:color_gitter_pane:15>);

Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair0>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair1>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair2>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair3>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair4>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair5>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair6>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair7>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair8>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair9>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair10>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair11>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair12>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair13>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair14>);
Carving.addVariation("Colored Metal Grid Stairs", <fp:color_gitter_stair15>);
