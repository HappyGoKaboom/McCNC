#Name: template.zs
#Author: Feed the Beast

print("Initializing 'template.zs'...");

#remove unused items
mods.jei.JEI.removeAndHide(<bigreactors:minerals>);
mods.jei.JEI.removeAndHide(<bigreactors:minerals:1>);
mods.jei.JEI.removeAndHide(<bigreactors:brore:2>);
mods.jei.JEI.removeAndHide(<bigreactors:brore>);
mods.jei.JEI.removeAndHide(<bigreactors:brore:1>);
mods.jei.JEI.removeAndHide(<bigreactors:blockmetals>);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}));
mods.jei.JEI.removeAndHide(<bigreactors:reactorpowertaptesla>);
mods.jei.JEI.removeAndHide(<bigreactors:turbinepowertaptesla>);
mods.jei.JEI.removeAndHide(<bigreactors:turbinecomputerport>);
mods.jei.JEI.removeAndHide(<bigreactors:reactorcomputerport>);

#strip legacy out of name in JEI
<bigreactors:reactorcoolantport>.displayName = "Reactor Coolant Port";
<bigreactors:turbinefluidport>.displayName = "Turbine Fluid Port";
<bigreactors:reactorcreativecoolantport>.displayName = "Reactor Creative Coolant Port";
<bigreactors:turbinerotorshaft>.displayName = "Turbine Rotor Shaft";
<bigreactors:reactoraccessport>.displayName = "Reactor Access Port";
<bigreactors:turbinehousing>.displayName = "Turbine Housing";
<bigreactors:reactorrednetport>.displayName = "Reactor Rednet Port";
<bigreactors:turbinebearing>.displayName = "Turbine Bearing";
<bigreactors:turbinehousingcores>.displayName = "Turbine Housing Core";
<bigreactors:reactorcasingcores>.displayName = "Reactor Casing Core";
<bigreactors:reactorfuelrod>.displayName = "Reactor Fuel Rod";
<bigreactors:reactorcontrolrod>.displayName = "Reactor Control Rod";
<bigreactors:reactorglass>.displayName = "Reactor Glass";
<bigreactors:turbinepowertaprf>.displayName = "Turbine RF Power Tap";
<bigreactors:reactorredstoneport>.displayName = "Reactor Redstone Port";
<bigreactors:reactorcontroller>.displayName = "Reactor Controller";
<bigreactors:reactorpowertaprf>.displayName = "Reactor RF Power Tap";
<bigreactors:reactorcasing>.displayName = "Reactor Casing";
<bigreactors:turbineglass>.displayName = "Turbine Glass";
<bigreactors:turbinecontroller>.displayName = "Turbine Controller";
<bigreactors:turbinerotorblade>.displayName = "Turbine Rotor Blade";

#graphite
recipes.remove(<bigreactors:ingotmetals:2>);
mods.extrautils2.Resonator.add(<bigreactors:ingotmetals:2>, <immersiveengineering:material:19>, 3200);

#casing
recipes.remove(<bigreactors:turbinehousing>);
recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:turbinehousing> * 4, [[<ore:ingotPlatinum>, <ore:ingotGraphite>, <ore:ingotPlatinum>], [<ore:ingotTungsten>, <bigreactors:turbinehousingcores>, <ore:ingotTungsten>], [<ore:ingotPlatinum>, <ore:ingotGraphite>, <ore:ingotPlatinum>]]);
recipes.addShaped(<bigreactors:reactorcasing> * 4, [[<ore:ingotUranium>, <ore:ingotGraphite>, <ore:ingotUranium>], [<ore:ingotHotTungstensteel>, <bigreactors:reactorcasingcores>, <ore:ingotHotTungstensteel>], [<ore:ingotUranium>, <ore:ingotGraphite>, <ore:ingotUranium>]]);

#add blutonium to carpenter
mods.forestry.Carpenter.addRecipe(<bigreactors:ingotmetals:3>, [[<bigreactors:ingotmetals:1>, <bigreactors:ingotmetals:1>]], 30, <liquid:cryotheum> * 1000);


print("Initialized 'template.zs'");