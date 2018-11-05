#Name: creativeItems.zs
#Author: Feed the Beast

print("Initializing 'creativeItems.zs'...");

#test grave recipe
#recipes.addShaped(<openblocks:grave>.withTag({BlockEntityTag: {perishedUsername: "tfox83", size: 1, Message: "{\"translate\":\"openblocks.misc.grave_msg\",\"with\":[{\"translate\":\"death.attack.player\",\"with\":[{\"insertion\":\"tfox83\",\"clickEvent\":{\"action\, [[<projecte:condenser_mk2>, <extrautils2:passivegenerator:6>.giveBack(<extrautils2:passivegenerator:6>), <projecte:condenser_mk2>], [<thermalexpansion:capacitor:32000>.giveBack(<thermalexpansion:capacitor:32000>), <ore:compressed8xCobblestone>.giveBack(<minecraft:skull:3>.withTag({SkullOwner: {Id: "7c328913-2910-32d5-a934-bdda397c87fc", Name: "tfox83§r"}})), <extrautils2:drum:4>.giveBack(<extrautils2:drum:4>)], [<projecte:condenser_mk2>, <extrautils2:creativeenergy>.giveBack(<extrautils2:creativeenergy>), <projecte:condenser_mk2>]]);

#hide non craftable creative items
mods.jei.JEI.removeAndHide(<bibliocraft:bibliocreativelock>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:6>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:5>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:4>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:3>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:2>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative:1>);
mods.jei.JEI.removeAndHide(<bibliocraft:bookcasecreative>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:creative_storage_cell>);
mods.jei.JEI.removeAndHide(<storagedrawers:upgrade_creative:1>);
mods.jei.JEI.removeAndHide(<techreborn:creative_solar_panel>);
mods.jei.JEI.removeAndHide(<theoneprobe:creativeprobe>);
mods.jei.JEI.removeAndHide(<thermalexpansion:reservoir:32000>);
mods.jei.JEI.removeAndHide(<libvulpes:creativepowerbattery>);
mods.jei.JEI.removeAndHide(<wct:wct_creative>);
mods.jei.JEI.removeAndHide(<yabba:upgrade_creative>);
mods.jei.JEI.removeAndHide(<simplyjetpacks:itemjetpack>);
mods.jei.JEI.removeAndHide(<simplyjetpacks:itemfluxpack>);
mods.jei.JEI.removeAndHide(<stevescarts:upgrade:14>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:61>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:72>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:76>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:96>);
mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:97>);
mods.jei.JEI.removeAndHide(<storagedrawers:upgrade_creative>);
mods.jei.JEI.removeAndHide(<rftools:creative_screen>);
mods.jei.JEI.removeAndHide(<bigreactors:reactorcreativecoolantport>);
mods.jei.JEI.removeAndHide(<bigreactors:turbinecreativesteamgenerator>);
mods.jei.JEI.removeAndHide(<extrautils2:creativeharvest>);
mods.jei.JEI.removeAndHide(<extrautils2:creativechest>);
mods.jei.JEI.removeAndHide(<extrautils2:spike_creative>);
mods.jei.JEI.removeAndHide(<extrautils2:itemcreativebuilderswand>);
mods.jei.JEI.removeAndHide(<extrautils2:itemcreativedestructionwand>);
mods.jei.JEI.removeAndHide(<exchangers:creative_exchanger>);
mods.jei.JEI.removeAndHide(<extrautils2:drum:4>);

#watering can
recipes.addShaped(<thermalcultivation:watering_can:32000>, [[<ore:compressed8xCobblestone>, <projecte:matter_block:1>, <ore:compressed8xCobblestone>], [<projecte:item.pe_evertide_amulet>, <projecte:condenser_mk2>, <projecte:item.pe_evertide_amulet>], [<ore:compressed8xCobblestone>, <projecte:matter_block:1>, <ore:compressed8xCobblestone>]]);

#creative tool modifer
recipes.addShaped(<tconstruct:materials:50> * 4, [[<ore:compressed8xCobblestone>, <projecte:matter_block:1>, <ore:compressed8xCobblestone>], [<projecte:item.pe_volcanite_amulet>, <projecte:condenser_mk2>, <projecte:item.pe_volcanite_amulet>], [<ore:compressed8xCobblestone>, <projecte:matter_block:1>, <ore:compressed8xCobblestone>]]);

#flux capacitor
recipes.addShaped(<thermalexpansion:capacitor:32000>, [[<tconstruct:materials:50>, <projecte:matter_block:1>, <tconstruct:materials:50>], [<projecte:collector_mk3>, <thermalcultivation:watering_can:32000>, <projecte:collector_mk3>], [<tconstruct:materials:50>, <projecte:matter_block:1>, <tconstruct:materials:50>]]);

#mill
recipes.addShaped(<extrautils2:passivegenerator:6>, [[<projecte:rm_furnace>, <projecte:relay_mk3>, <projecte:rm_furnace>], [<projecte:relay_mk3>, <thermalexpansion:capacitor:32000>, <projecte:relay_mk3>], [<projecte:rm_furnace>, <projecte:relay_mk3>, <projecte:rm_furnace>]]);
<extrautils2:passivegenerator:6>.addTooltip(format.darkRed("Creative Blocks cannot be pickup by non-ops once placed!"));

#energy source
recipes.addShaped(<extrautils2:creativeenergy>, [[<projecte:rm_furnace>, <thermalexpansion:capacitor:32000>, <projecte:rm_furnace>], [<thermalexpansion:capacitor:32000>, <extrautils2:opinium:8>, <thermalexpansion:capacitor:32000>], [<projecte:rm_furnace>, <thermalexpansion:capacitor:32000>, <projecte:rm_furnace>]]);
<extrautils2:creativeenergy>.addTooltip(format.darkRed("Creative Blocks cannot be pickup by non-ops once placed!"));

#creative tank
recipes.addShaped(<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}), [[<thermalcultivation:watering_can:32000>, <projecte:condenser_mk2>, <thermalcultivation:watering_can:32000>], [<projecte:condenser_mk2>, <extrautils2:creativeenergy>, <projecte:condenser_mk2>], [<thermalcultivation:watering_can:32000>, <projecte:condenser_mk2>, <thermalcultivation:watering_can:32000>]]);
<thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte}).addTooltip(format.darkRed("Creative Blocks cannot be pickup by non-ops once placed!"));


print("Initialized 'creativeItems.zs'");