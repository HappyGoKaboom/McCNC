#Name: template.zs
#Author: Feed the Beast

print("Initializing 'template.zs'...");

#flux core
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore>, [[<fluxnetworks:flux>, <ore:ingotBlutonium>, <fluxnetworks:flux>], [<ore:ingotBlutonium>, <ore:plateiridiumAlloy>, <ore:ingotBlutonium>], [<fluxnetworks:flux>, <ore:ingotBlutonium>, <fluxnetworks:flux>]]);

print("Initialized 'template.zs'");