#Name: tinkersConstruct.zs
#Author: Feed the Beast

print("Initializing 'tinkersConstruct.zs'...");

#remove crafting station due to dupe bugs
#recipes.remove(<tconstruct:tooltables>);
#<tconstruct:tooltables>.addTooltip(format.darkRed("Disabled due to dupe bugs!"));

#remove blank pattern (moved to eFab)
recipes.remove(<tconstruct:pattern>);

#remove smeltery controller (moved to eFab)
recipes.remove(<tconstruct:smeltery_controller>);

#tool forge
recipes.remove(<tconstruct:toolforge>);
mods.techreborn.rollingMachine.addShaped(<tconstruct:toolforge>.withTag({textureBlock: {id: "techreborn:storage", Count: 1 as byte, Damage: 8 as short}}), [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:blockZinc>, null, <ore:blockZinc>], [<ore:blockZinc>, null, <ore:blockZinc>]]);

#grout
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 4, [[<ore:gravel>, <ore:sand>, <ore:gravel>], [<ore:sand>, <minecraft:clay>, <ore:sand>], [<ore:gravel>, <ore:sand>, <ore:gravel>]]);

#slimeboots
#recipes.remove(<tconstruct:slime_boots>);
#recipes.addShaped(<tconstruct:slime_boots>, [[<tconstruct:edible:30>, <natura:materials:6>, <tconstruct:edible:30>], [<minecraft:slime_ball>, <natura:materials:6>, <minecraft:slime_ball>], [<tconstruct:slime_congealed>, <immersiveengineering:faraday_suit_feet>, <tconstruct:slime_congealed>]]);

#recipes.remove(<tconstruct:slime_boots:1>);
#recipes.addShaped(<tconstruct:slime_boots:1>, [[<tconstruct:edible:31>, <natura:materials:6>, <tconstruct:edible:31>], [<tconstruct:edible:1>, <natura:materials:6>, <tconstruct:edible:1>], [<tconstruct:slime_congealed:1>, <immersiveengineering:faraday_suit_feet>, <tconstruct:slime_congealed:1>]]);

#recipes.remove(<tconstruct:slime_boots:2>);
#recipes.addShaped(<tconstruct:slime_boots:2>, [[<tconstruct:edible:32>, <natura:materials:6>, <tconstruct:edible:32>], [<tconstruct:edible:2>, <natura:materials:6>, <tconstruct:edible:2>], [<tconstruct:slime_congealed:2>, <immersiveengineering:faraday_suit_feet>, <tconstruct:slime_congealed:2>]]);

mods.jei.JEI.removeAndHide(<tconstruct:slime_boots>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:1>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:2>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:3>);
mods.jei.JEI.removeAndHide(<tconstruct:slime_boots:4>);

#recipes.remove(<tconstruct:slime_boots:4>);
#recipes.addShaped(<tconstruct:slime_boots:4>, [[<tconstruct:edible:34>, <natura:materials:6>, <tconstruct:edible:34>], [<tconstruct:edible:4>, <natura:materials:6>, <tconstruct:edible:4>], [<tconstruct:slime_congealed:4>, <immersiveengineering:faraday_suit_feet>, <tconstruct:slime_congealed:4>]]);

#remove slimesling (moved to eFab)
recipes.remove(<tconstruct:slimesling>);

#add wood gear to casting table
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <appliedenergistics2:material:40>, <liquid:gold>, 288);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <appliedenergistics2:material:40>, <liquid:brass>, 144);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <appliedenergistics2:material:40>, <liquid:alubrass>, 144);

#remove advanced alloys from smeltery
mods.tconstruct.Alloy.removeRecipe(<liquid:signalum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:enderium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:lumium>);

#remove plates from smeltery
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:327>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:328>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:352>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:353>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:357>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:356>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:355>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:354>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:359>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:358>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:32>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:33>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:320>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:321>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:322>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:323>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:324>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:325>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:326>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:35>);
mods.tconstruct.Casting.removeTableRecipe(<techreborn:plates:33>);
mods.tconstruct.Casting.removeTableRecipe(<techreborn:plates:17>);

#remove leather from drying rack
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);

#remove copper casing from smeltery
mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <immersiveengineering:bullet>);

print("Initialized 'tinkersConstruct.zs'");