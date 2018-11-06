print("Voidcraft");

// Void Infuser
recipes.remove(<voidcraft:voidinfuser>);
recipes.addShapeless(<voidcraft:voidinfuser>, [<voidcraft:voidinfuserinert>, <minecraft:skull:1>]);

// Charger
recipes.remove(<voidcraft:voidiccharger>);
recipes.addShaped(<voidcraft:voidiccharger>, [[<voidcraft:diamonddust>, <voidcraft:voidicsteel>, <voidcraft:diamonddust>], [<voidcraft:voidcloth>, <minecraft:end_crystal>, <voidcraft:voidcloth>], [<voidcraft:diamonddust>, <voidcraft:voidiccable>, <voidcraft:diamonddust>]]);

// Skull
recipes.remove(<voidcraft:chainedskull>);
recipes.addShaped(<voidcraft:chainedskull>, [[<voidcraft:moltenvoidchain>, <voidcraft:astralessence>, <voidcraft:moltenvoidchain>], [<voidcraft:astralessence>, <minecraft:skull:1>, <voidcraft:astralessence>], [<voidcraft:moltenvoidchain>, <voidcraft:astralessence>, <voidcraft:moltenvoidchain>]]);