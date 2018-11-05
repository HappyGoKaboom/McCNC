#Name: oreExcavationIntergration.zs
#Author: Feed the Beast

print("Initializing 'oreExcavationIntergration.zs'...");

recipes.remove(<oeintegration:excavatemodifier>);
recipes.addShaped(<oeintegration:excavatemodifier> * 5, [[null, <ore:enderpearl>, null], [<ore:enderpearl>, <ore:ingotManyullyn>, <ore:enderpearl>], [null, <ore:enderpearl>, null]]);

print("Initialized 'oreExcavationIntergration.zs'");