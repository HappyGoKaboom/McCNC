#Name: powerStorage.zs
#Author: Feed the Beast

print("Initializing 'powerStorage.zs'...");

#disable all rf storage
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:147>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:148>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:128>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:129>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:130>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:146>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:131>);
mods.jei.JEI.removeAndHide(<thermalexpansion:frame:132>);
mods.jei.JEI.removeAndHide(<techreborn:low_voltage_su>);
mods.jei.JEI.removeAndHide(<thermalexpansion:cell>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:creative_energy_cell>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device0:3>);
mods.jei.JEI.removeAndHide(<rftools:powercell_simple>);
mods.jei.JEI.removeAndHide(<rftools:powercell_creative>);
mods.jei.JEI.removeAndHide(<rftools:powercell_advanced>);
mods.jei.JEI.removeAndHide(<rftools:powercell>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_battery_box>);
mods.jei.JEI.removeAndHide(<techreborn:lapotronic_su>);
mods.jei.JEI.removeAndHide(<techreborn:lsu_storage>);
mods.jei.JEI.removeAndHide(<techreborn:adjustable_su>);
mods.jei.JEI.removeAndHide(<techreborn:interdimensional_su>);
mods.jei.JEI.removeAndHide(<fluxnetworks:fluxstorage>);
mods.jei.JEI.removeAndHide(<fluxnetworks:herculeanfluxstorage>);
mods.jei.JEI.removeAndHide(<fluxnetworks:gargantuanfluxstorage>);
mods.jei.JEI.removeAndHide(<techreborn:medium_voltage_su>);
mods.jei.JEI.removeAndHide(<techreborn:high_voltage_su>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device0>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device0:1>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device0:2>);

#rftoolspower

#low 250,000 RF storage @ 100 RF transfer per block
recipes.remove(<rftoolspower:cell1>);
recipes.addShaped(<rftoolspower:cell1>, [[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], [<ore:plateLead>, <forestry:chipsets:2>, <ore:plateLead>], [<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0>, <ore:plankTreatedWood>]]);

#medium 10,000,000 RF storage @ 250 RF transfer per block
recipes.remove(<rftoolspower:cell2>);
recipes.addShaped("mediumPowerCellRecipe", <rftoolspower:cell2>, [[<rftoolspower:cell1>.marked("1"), <ore:lapotronCrystal>, <rftoolspower:cell1>.marked("2")], [<ore:lapotronCrystal>, <ore:circuitStorage>, <ore:lapotronCrystal>], [<rftoolspower:cell1>.marked("3"), <ore:lapotronCrystal>, <rftoolspower:cell1>.marked("4")]], function(output, inputs, crafting) {
  var power = 0;
  for i, item in inputs {
    if item.hasTag {
      var tags = item.tag;
      power += tags.energy;
    }
  }
  if power != 0 { return output.withTag({"energy": power}); }
  return output;
}, null);
 
#high 100,000,000 RF storage @ 1000 RF transfer per block
recipes.remove(<rftoolspower:cell3>);
recipes.addShaped("highPowerCellRecipe", <rftoolspower:cell3>, [[<rftoolspower:cell2>.marked("1"), <ore:plateEnderium>, <rftoolspower:cell2>.marked("2")], [<ore:ingotBlutonium>, <ore:plateiridiumAlloy>, <ore:ingotBlutonium>], [<rftoolspower:cell2>.marked("3"), <ore:plateEnderium>, <rftoolspower:cell2>.marked("4")]], function(output, inputs, crafting) {
  var power = 0;
  for i, item in inputs {
    if item.hasTag {
      var tags = item.tag;
      power += tags.energy;
    }
  }
  if power != 0 { return output.withTag({"energy": power}); }
  return output;
}, null);

#power info screen
recipes.remove(<rftoolspower:information_screen>);
recipes.addShaped(<rftoolspower:information_screen>, [[<minecraft:stained_glass_pane:15>, <minecraft:stained_glass_pane:15>, <minecraft:stained_glass_pane:15>], [<minecraft:stained_glass_pane:15>, <ore:circuitBasic>, <minecraft:stained_glass_pane:15>], [<minecraft:stained_glass_pane:15>, <minecraft:stained_glass_pane:15>, <minecraft:stained_glass_pane:15>]]);

#remove power cores (using own recipes)
mods.jei.JEI.removeAndHide(<rftoolspower:power_core1>);
mods.jei.JEI.removeAndHide(<rftoolspower:power_core2>);
mods.jei.JEI.removeAndHide(<rftoolspower:power_core3>);


print("Initialized 'powerStorage.zs'");