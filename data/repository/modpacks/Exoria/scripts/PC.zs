print("Primal Core");

// Hardened Stone
recipes.removeShaped(<primal:hardened_stone>);
recipes.addShaped(<primal:hardened_stone>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:stone>, <primal:obsidian_plate>, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

// Temp Disable Obsidian Armor
recipes.remove(<primal:armor_obsidian_head>);
recipes.remove(<primal:armor_obsidian_body>);
recipes.remove(<primal:armor_obsidian_legs>);
recipes.remove(<primal:armor_obsidian_feet>);

// Adobe & Mud
<ore:ballMud>.add(<earthworks:item_mud>);
<ore:ballMud>.add(<primal:mud_clump>);
recipes.remove(<primal:adobebrick_mix>);
recipes.addShapeless(<primal:adobebrick_mix> * 4, [<ore:ballMud>, <ore:thatchingDry>, <foundry:component:1>]);
recipes.remove(<primal:adobebrick>);
recipes.remove(<earthworks:item_adobe>);
recipes.removeByRecipeName("block_adobe");
recipes.addShaped(<earthworks:block_adobe> * 2, [[<primal:adobebrick_dry>, <primal:adobebrick_dry>], [<primal:adobebrick_dry>, <primal:adobebrick_dry>]]);

// Disable Drying Rack
mods.jei.JEI.removeAndHide(<primal:drying_rack:*>);

// Cauldron
recipes.remove(<primal:cauldron>);
recipes.addShaped(<primal:cauldron>, [[<primal:sarsen_stone>, null, <primal:sarsen_stone>], [<primal:sarsen_stone>, null, <primal:sarsen_stone>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.remove(<primal:cauldron_lid>);
recipes.addShaped(<primal:cauldron_lid>, [[<minecraft:wooden_button>], [<ore:plateIron>]]);

// Bark Removal
recipes.remove(<primal:bark_oak>);
recipes.remove(<primal:bark_spruce>);
recipes.remove(<primal:bark_birch>);
recipes.remove(<primal:bark_jungle>);
recipes.remove(<primal:bark_acacia>);
recipes.remove(<primal:bark_bigoak>);
recipes.remove(<primal:bark_ironwood>);
recipes.remove(<primal:bark_yew>);
recipes.remove(<primal:bark_corypha>);

// Lacquer
recipes.remove(<primal:urushi_ground>);
recipes.remove(<primal:lacquer_stick>);
recipes.removeShapeless(<primal:slab_lacquer>);
recipes.removeShapeless(<primal:thin_slab_lacquer>);
recipes.removeShapeless(<primal:shelf_half:8>.withTag({type: "lacquer"}));
recipes.removeShapeless(<primal:stairs_lacquer>);
recipes.removeShapeless(<primal:planks:2>);
recipes.addShaped(<primal:planks:2> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <forge:bucketfilled>.withTag({FluidName: "urushi", Amount: 1000}), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Diamond Tools require normal sticks
recipes.remove(<primal:diamond_pickaxe>);
recipes.addShaped(<primal:diamond_pickaxe>, [[<primal:diamond_knapp>, <primal:iron_pin>, <primal:diamond_knapp>], [<primal:diamond_knapp>, <ore:stickWood>, <primal:diamond_knapp>], [null, <ore:stickWood>, null]]);
recipes.remove(<primal:diamond_shovel>);
recipes.addShaped(<primal:diamond_shovel>, [[null, <primal:diamond_knapp>, <primal:diamond_knapp>], [null, <ore:cordageGeneral>, <primal:diamond_knapp>], [<ore:stickWood>, null, null]]);
recipes.remove(<primal:diamond_hoe>);
recipes.addShaped(<primal:diamond_hoe>, [[<primal:diamond_knapp>, <primal:iron_pin>], [<ore:stickWood>, null]]);
recipes.remove(<primal:diamond_hatchet>);
recipes.addShaped(<primal:diamond_hatchet>, [[<primal:diamond_knapp>, <primal:iron_pin>], [null, <ore:stickWood>]]);
recipes.remove(<primal:diamond_axe>);
recipes.addShaped(<primal:diamond_axe>, [[<primal:diamond_knapp>, <primal:iron_pin>, <primal:diamond_knapp>], [<primal:diamond_knapp>, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.remove(<primal:diamond_workblade>);
recipes.addShaped(<primal:diamond_workblade>, [[null, <primal:diamond_knapp>, <primal:diamond_point>], [<primal:diamond_knapp>, <primal:iron_pin>, <primal:diamond_knapp>], [<ore:stickWood>, <primal:diamond_knapp>, null]]);
recipes.remove(<primal:diamond_saw>);
recipes.addShaped(<primal:diamond_saw>, [[<primal:diamond_knapp>, null, null], [null, <primal:diamond_knapp>, <primal:iron_pin>], [null, <ore:stickWood>, <ore:stickWood>]]);

// Worktable
var flexaxe = <flexibletools:axi>.anyDamage();
recipes.remove(<primal:worktable_shelf:*>);
recipes.addShaped(<primal:worktable_shelf>.withTag({type: "oak"}), [[<tconstruct:tooltables>], [<primal:shelf_half>.withTag({type: "oak"})]]);
recipes.addShaped(<primal:worktable_shelf:1>.withTag({type: "spruce"}), [[<tconstruct:tooltables>], [<primal:shelf_half:1>.withTag({type: "spruce"})]]);
recipes.addShaped(<primal:worktable_shelf:2>.withTag({type: "birch"}), [[<tconstruct:tooltables>], [<primal:shelf_half:2>.withTag({type: "birch"})]]);
recipes.addShaped(<primal:worktable_shelf:3>.withTag({type: "jungle"}), [[<tconstruct:tooltables>], [<primal:shelf_half:3>.withTag({type: "jungle"})]]);
recipes.addShaped(<primal:worktable_shelf:4>.withTag({type: "acacia"}), [[<tconstruct:tooltables>], [<primal:shelf_half:4>.withTag({type: "acacia"})]]);
recipes.addShaped(<primal:worktable_shelf:5>.withTag({type: "darkoak"}), [[<tconstruct:tooltables>], [<primal:shelf_half:5>.withTag({type: "darkoak"})]]);
recipes.addShaped(<primal:worktable_shelf:8>.withTag({type: "lacquer"}), [[<tconstruct:tooltables>], [<primal:shelf_half:8>.withTag({type: "lacquer"})]]);

recipes.remove(<primal:worktable_slab:*>);
recipes.addShapeless(<primal:worktable_slab>.withTag({type: "oak"}), [<primal:worktable_shelf>.withTag({type: "oak"})]);
recipes.addShapeless(<primal:worktable_slab:1>.withTag({type: "spruce"}), [<primal:worktable_shelf:1>.withTag({type: "spruce"})]);
recipes.addShapeless(<primal:worktable_slab:2>.withTag({type: "birch"}), [<primal:worktable_shelf:2>.withTag({type: "birch"})]);
recipes.addShapeless(<primal:worktable_slab:3>.withTag({type: "jungle"}), [<primal:worktable_shelf:3>.withTag({type: "jungle"})]);
recipes.addShapeless(<primal:worktable_slab:4>.withTag({type: "acacia"}), [<primal:worktable_shelf:4>.withTag({type: "acacia"})]);
recipes.addShapeless(<primal:worktable_slab:5>.withTag({type: "darkoak"}), [<primal:worktable_shelf:5>.withTag({type: "darkoak"})]);
recipes.addShapeless(<primal:worktable_slab:8>.withTag({type: "lacquer"}), [<primal:worktable_shelf:8>.withTag({type: "lacquer"})]);

