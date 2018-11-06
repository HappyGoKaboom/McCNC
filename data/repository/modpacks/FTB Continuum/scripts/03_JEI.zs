#Name: JEI.zs
#Author: Feed the Beast

print("Initializing 'JEI.zs'...");

#hide unused ores
mods.jei.JEI.removeAndHide(<libvulpes:ore0:10>);
mods.jei.JEI.removeAndHide(<libvulpes:ore0:9>);
mods.jei.JEI.removeAndHide(<libvulpes:ore0:8>);
mods.jei.JEI.removeAndHide(<libvulpes:ore0:5>);
mods.jei.JEI.removeAndHide(<libvulpes:ore0:4>);
mods.jei.JEI.removeAndHide(<thermalfoundation:ore:8>);
mods.jei.JEI.removeAndHide(<techreborn:ore2:1>);
mods.jei.JEI.removeAndHide(<techreborn:ore2>);
mods.jei.JEI.removeAndHide(<techreborn:ore:13>);
mods.jei.JEI.removeAndHide(<techreborn:ore:12>);
mods.jei.JEI.removeAndHide(<techreborn:ore:11>);
mods.jei.JEI.removeAndHide(<techreborn:ore:9>);
mods.jei.JEI.removeAndHide(<techreborn:ore>);
mods.jei.JEI.removeAndHide(<techreborn:ore:1>);
mods.jei.JEI.removeAndHide(<rftools:dimensional_shard_ore:2>);
mods.jei.JEI.removeAndHide(<rftools:dimensional_shard_ore:1>);
mods.jei.JEI.removeAndHide(<rftools:dimensional_shard_ore>);
mods.jei.JEI.removeAndHide(<immersiveengineering:ore:4>);
mods.jei.JEI.removeAndHide(<immersiveengineering:ore:3>);
mods.jei.JEI.removeAndHide(<immersiveengineering:ore:2>);
mods.jei.JEI.removeAndHide(<immersiveengineering:ore:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:ore>);
mods.jei.JEI.removeAndHide(<forestry:resources:2>);
mods.jei.JEI.removeAndHide(<forestry:resources:1>);
#mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:3>);

#tooltips
<environmentaltech:ionite>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:erodium>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:kyronite>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:pladium>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:litherite>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:aethium>.addTooltip(format.darkRed("Must be found on far away planets!"));
<environmentaltech:lonsdaleite>.addTooltip(format.darkRed("Must be found on far away planets!"));

<advancedrocketry:charcoallog>.addTooltip(format.darkRed("Found on some planets"));

<bqt:bqbook>.addTooltip(format.darkRed("Bound to GRAVE key by default; book is not required to be in you inventory."));

<extrautils2:drum>.addTooltip(format.darkRed("Contents are not kept when used in crafting recipes!"));
<extrautils2:drum:1>.addTooltip(format.darkRed("Contents are not kept when used in crafting recipes!"));
<extrautils2:drum:2>.addTooltip(format.darkRed("Contents are not kept when used in crafting recipes!"));
<extrautils2:drum:3>.addTooltip(format.darkRed("Contents are not kept when used in crafting recipes!"));

#<rftoolspower:cell1>.addTooltip(format.darkRed("Energy is not kept when used in crafting recipes!"));
#<rftoolspower:cell2>.addTooltip(format.darkRed("Energy is not kept when used in crafting recipes!"));
#<rftoolspower:cell3>.addTooltip(format.darkRed("Energy is not kept when used in crafting recipes!"));

#tooltip ores to show spawn levels
<libvulpes:ore0>.addTooltip(format.green("Only obtained in Void Ore Miner Tier 6"));
//minecraft
<minecraft:coal_ore>.addTooltip(format.green("Found in overworld from y0 to y128"));
<minecraft:iron_ore>.addTooltip(format.green("Found in overworld from y0 to y64"));
<minecraft:gold_ore>.addTooltip(format.green("Found in overworld from y0 to y32"));
<minecraft:lapis_ore>.addTooltip(format.green("Found in overworld from y0 to y32"));
<minecraft:redstone_ore>.addTooltip(format.green("Found in overworld from y0 to y16"));
<minecraft:diamond_ore>.addTooltip(format.green("Found in overworld from y0 to y16"));
<minecraft:emerald_ore>.addTooltip(format.green("Found in overworld from y0 to y16; rare chance of spawning with diamonds"));
//thermal foundation
<thermalfoundation:ore>.addTooltip(format.green("Found in overworld from y40 to y75"));
<thermalfoundation:ore:1>.addTooltip(format.green("Found in overworld from y20 to y55"));
<thermalfoundation:ore:2>.addTooltip(format.green("Found in overworld from y5 to y30"));
<thermalfoundation:ore:3>.addTooltip(format.green("Found in overworld from y5 to y30"));
<thermalfoundation:ore:7>.addTooltip(format.green("Found in overworld from y8 to y75; rare!"));
<thermalfoundation:ore:6>.addTooltip(format.green("Found in overworld from y8 to y75; rare!"));
<thermalfoundation:ore:5>.addTooltip(format.green("Found in overworld from y5 to y20"));
<thermalfoundation:ore:4>.addTooltip(format.green("Found in overworld from y48 to y72"));
//misc
<techreborn:ore:8>.addTooltip(format.green("Found in overworld from y0 to y10; rare!"));
<techreborn:ore:10>.addTooltip(format.green("Found in overworld from y16 to y42"));
<techreborn:ore:3>.addTooltip(format.green("Found in overworld from y16 to y42"));
<techreborn:ore:2>.addTooltip(format.green("Found in overworld from y16 to y42"));
<immersiveengineering:ore:5>.addTooltip(format.green("Found in overworld from y16 to y42"));
<techreborn:ore:4>.addTooltip(format.green("Found in overworld from y48 to y72"));
<forestry:resources>.addTooltip(format.green("Found in overworld from y54 to y96"));
<appliedenergistics2:quartz_ore>.addTooltip(format.green("Found in overworld from y24 to y48"));
<ore:oreChargedCertusQuartz>.addTooltip(format.green("Found in overworld from y24 to y48; rare chance of spawning with certus quartz"));
//note black quartz ore
<actuallyadditions:block_misc:3>.addTooltip(format.green("Disabled in world gen! Black quartz is made in the eFab!"));

print("Initialized 'JEI.zs'");