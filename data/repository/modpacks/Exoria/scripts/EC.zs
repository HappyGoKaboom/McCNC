print("Extended Crafting");

// Disable Vanilla Tables
mods.jei.JEI.removeAndHide(<extendedcrafting:crafting_table>);
mods.jei.JEI.removeAndHide(<extendedcrafting:handheld_table>);

// Rename
<extendedcrafting:storage>.displayName = "Block of Tungstensteel";
<extendedcrafting:trimmed:0>.displayName = "Block of Tungstensteel";
<extendedcrafting:trimmed:1>.displayName = "Block of Tungstensteel";
<extendedcrafting:trimmed:2>.displayName = "Block of Tungstensteel";
<extendedcrafting:trimmed:3>.displayName = "Block of Tungstensteel";
<extendedcrafting:trimmed:4>.displayName = "Block of Tungstensteel";
<extendedcrafting:frame>.displayName = "Tungstensteel Frame";
<extendedcrafting:lamp>.displayName = "Tungstensteel Lamp";
<extendedcrafting:lamp:1>.displayName = "Tungstensteel Lamp";
<extendedcrafting:material>.displayName = "Tungstensteel Ingot";
<extendedcrafting:material:1>.displayName = "Tungstensteel Nugget";
<extendedcrafting:material:2>.displayName = "Tungstensteel Plate";
<extendedcrafting:material:3>.displayName = "Tungstensteel Rod";

// Tungstensteel
mods.immersiveengineering.AlloySmelter.addRecipe(<extendedcrafting:material>, <ore:ingotTungsten>, <ore:ingotSteel>, 800);
recipes.removeShapeless(<extendedcrafting:material>);
recipes.addShapeless(<extendedcrafting:material> * 9, [<extendedcrafting:storage>]);

// Portal
mods.extendedcrafting.TableCrafting.addShaped(<mist:portal_base>, [[<botania:dreamwood>, <forestry:royal_jelly>, <botania:dreamwood>], [<roots:runestone>, <botania:spark>, <roots:runestone>], [<roots:runestone>, <roots:runestone>, <roots:runestone>]]); 
mods.extendedcrafting.TableCrafting.addShaped(<mist:portal_base:1>, [[<roots:runestone>, <roots:runestone>, <roots:runestone>], [<roots:runestone>, <botania:spark>, <roots:runestone>], [<botania:dreamwood>, <forestry:royal_jelly>, <botania:dreamwood>]]); 

// Crafting Table 
recipes.remove(<extendedcrafting:table_basic>);
recipes.addShaped(<extendedcrafting:table_basic>, [[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>], [<tconstruct:tooltables>, <forestry:chipsets:2>, <tconstruct:tooltables>], [<extendedcrafting:material:14>, <extendedcrafting:material:2>, <extendedcrafting:material:14>]]);

// Hide unnecessary stuff
mods.jei.JEI.removeAndHide(<extendedcrafting:crafting_core>);
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_alternator>);
mods.jei.JEI.removeAndHide(<extendedcrafting:ender_crafter>);
mods.jei.JEI.removeAndHide(<extendedcrafting:compressor>);
