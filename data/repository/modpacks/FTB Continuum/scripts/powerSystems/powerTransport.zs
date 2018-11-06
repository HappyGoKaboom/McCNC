#Name: powerTransport.zs
#Author: Feed the Beast

print("Initializing 'powerTransport.zs'...");

#leadstone energy duct
recipes.remove(<thermaldynamics:duct_0>);
recipes.addShaped(<thermaldynamics:duct_0> * 4, [[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], [<ore:ingotLead>, <forestry:chipsets>, <ore:ingotLead>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);
#hardened ducts unchanged

#IE wires (recipe changes in IE scripts)

#TR wires (recipe changes in TR scripts)




print("Initialized 'powerTransport.zs'");