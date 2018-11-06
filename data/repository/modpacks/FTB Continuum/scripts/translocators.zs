#Name: translocators.zs
#Author: Feed the Beast

print("Initializing 'translocators.zs'...");

#item translocator
recipes.remove(<translocators:translocator_part>);
recipes.addShaped(<translocators:translocator_part> * 2, [[<extrautils2:pipe>, <ore:chest>, <extrautils2:pipe>], [<ore:enderpearl>, <ore:craftingPiston>, <ore:enderpearl>], [<extrautils2:pipe>, <ore:chest>, <extrautils2:pipe>]]);

#liquid translocator
recipes.remove(<translocators:translocator_part:1>);
recipes.addShaped(<translocators:translocator_part:1> * 2, [[<extrautils2:pipe>, <minecraft:bucket>, <extrautils2:pipe>], [<ore:enderpearl>, <ore:craftingPiston>, <ore:enderpearl>], [<extrautils2:pipe>, <minecraft:bucket>, <extrautils2:pipe>]]);


print("Initialized 'translocators.zs'");