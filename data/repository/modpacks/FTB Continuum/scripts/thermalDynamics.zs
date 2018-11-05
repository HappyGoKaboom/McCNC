#Name: thermalDynamics.zs
#Author: Feed the Beast

print("Initializing 'thermalDynamics.zs'...");

#fluiducts
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.remove(<thermaldynamics:duct_16:3>);
recipes.addShaped(<thermaldynamics:duct_16:2> * 4, [[<extrautils2:pipe>, <ore:ingotInvar>, <extrautils2:pipe>], [<ore:ingotInvar>, <ore:blockGlassHardened>, <ore:ingotInvar>], [<extrautils2:pipe>, <ore:ingotInvar>, <extrautils2:pipe>]]);
recipes.addShaped(<thermaldynamics:duct_16:3> * 4, [[<extrautils2:pipe>, <ore:ingotLead>, <extrautils2:pipe>], [<ore:ingotLead>, <ore:blockGlassHardened>, <ore:ingotLead>], [<extrautils2:pipe>, <ore:ingotLead>, <extrautils2:pipe>]]);

#itemducts
recipes.remove(<thermaldynamics:duct_32>);
recipes.remove(<thermaldynamics:duct_32:1>);
recipes.addShaped(<thermaldynamics:duct_32:1> * 4, [[<extrautils2:pipe>, <ore:ingotLead>, <extrautils2:pipe>], [<ore:ingotLead>, <thermalfoundation:material:512>, <ore:ingotLead>], [<extrautils2:pipe>, <ore:ingotLead>, <extrautils2:pipe>]]);
recipes.addShaped(<thermaldynamics:duct_32> * 4, [[<extrautils2:pipe>, <ore:ingotInvar>, <extrautils2:pipe>], [<ore:ingotInvar>, <thermalfoundation:material:512>, <ore:ingotInvar>], [<extrautils2:pipe>, <ore:ingotInvar>, <extrautils2:pipe>]]);

#vacuum(silver dust) and dense(lead dust) ducts
//itemduct
recipes.addShapeless(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32>,<thermalfoundation:material:66>]);
recipes.addShapeless(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32>,<thermalfoundation:material:67>]);
//opaque itemduct
recipes.addShapeless(<thermaldynamics:duct_32:1>.withTag({DenseType: 2 as byte}), [<thermaldynamics:duct_32:1>,<thermalfoundation:material:66>]);
recipes.addShapeless(<thermaldynamics:duct_32:1>.withTag({DenseType: 1 as byte}), [<thermaldynamics:duct_32:1>,<thermalfoundation:material:67>]);


print("Initialized 'thermalDynamics.zs'");