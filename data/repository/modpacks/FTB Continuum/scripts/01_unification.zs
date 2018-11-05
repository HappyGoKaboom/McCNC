#Name: unification.zs
#Author: Feed the Beast

print("Initializing 'unification.zs'...");

#unify crude oil
val crudeOil = <ore:crude_oil>;
crudeOil.add(<thermalfoundation:fluid_crude_oil>);
crudeOil.add(<immersivepetroleum:fluid_crude_oil>);

#unidict remove gear recipes
mods.unidict.removalByKind.get("Crafting").remove("gear", ["tin", "copper", "bronze"]);

#plates force through machines
mods.unidict.removalByKind.get("Crafting").remove("plate");
recipes.remove(<thermalfoundation:material:352>);
recipes.remove(<thermalfoundation:material:353>);
recipes.remove(<thermalfoundation:material:354>);
recipes.remove(<thermalfoundation:material:355>);
recipes.remove(<thermalfoundation:material:356>);
recipes.remove(<thermalfoundation:material:357>);
recipes.remove(<thermalfoundation:material:358>);
recipes.remove(<thermalfoundation:material:359>);
recipes.remove(<thermalfoundation:material:328>);
recipes.remove(<thermalfoundation:material:326>);
recipes.remove(<thermalfoundation:material:325>);
recipes.remove(<thermalfoundation:material:324>);
recipes.remove(<thermalfoundation:material:323>);
recipes.remove(<thermalfoundation:material:322>);
recipes.remove(<thermalfoundation:material:321>);
recipes.remove(<thermalfoundation:material:320>);
recipes.remove(<thermalfoundation:material:33>);
recipes.remove(<thermalfoundation:material:32>);

#add iridium plate to compressor
mods.techreborn.compressor.addRecipe(<thermalfoundation:material:327>, <thermalfoundation:material:135>, 300, 20);

#add dusts to TR grinder
mods.techreborn.grinder.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>, 300, 20);
mods.techreborn.grinder.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>, 300, 20);
mods.techreborn.grinder.addRecipe(<actuallyadditions:item_dust:5>, <minecraft:quartz>, 300, 20);
mods.techreborn.grinder.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>, 300, 20);
mods.techreborn.grinder.addRecipe(<immersiveengineering:metal:14>, <immersiveengineering:metal:5>, 300, 20);
mods.techreborn.grinder.addRecipe(<immersiveengineering:metal:14> * 2, <immersiveengineering:ore:5>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:71>, <thermalfoundation:material:135>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:71> * 2, <thermalfoundation:ore:7>, 300, 20);
mods.techreborn.grinder.addRecipe(<appliedenergistics2:material> * 2, <appliedenergistics2:quartz_ore>, 300, 20);
mods.techreborn.grinder.addRecipe(<appliedenergistics2:material:1> * 2, <appliedenergistics2:charged_quartz_ore>, 300, 20);
mods.techreborn.grinder.addRecipe(<libvulpes:productdust> * 2, <libvulpes:ore0>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:70> * 2, <thermalfoundation:ore:6>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:68> * 2, <thermalfoundation:ore:4>, 300, 20);

#add TF mob drops to TR grinder
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>, 300, 20);
mods.techreborn.grinder.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>, 300, 20);

#adjust iridium output in industrial grinder
#mods.techreborn.industrialGrinder.removeInputRecipe(<ore:oreIridium>);
mods.techreborn.industrialGrinder.removeInputRecipe(<thermalfoundation:ore:7>);
mods.techreborn.industrialGrinder.addRecipe(<thermalfoundation:material:135> * 2, <techreborn:smalldust:38> * 2, null, null, <thermalfoundation:ore:7>, null, <liquid:water> * 1000, 300, 40);

#fluxed plate
mods.techreborn.compressor.addRecipe(<redstonearsenal:material:128>, <redstonearsenal:material:32>, 300, 20);

mods.techreborn.compressor.addRecipe(<thermalfoundation:material:357>, <thermalfoundation:material:165>, 300, 20);
mods.techreborn.compressor.addRecipe(<thermalfoundation:material:359>, <thermalfoundation:material:167>, 300, 20);
mods.techreborn.compressor.addRecipe(<thermalfoundation:material:358>, <thermalfoundation:material:166>, 300, 20);

#silicon
#recipes.addShapeless(<appliedenergistics2:material:5>, [<refinedstorage:silicon>]);
#recipes.addShapeless(<refinedstorage:silicon>, [<appliedenergistics2:material:5>]);

#break down alum/uranium/tugsten block
recipes.addShapeless(<thermalfoundation:material:132> * 9, [<ore:blockAluminum>]);
recipes.addShapeless(<immersiveengineering:metal:5> * 9, [<ore:blockUranium>]);
recipes.addShapeless(<techreborn:ingot:15> * 9, [<ore:blockTungsten>]);

#titanium block
recipes.remove(<techreborn:storage:2>);
recipes.addShapeless(<techreborn:ingot:14> * 9, [<ore:blockTitanium>]);
recipes.addShaped(<techreborn:ingot:14>, [[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>], [<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>], [<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>]]);
recipes.addShapeless(<libvulpes:metal0:7>, [<techreborn:storage:2>]);
recipes.addShapeless(<techreborn:storage:2>, [<libvulpes:metal0:7>]);
recipes.addShapeless(<libvulpes:productingot:7>, [<techreborn:ingot:14>]);
recipes.addShapeless(<techreborn:ingot:14>, [<libvulpes:productingot:7>]);
recipes.addShapeless(<libvulpes:productnugget:7>, [<techreborn:nuggets:14>]);
recipes.addShapeless(<techreborn:nuggets:14>, [<libvulpes:productnugget:7>]);

#fix block/plate compressor recipes
//iron block
mods.techreborn.compressor.removeInputRecipe(<minecraft:iron_block>);
#mods.techreborn.compressor.removeInputRecipe(<ore:blockIron>);
mods.techreborn.compressor.addRecipe(<thermalfoundation:material:32> * 9, <minecraft:iron_block>, 300, 20);
//gold block
mods.techreborn.compressor.removeInputRecipe(<minecraft:gold_block>);
#mods.techreborn.compressor.removeInputRecipe(<ore:blockGold>);
mods.techreborn.compressor.addRecipe(<thermalfoundation:material:33> * 9, <minecraft:gold_block>, 300, 20);

#remove blockMetal from oreDict
val blockMetal = <ore:blockMetal>;
blockMetal.remove(<minecraft:gold_block>, <minecraft:iron_block>);

#remove oreCertusQuartz from oreDict
val oreCertusQuartz = <ore:oreCertusQuartz>;
oreCertusQuartz.remove(<appliedenergistics2:charged_quartz_ore>);

#fix tiny dust crafting
recipes.addShaped(<thermalfoundation:material:70>, [[<ore:dustSmallPlatinum>, <ore:dustSmallPlatinum>], [<ore:dustSmallPlatinum>, <ore:dustSmallPlatinum>]]);
recipes.addShaped(<thermalfoundation:material:65>, [[<ore:dustSmallTin>, <ore:dustSmallTin>], [<ore:dustSmallTin>, <ore:dustSmallTin>]]);
recipes.addShaped(<thermalfoundation:material:1>, [[<ore:dustSmallGold>, <ore:dustSmallGold>], [<ore:dustSmallGold>, <ore:dustSmallGold>]]);
recipes.addShaped(<thermalfoundation:material:67>, [[<ore:dustSmallLead>, <ore:dustSmallLead>], [<ore:dustSmallLead>, <ore:dustSmallLead>]]);
recipes.addShaped(<thermalfoundation:material:66>, [[<ore:dustSmallSilver>, <ore:dustSmallSilver>], [<ore:dustSmallSilver>, <ore:dustSmallSilver>]]);

print("Initialized 'unification.zs'");