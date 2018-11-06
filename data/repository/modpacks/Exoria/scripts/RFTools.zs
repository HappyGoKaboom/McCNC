print("RFTools");

// Disable Machine Frame
recipes.remove(<rftools:machine_frame>);

// Quarry
recipes.remove(<rftools:shape_card:2>);
recipes.addShaped(<rftools:shape_card:2>, [[<minecraft:redstone>.noReturn(), <primal:diamond_pickaxe>.noReturn(), <minecraft:redstone>.noReturn()], [<ore:ingotIron>.noReturn(), <rftools:shape_card>.noReturn(), <ore:ingotIron>.noReturn()], [<minecraft:redstone>.noReturn(), <primal:diamond_shovel>.noReturn(), <minecraft:redstone>.noReturn()]]);

// DR Machine Frame
recipes.remove(<deepresonance:machine_frame>);
recipes.addShaped(<deepresonance:machine_frame>, [[<ore:plateLead>, <deepresonance:resonating_plate>, <ore:plateLead>], [<deepresonance:resonating_plate>, <rftools:machine_frame>, <deepresonance:resonating_plate>], [<ore:plateLead>, <deepresonance:resonating_plate>, <ore:plateLead>]]);

// Cable & Connector
recipes.removeShaped(<xnet:netcable>);
recipes.addShaped(<xnet:netcable> * 16, [[<refinedstorage:cable>, <immersiveengineering:material:27>, <refinedstorage:cable>]]);
recipes.removeShaped(<xnet:connector>);
recipes.addShaped(<xnet:connector>, [[<ore:dyeBlue>, <ore:ingotGold>, <ore:dyeBlue>], [<ore:chest>, <xnet:netcable>, <ore:chest>], [<ore:dyeBlue>, <ore:ingotGold>, <ore:dyeBlue>]]);