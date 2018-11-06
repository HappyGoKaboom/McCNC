import mods.industrialforegoing.BioReactor;

#modloaded industrialforegoing teslacorelib
print("--- loading IndustrialForegoing.zs ---");
	
# BioReactor, additional entries
	for veggie in <ore:listAllveggie>.items {
		BioReactor.add(veggie);
	}
	
	for fruit in <ore:listAllfruit>.items {
		BioReactor.add(fruit);
	}
	
print("--- IndustrialForegoing.zs initialized ---");