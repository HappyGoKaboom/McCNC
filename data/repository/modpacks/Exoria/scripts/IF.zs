print("Industrial Foregoing");

// Disable Gears
recipes.remove(<teslacorelib:gear_wood>);
recipes.remove(<teslacorelib:gear_diamond>);

// Disable Machine Case
recipes.remove(<teslacorelib:machine_case>);

// Disable Petrified Fuel Generator
mods.jei.JEI.removeAndHide(<industrialforegoing:petrified_fuel_generator>);

// Disable Laser
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_base>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_drill>);

// Fix Spider Eye recipes
recipes.remove(<industrialforegoing:protein_generator>);
recipes.addShaped(<industrialforegoing:protein_generator>, [[<industrialforegoing:plastic>, <minecraft:furnace>, <industrialforegoing:plastic>], [<minecraft:piston>, <industrialforegoing:biofuel_generator>, <minecraft:piston>], [<minecraft:fish:*>, <minecraft:piston>, <minecraft:fish:*>]]);
recipes.remove(<industrialforegoing:bioreactor>);
recipes.addShaped(<industrialforegoing:bioreactor>, [[<industrialforegoing:plastic>, <ore:treeSapling>, <industrialforegoing:plastic>], [<ore:slimeball>, <teslacorelib:machine_case>, <ore:slimeball>], [<minecraft:brick>, <minecraft:sugar>, <minecraft:brick>]]);

// Remove Pink Slimeball Oredict
<ore:slimeball>.remove(<industrialforegoing:pink_slime>);

// Mob Imprisonment Tool
recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.addShaped(<industrialforegoing:mob_imprisonment_tool>, [[null, <industrialforegoing:plastic>, null], [<industrialforegoing:plastic>, <botania:manaresource:8>, <industrialforegoing:plastic>], [null, <industrialforegoing:plastic>, null]]);

// Powered Thingies Diamond Tool Replace
recipes.remove(<teslathingies:crop_cloner>);
recipes.addShaped(<teslathingies:crop_cloner>, [[<ore:blockRedstone>, <primal:diamond_hoe>, <ore:blockRedstone>], [<ore:dirt>, <teslacorelib:machine_case>, <ore:dirt>], [<ore:plankWood>, <ore:gearIron>, <ore:plankWood>]]);
recipes.remove(<teslathingies:electric_butcher>);
recipes.addShaped(<teslathingies:electric_butcher>, [[<ore:plankWood>, <actuallyadditions:item_sword_emerald>, <ore:plankWood>], [<ore:plankWood>, <teslacorelib:machine_case>, <ore:plankWood>], [<ore:plankWood>, <ore:gearIron>, <ore:plankWood>]]);
recipes.remove(<teslathingies:crop_farm>);
recipes.addShaped(<teslathingies:crop_farm>, [[<minecraft:wheat_seeds>, <primal:diamond_hoe>, <minecraft:wheat_seeds>], [<minecraft:wheat_seeds>, <teslacorelib:machine_case>, <minecraft:wheat_seeds>], [<ore:plankWood>, <ore:gearStone>, <ore:plankWood>]]);
recipes.remove(<teslathingies:misc_farmer>);
recipes.addShaped(<teslathingies:misc_farmer>, [[<teslacorelib:base_addon>, <primal:diamond_hoe>, <teslacorelib:base_addon>], [<ore:gearIron>, <teslacorelib:machine_case>, <ore:gearIron>], [<ore:plankWood>, <ore:gearIron>, <ore:plankWood>]]);

// Disable Powered Thingies Blocks
mods.jei.JEI.removeAndHide(<teslathingies:fluid_compound_producer>);