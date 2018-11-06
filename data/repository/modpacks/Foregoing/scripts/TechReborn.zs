#casings
recipes.remove(<techreborn:machine_frame>);
recipes.addShaped(<techreborn:machine_frame>, 
	[	
		[<techreborn:ingot:19>,<techreborn:ingot:19>,<techreborn:ingot:19>], 
		[<techreborn:ingot:19>,<industrialforegoing:plastic>,<techreborn:ingot:19>], 
		[<techreborn:ingot:19>,<techreborn:ingot:19>,<techreborn:ingot:19>]
	]);
recipes.remove(<techreborn:machine_frame:1>);
recipes.addShaped(<techreborn:machine_frame:1>, 
	[	
		[<industrialforegoing:plastic>,<techreborn:plates:35>,<industrialforegoing:plastic>], 
		[<techreborn:plates:2>,<techreborn:machine_frame>,<techreborn:plates:2>], 
		[<industrialforegoing:plastic>,<techreborn:plates:35>,<industrialforegoing:plastic>]
	]);

#cables
recipes.remove(<techreborn:cable:5>*6);
recipes.remove(<techreborn:cable:5>*6);
recipes.remove(<techreborn:cable:5>);
recipes.addShaped(<techreborn:cable:5>*6, 
	[	
		[<industrialforegoing:plastic>,<ore:ingotCopper>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<ore:ingotCopper>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<ore:ingotCopper>,<industrialforegoing:plastic>]
	]);
recipes.addShaped(<techreborn:cable:5>*6, 
	[	
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>], 
		[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>], 
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]
	]);
recipes.addShapeless(<techreborn:cable:5>, 
	[<techreborn:cable>,<industrialforegoing:plastic>]);
recipes.remove(<techreborn:cable:6>*4);
recipes.remove(<techreborn:cable:6>);
recipes.addShaped(<techreborn:cable:6>*4, 
	[	
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<ore:ingotGold>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]
	]);
recipes.addShapeless(<techreborn:cable:6>, 
	[<techreborn:cable:2>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]);
recipes.remove(<techreborn:cable:7>*4);
recipes.remove(<techreborn:cable:7>);
recipes.addShaped(<techreborn:cable:7>*4, 
	[	
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<techreborn:ingot:19>,<industrialforegoing:plastic>], 
		[<industrialforegoing:plastic>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]
	]);
recipes.addShapeless(<techreborn:cable:7>, 
	[<techreborn:cable:3>,<industrialforegoing:plastic>,<industrialforegoing:plastic>]);