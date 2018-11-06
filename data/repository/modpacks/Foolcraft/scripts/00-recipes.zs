#Name: 00-recipes.zs
#Author: Scalda

print("Initializing 'recipes'...");


//Don't touch me!
//#Remove
recipes.remove(<extrautils2:angelring>);
recipes.remove(<extrautils2:angelring>);
recipes.remove(<projecte:condenser_mk2>);
recipes.remove(<projecte:transmutation_table>);
recipes.remove(<projecte:item.pe_transmutation_tablet>);
recipes.remove(<projecte:item.pe_swrg>);
recipes.remove(<projecte:condenser_mk1>);
recipes.remove(<chancecubes:compact_giant_chance_cube>);
recipes.remove(<chancecubes:chance_cube>);
recipes.remove(<extrautils2:sickle_wood>);
recipes.remove(<extrautils2:sickle_stone>);
recipes.remove(<extrautils2:sickle_iron>);
recipes.remove(<extrautils2:sickle_gold>);
recipes.remove(<extrautils2:sickle_diamond>);
recipes.remove(<extrautils2:angelring>);
recipes.removeByRegex("projecte:conversions/iron_to_ender_pearl");
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.remove(<projecte:item.pe_gem_armor_0>);
recipes.remove(<projecte:item.pe_philosophers_stone>);
recipes.remove(<wct:infinity_booster_card>);
recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
recipes.remove(<minecraft:soul_sand> * 9);
mods.jei.JEI.removeAndHide(<mob_grinding_utils:tank_sink>);
mods.jei.JEI.removeAndHide(<mob_grinding_utils:tank>);

mods.jei.JEI.removeAndHide(<enderzoo:guardiansbow>);
mods.jei.JEI.removeAndHide(<tp:wub_paxel>);
mods.jei.JEI.removeAndHide(<projecte:item.pe_time_watch>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_transmitter>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_receiver>);
mods.jei.JEI.removeAndHide(<chisel:chisel_hitech>);
mods.jei.JEI.removeAndHide(<thermalexpansion:device:10>);

//remove and hid emc cells til the mod updates

mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:1>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:2>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:3>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:4>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:5>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:6>);
mods.jei.JEI.removeAndHide(<equivalentenergistics:emc_cell:7>);



//mods.jei.JEI.removeAndHide(<modcurrency:blockatm>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_sacred_oak>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_cherry>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_umbran>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_fir>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_ethereal>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_magic>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_mangrove>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_palm>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_redwood>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_willow>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_pine>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_hellbark>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_jacaranda>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_mahogany>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_ebony>);
mods.jei.JEI.removeAndHide(<biomesoplenty:boat_eucalyptus>);

recipes.remove(<spartanshields:shield_basic_soulforged_steel>);
recipes.remove(<spartanshields:shield_abyssalcraft_ethaxium>);
recipes.remove(<spartanshields:shield_abyssalcraft_dreadium>);
recipes.remove(<spartanshields:shield_abyssalcraft_coralium>);
recipes.remove(<spartanshields:shield_abyssalcraft_abyssalnite>);
recipes.remove(<spartanshields:shield_abyssalcraft_darkstone>);
recipes.remove(<spartanshields:shield_flux_ra>);
recipes.remove(<tp:tiny_charcoal>);
recipes.remove(<tp:tiny_coal>);

furnace.remove(<minecraft:quartz>);
furnace.remove(<minecraft:coal>);

//mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);
//mods.thermalexpansion.factorizer.removeRecipe(<minecraft:prismarine_shard>);


mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:singularity_ultimate>);

#Remove ChunkLoaders (to force the use of FTBU to manage chunkloading)
recipes.remove(<extrautils2:chunkloader>);

//environmentaltech changes

recipes.remove(<environmentaltech:lonsdaleite>);
recipes.remove(<environmentaltech:aethium>);
recipes.remove(<environmentaltech:ionite>);
recipes.remove(<environmentaltech:pladium>);
recipes.remove(<environmentaltech:kyronite>);
recipes.remove(<environmentaltech:erodium>);
recipes.remove(<environmentaltech:litherite>);

recipes.addShapeless(<astralsorcery:itemcraftingcomponent>, [<minecraft:ender_pearl>, <minecraft:diamond>]);

//Carpenters slopes



recipes.addShapeless(<environmentaltech:lonsdaleite>, [<environmentaltech:lonsdaleite_crystal>,<environmentaltech:lonsdaleite_crystal>,<environmentaltech:lonsdaleite_crystal>,<environmentaltech:lonsdaleite_crystal>]);
recipes.addShapeless(<environmentaltech:aethium>, [<environmentaltech:aethium_crystal>,<environmentaltech:aethium_crystal>,<environmentaltech:aethium_crystal>,<environmentaltech:aethium_crystal>]);
recipes.addShapeless(<environmentaltech:ionite>, [<environmentaltech:ionite_crystal>,<environmentaltech:ionite_crystal>,<environmentaltech:ionite_crystal>,<environmentaltech:ionite_crystal>]);
recipes.addShapeless(<environmentaltech:pladium>, [<environmentaltech:pladium_crystal>,<environmentaltech:pladium_crystal>,<environmentaltech:pladium_crystal>,<environmentaltech:pladium_crystal>]);
recipes.addShapeless(<environmentaltech:kyronite>, [<environmentaltech:kyronite_crystal>,<environmentaltech:kyronite_crystal>,<environmentaltech:kyronite_crystal>,<environmentaltech:kyronite_crystal>]);
recipes.addShapeless(<environmentaltech:erodium>, [<environmentaltech:erodium_crystal>,<environmentaltech:erodium_crystal>,<environmentaltech:erodium_crystal>,<environmentaltech:erodium_crystal>]);
recipes.addShapeless(<environmentaltech:litherite>, [<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>,<environmentaltech:litherite_crystal>]);

recipes.remove(<environmentaltech:ionite_crystal>);
recipes.addShaped(<environmentaltech:ionite_crystal> * 4, [[null, null, null],[null, <environmentaltech:ionite>, null], [null, null, null]]);

recipes.remove(<environmentaltech:litherite_crystal>);
recipes.addShaped(<environmentaltech:litherite_crystal> * 4, [[<ore:dyeLime>, <minecraft:flint>, <ore:dyeGreen>], [<minecraft:flint>, <ore:gemDiamond>, <minecraft:flint>], [<ore:dyeGreen>, <minecraft:flint>, <ore:dyeLime>]]);
recipes.addShaped(<environmentaltech:litherite_crystal> * 4, [[null, null, null],[null, <environmentaltech:litherite>, null], [null, null, null]]);

recipes.remove(<environmentaltech:erodium_crystal>);
recipes.addShaped(<environmentaltech:erodium_crystal> * 4, [[null, null, null],[null, <environmentaltech:erodium>, null], [null, null, null]]);

recipes.remove(<environmentaltech:kyronite_crystal>);
recipes.addShaped(<environmentaltech:kyronite_crystal> * 4, [[null, null, null],[null, <environmentaltech:kyronite>, null], [null, null, null]]);

recipes.remove(<environmentaltech:pladium_crystal>);
recipes.addShaped(<environmentaltech:pladium_crystal> * 4, [[null, null, null],[null, <environmentaltech:pladium>, null], [null, null, null]]);

recipes.remove(<environmentaltech:aethium_crystal>);
recipes.addShaped(<environmentaltech:aethium_crystal> * 4, [[null, null, null],[null, <environmentaltech:aethium>, null], [null, null, null]]);

recipes.remove(<environmentaltech:lonsdaleite_crystal>);
recipes.addShaped(<environmentaltech:lonsdaleite_crystal> * 4, [[null, null, null],[null, <environmentaltech:lonsdaleite>, null], [null, null, null]]);

//furnace removal


//EMT flight block
recipes.remove(<environmentaltech:modifier_creative_flight>);
recipes.addShaped(<environmentaltech:modifier_creative_flight>, [[<minecraft:elytra>, <environmentaltech:ionite_crystal>, <minecraft:elytra>],[<environmentaltech:mica>, <simplyjetpacks:itemjetpack:18>, <environmentaltech:mica>], [<minecraft:leather>, <environmentaltech:lonsdaleite_crystal>, <minecraft:leather>]]);


recipes.remove(<projecte:item.pe_mercurial_eye>);
recipes.addShaped(<projecte:item.pe_mercurial_eye>, [[<projecte:matter_block>, <minecraft:brick_block>, <projecte:matter_block>],[<minecraft:brick_block>, <projecte:item.pe_matter:1>, <minecraft:brick_block>], [<minecraft:brick_block>, <projecte:condenser_mk1>, <minecraft:brick_block>]]);



recipes.remove(<projecte:item.pe_gem_armor_1>);

mods.immersiveengineering.Crusher.removeRecipe(<minecraft:redstone>);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:dye:4>);

recipes.remove(<tp:tiny_charcoal>);

//flugal tiara
recipes.remove(<botania:flighttiara>);
recipes.addShaped(<botania:flighttiara>, [[<botania:manaresource:5>, <botania:manaresource:5>, <botania:manaresource:5>],[<thaumcraft:ingot>, <botania:manaresource:5>, <thaumcraft:ingot>], [<bloodmagic:slate:2>, <astralsorcery:itemcape>, <bloodmagic:slate:2>]]);


## ADDED

//advance pressure gauge
mods.thermalexpansion.InductionSmelter.addRecipe(<advgenerators:advanced_pressure_valve>, <advgenerators:pressure_valve>, <thermalfoundation:storage_alloy:7>, 1500);

mods.thermalexpansion.InductionSmelter.addRecipe(<simplyjetpacks:metaitemmods:20>, <thermalfoundation:material:163> * 10, <simplyjetpacks:metaitemmods:19>, 1500);
mods.thermalexpansion.InductionSmelter.addRecipe(<simplyjetpacks:metaitemmods:21>, <simplyjetpacks:metaitemmods:20>, <thermalfoundation:material:162> * 10, 1500);
mods.thermalexpansion.InductionSmelter.addRecipe(<simplyjetpacks:metaitemmods:22>, <simplyjetpacks:metaitemmods:21>, <thermalfoundation:material:167> * 10, 1500);
mods.thermalexpansion.InductionSmelter.addRecipe(<chisel:marble2:7> * 2, <chisel:limestone2:7>, <biomesoplenty:white_sandstone>, 200);



//Boat from any sort of Planks
recipes.addShaped("allPlankBoat", <minecraft:boat>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);


//Recipe Change for Growth Crystals
recipes.remove(<tp:growth_block>);
recipes.addShaped("growthCrystal", <tp:growth_block>, [[<minecraft:iron_ingot>, <tp:bone_block>, <minecraft:iron_ingot>], [<tp:bone_block>, <minecraft:sea_lantern>, <tp:bone_block>], [<minecraft:iron_ingot>, <tp:bone_block>, <minecraft:iron_ingot>]]);

//Adding recipe for Dragon Egg since mojang decided to make it so you can only get 1 per wolrd instead of having an egg every time you kill the dragon
recipes.remove(<minecraft:dragon_egg>);
recipes.addShaped("dragonEgg", <minecraft:dragon_egg>, [[<minecraft:end_crystal>, <minecraft:ender_eye>, <minecraft:end_crystal>], [<minecraft:ender_pearl>, <minecraft:nether_star>, <minecraft:ender_pearl>], [<minecraft:dragon_breath>, <minecraft:nether_star>, <minecraft:dragon_breath>]]);

//aluminium block
recipes.addShaped("aluminiumBlock", <thermalfoundation:storage:4>, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);

// ExU2 Angel Ring Bauble fix
recipes.remove(<extrautils2:angelring>);
recipes.remove(<extrautils2:angelring:1>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:5>);
recipes.addShapeless("angelRing1", <extrautils2:angelring:1>, [<extrautils2:angelring>, <minecraft:feather>, <minecraft:feather>]);
recipes.addShapeless("angelRing2", <extrautils2:angelring:2>, [<extrautils2:angelring>, <minecraft:glass>, <minecraft:glass>]);
recipes.addShapeless("angelRing3", <extrautils2:angelring:3>, [<extrautils2:angelring>, <minecraft:leather>, <minecraft:leather>]);
recipes.addShapeless("angelRing4", <extrautils2:angelring:4>, [<extrautils2:angelring>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]);
recipes.addShapeless("angelRing5", <extrautils2:angelring:5>, [<extrautils2:angelring>, <minecraft:wool:15>, <minecraft:wool:15>]);


//Nametag
recipes.addShaped("nameTag", <minecraft:name_tag>, [[null, <minecraft:string>, <ore:string>], [null, <ore:slimeball>, <ore:string>], [<ore:paper>, null, null]]);

//Mob Heads

//Botania Metamorphic Stone
#mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "marimorphosis"}));
#mods.botania.ManaInfusion.removeRecipe(<botania:specialflower>.withTag({type: "marimorphosisChibi"}));
recipes.addShaped(<botania:biomestonea:0> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:forest"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:1> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:plains"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:2> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:extreme_hills"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:3> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:mushroom_island"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:4> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:swampland"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:5> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:desert"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:6> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:taiga"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);
recipes.addShaped(<botania:biomestonea:7> * 8, [[<botania:livingrock:0>, <botania:exchangerod>.transformDamage(8), <botania:livingrock:0>], 
[<botania:livingrock:0>, <extrautils2:biomemarker>.withTag({Biome: "minecraft:mesa"}).transformDamage(8), <botania:livingrock:0>], [<botania:livingrock:0>, <botania:manaresource:23>, <botania:livingrock:0>]]);


//forge bucket to normal bucket
recipes.addShapeless("normalBucket", <minecraft:bucket>, [<forge:bucketfilled>.noReturn()]);

//end portal frame
recipes.addShaped("endPortalFrame", <minecraft:end_portal_frame>, [[<thermalfoundation:material:167>, <thermalfoundation:material:167>, <thermalfoundation:material:167>], [<minecraft:end_stone>, <minecraft:ender_eye>, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);



recipes.addShaped(<chisel:basalt2:7> * 8, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:stone>, <minecraft:lava_bucket>, <minecraft:stone>]]);

recipes.addShaped(<projecte:item.pe_repair_talisman>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],[<minecraft:diamond>, <actuallyadditions:block_item_repairer>, <minecraft:diamond>], [<projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust>]]);
recipes.addShaped(<minecraft:ender_pearl>, [[<projecte:item.pe_philosophers_stone>, <minecraft:emerald>, null],[<minecraft:emerald>, null, null], [null, null, null]]);
recipes.addShaped(<projecte:item.pe_gem_armor_0>, [[<projecte:item.pe_rm_armor_0>, <projecte:item.pe_klein_star:5>, null],[<extrautils2:angelring>, <extrautils2:angelring>, null], [null, null, null]]);
recipes.addShaped(<openmodularturrets:turret_base:4>, [[<minecraft:obsidian>, <openmodularturrets:turret_base:3>, <minecraft:obsidian>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:turret_base:4>, [[<minecraft:obsidian>, <openmodularturrets:turret_base:3>, <minecraft:obsidian>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:turret_base:3>, [[<minecraft:diamond>, <openmodularturrets:turret_base:2>, <minecraft:diamond>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>], [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]]);
recipes.addShaped(<openmodularturrets:turret_base:2>, [[<minecraft:gold_ingot>, <openmodularturrets:turret_base:1>, <minecraft:gold_ingot>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>], [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:turret_base:1>, [[<minecraft:iron_ingot>, <openmodularturrets:turret_base>, <minecraft:iron_ingot>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:1>, <openmodularturrets:intermediate_regular>], [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]]);
recipes.addShaped(<openmodularturrets:machine_gun_turret>, [[null, <openmodularturrets:intermediate_tiered:11>, null],[<minecraft:iron_ingot>, <openmodularturrets:intermediate_tiered:11>, <minecraft:iron_ingot>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>]]);
recipes.addShaped(<openmodularturrets:incendiary_turret>, [[<openmodularturrets:intermediate_tiered:11>, null, <openmodularturrets:intermediate_tiered:11>],[<openmodularturrets:intermediate_tiered:6>, <minecraft:iron_ingot>, <openmodularturrets:intermediate_tiered:6>], [<openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>]]);
recipes.addShaped(<openmodularturrets:grenade_turret>, [[null, <openmodularturrets:intermediate_tiered:12>, null],[<minecraft:gold_ingot>, <openmodularturrets:intermediate_tiered:7>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:relativistic_turret>, [[<minecraft:gold_ingot>, <minecraft:ender_pearl>, <minecraft:gold_ingot>],[<minecraft:ender_pearl>, <openmodularturrets:intermediate_tiered:2>, <minecraft:ender_pearl>], [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:rocket_turret>, [[<minecraft:quartz>, <openmodularturrets:intermediate_tiered:13>, <minecraft:quartz>],[<openmodularturrets:intermediate_tiered:13>, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_tiered:13>], [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:4>, [[<minecraft:obsidian>, <minecraft:glowstone_dust>, <minecraft:obsidian>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <minecraft:glowstone_dust>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:3>, [[<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>],[<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>], [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:2>, [[null, <openmodularturrets:intermediate_regular>, null],[<minecraft:gold_ingot>, <openmodularturrets:intermediate_tiered:1>, <minecraft:gold_ingot>], [null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:1>, [[null, <minecraft:iron_ingot>, null],[<minecraft:iron_ingot>, <openmodularturrets:intermediate_tiered>, <minecraft:iron_ingot>], [null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:teleporter_turret>, [[<minecraft:ender_eye>, <minecraft:quartz>, <minecraft:ender_eye>],[<minecraft:diamond>, <openmodularturrets:intermediate_tiered:3>, <minecraft:diamond>], [<minecraft:ender_eye>, <openmodularturrets:intermediate_regular>, <minecraft:ender_eye>]]);
recipes.addShaped(<openmodularturrets:laser_turret>, [[null, <openmodularturrets:intermediate_tiered:14>, null],[<minecraft:obsidian>, <openmodularturrets:intermediate_tiered:9>, <minecraft:obsidian>], [<openmodularturrets:intermediate_regular>, <minecraft:obsidian>, <openmodularturrets:intermediate_regular>]]);
recipes.addShaped(<openmodularturrets:rail_gun_turret>, [[<minecraft:obsidian>, <openmodularturrets:intermediate_tiered:14>, <minecraft:obsidian>],[<minecraft:obsidian>, <openmodularturrets:intermediate_tiered:14>, <minecraft:obsidian>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:9>, <openmodularturrets:intermediate_regular>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:14>, [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],[<minecraft:glowstone_dust>, <openmodularturrets:intermediate_tiered:13>, <minecraft:glowstone_dust>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:13>, [[<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>],[null, <openmodularturrets:intermediate_tiered:12>, null], [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:12>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[null, <openmodularturrets:intermediate_tiered:11>, null], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[null, <openmodularturrets:intermediate_tiered:10>, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:9>, [[<minecraft:obsidian>, <minecraft:quartz>, <minecraft:obsidian>],[null, <openmodularturrets:intermediate_tiered:8>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <minecraft:quartz>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:8>, [[<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>],[null, <openmodularturrets:intermediate_tiered:7>, <openmodularturrets:intermediate_regular>], [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:7>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[null, <openmodularturrets:intermediate_tiered:6>, <openmodularturrets:intermediate_regular>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:6>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[null, <openmodularturrets:intermediate_tiered:5>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<projecte:item.pe_philosophers_stone>, [[<minecraft:glowstone>, <minecraft:redstone_block>, <minecraft:glowstone>],[<minecraft:redstone_block>, <minecraft:diamond_block>, <minecraft:redstone_block>], [<minecraft:glowstone>, <minecraft:redstone_block>, <minecraft:glowstone>]]);
recipes.addShaped(<minecraft:flint>, [[null, null, null],[null, <minecraft:gravel>, null], [null, null, null]]);
recipes.addShaped(<openmodularturrets:expander:9>, [[<minecraft:obsidian>, <openmodularturrets:expander:8>, <minecraft:obsidian>],[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:expander:8>, [[<minecraft:diamond>, <openmodularturrets:expander:7>, <minecraft:diamond>],[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>], [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]]);
recipes.addShaped(<openmodularturrets:expander:7>, [[<minecraft:gold_ingot>, <openmodularturrets:expander:6>, <minecraft:gold_ingot>],[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>], [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:expander:6>, [[<minecraft:iron_ingot>, <openmodularturrets:expander:5>, <minecraft:iron_ingot>],[<openmodularturrets:intermediate_regular>, <minecraft:redstone_block>, <openmodularturrets:intermediate_regular>], [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]]);
recipes.addShaped(<openmodularturrets:expander:4>, [[<minecraft:obsidian>, <openmodularturrets:expander:3>, <minecraft:obsidian>],[<openmodularturrets:intermediate_regular>, <minecraft:chest>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <openmodularturrets:intermediate_regular>, <minecraft:obsidian>]]);
recipes.addShaped(<openmodularturrets:expander:3>, [[<minecraft:diamond>, <openmodularturrets:expander:2>, <minecraft:diamond>],[<openmodularturrets:intermediate_regular>, <minecraft:chest>, <openmodularturrets:intermediate_regular>], [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]]);
recipes.addShaped(<openmodularturrets:expander:2>, [[<minecraft:gold_ingot>, <openmodularturrets:expander:1>, <minecraft:gold_ingot>],[<openmodularturrets:intermediate_regular>, <minecraft:chest>, <openmodularturrets:intermediate_regular>], [<minecraft:gold_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:gold_ingot>]]);
recipes.addShaped(<openmodularturrets:expander:1>, [[<minecraft:iron_ingot>, <openmodularturrets:expander>, <minecraft:iron_ingot>],[<openmodularturrets:intermediate_regular>, <minecraft:chest>, <openmodularturrets:intermediate_regular>], [<minecraft:iron_ingot>, <openmodularturrets:intermediate_regular>, <minecraft:iron_ingot>]]);
recipes.addShaped(<openmodularturrets:ammo_meta:4> * 32, [[null, <minecraft:iron_ingot>, null],[<minecraft:iron_ingot>, <minecraft:gunpowder>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.addShaped(<openmodularturrets:ammo_meta:2> * 16, [[null, <minecraft:redstone>, null],[<minecraft:redstone>, <minecraft:flint>, <minecraft:redstone>], [null, <minecraft:iron_ingot>, null]]);
recipes.addShaped(<openmodularturrets:ammo_meta:1> * 64, [[null, <minecraft:iron_ingot>, null],[<minecraft:gunpowder>, <minecraft:redstone>, null], [null, <minecraft:iron_ingot>, null]]);


recipes.addShapeless(<projecte:item.pe_gem_armor_1>, [<projecte:item.pe_rm_armor_1>,<projecte:item.pe_klein_star:5>,<projecte:item.pe_void_ring>,<projecte:item.pe_black_hole>]);

mods.extendedcrafting.TableCrafting.addShaped(0, <extrautils2:passivegenerator:6>, [
	[<extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <ore:dragonEgg>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>], 
	[<extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>, <extrautils2:passivegenerator:8>]
]);

//extendedcrafting pedestal

mods.extendedcrafting.CombinationCrafting.addRecipe(<extrautils2:angelring>, 100000, 1000, <simplyjetpacks:itemjetpack:18>, [<minecraft:glass>, <extendedcrafting:storage:2>, <minecraft:glass>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <extrautils2:goldenlasso>, <extrautils2:ingredients:10>, <extrautils2:goldenlasso:1>, <statues:blockblazestatue>, <statues:blockghaststatue>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<projecte:transmutation_table>, 500000, 5000, <projecte:condenser_mk1>, [<projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block:1>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<projecte:item.pe_transmutation_tablet>, 100000, 1000, <projecte:transmutation_table>, [<projecte:matter_block:1>, <extendedcrafting:storage:2>, <projecte:matter_block:1>, <extendedcrafting:storage:2>, <extendedcrafting:storage:2>, <projecte:matter_block:1>, <extendedcrafting:storage:2>, <projecte:matter_block:1>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<projecte:condenser_mk2>, 150000, 5000, <projecte:condenser_mk1>, [<projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>, <projecte:matter_block>]);

mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:material:32>, 15000, 5000, <rftools:infused_enderpearl>, [<thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>, <thermalfoundation:material:131>, <thermalfoundation:material:132>, <thermalfoundation:material:133>, <thermalfoundation:material:134>, <thermalfoundation:material:135>, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_ingot:8>, <extendedcrafting:material>, <extendedcrafting:material:24>, <extendedcrafting:material:36>, <extrautils2:ingredients:11>, <extrautils2:ingredients:12>, <extrautils2:ingredients:17>, <immersiveengineering:material:19>, <immersiveengineering:metal:5>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <tp:reinforced_obsidian_ingot>, <tp:flint_ingot>, <tp:lapis_ingot>, <tp:quartz_ingot>, <tp:redstone_ingot>]);
mods.extendedcrafting.CombinationCrafting.addRecipe(<extendedcrafting:singularity_ultimate>, 15000, 5000, <rftools:infused_enderpearl>, [<extendedcrafting:singularity>, <extendedcrafting:singularity:1>, <extendedcrafting:singularity:2>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:4>, <extendedcrafting:singularity:5>, <extendedcrafting:singularity:6>, <extendedcrafting:singularity:7>, <extendedcrafting:singularity:16>, <extendedcrafting:singularity:17>, <extendedcrafting:singularity:18>, <extendedcrafting:singularity:19>, <extendedcrafting:singularity:21>, <extendedcrafting:singularity:22>, <extendedcrafting:singularity:23>, <extendedcrafting:singularity:24>, <extendedcrafting:singularity:25>, <extendedcrafting:singularity:26>, <extendedcrafting:singularity:27>, <extendedcrafting:singularity:28>, <extendedcrafting:singularity:48>, <extendedcrafting:singularity:49>, <extendedcrafting:singularity:50>]);

//Energy condenser recipes

mods.extendedcrafting.CombinationCrafting.addRecipe(<projecte:condenser_mk1>, 50000000, 5000, <equivalentenergistics:emc_storage_component:7>, [<ironchest:iron_shulker_box_purple:2>, <extendedcrafting:storage:6>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:table_ultimate>, <wct:infinity_booster_card>, <extendedcrafting:storage:4>, <appliedenergistics2:material:47>, <megaloot:upgradecharm_epic>, <megaloot:upgradecharm_rare>, <statues:blockshulkerstatue>, <statues:blockguardianstatue>, <statues:blockendermanstatue>, <enderio:block_enderman_skull:2>, <rebornstorage:storagepart:3>, <environmentaltech:void_ore_miner_cont_6>, <botania:pinkinator>, <statues:blockblazestatue>, <statues:blockghaststatue>]);

recipes.addShaped(<refined_avaritia:extreme_pattern>, [[<refinedstorage:pattern>, <refinedstorage:pattern>, <refinedstorage:pattern>],[<refinedstorage:processor:5>, <refinedstorage:storage_part:3>, <refinedstorage:processor:5>], [<refinedstorage:pattern>, <refinedstorage:pattern>, <refinedstorage:pattern>]]);

//empower recipe for black lotus
mods.actuallyadditions.Empowerer.addRecipe(<botania:blacklotus:1>, <botania:blacklotus>, <minecraft:ender_pearl>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, 500, 100);
recipes.addShaped(<botania:blacklotus>, [[null, <enderio:item_material:50>, null],[<enderio:item_material:50>, <minecraft:red_flower>, <enderio:item_material:50>], [null, <enderio:item_material:50>, null]]);


#Creative Mana Pool
mods.extendedcrafting.TableCrafting.addShaped(4, <botania:pool:1>, [
	[	<botania:specialflower>.withTag({type: "endoflame"}), <botania:specialflower>.withTag({type: "hydroangeas"}), <botania:specialflower>.withTag({type: "thermalily"}), <botania:specialflower>.withTag({type: "arcanerose"}), <botania:specialflower>.withTag({type: "munchdew"}), <botania:specialflower>.withTag({type: "entropinnyum"}), <botania:specialflower>.withTag({type: "kekimurus"}), <botania:specialflower>.withTag({type: "gourmaryllis"}), <botania:specialflower>.withTag({type: "narslimmus"})], 
	[	<botania:specialflower>.withTag({type: "spectrolus"}), <botania:spreader:3>, <botania:pylon:2>, <botania:specialflower>.withTag({type: "dandelifeon"}), <botania:specialflower>.withTag({type: "dandelifeon"}), <botania:specialflower>.withTag({type: "dandelifeon"}), <botania:pylon:2>, <botania:spreader:3>, <botania:specialflower>.withTag({type: "rafflowsia"})],
	[	<botania:manaresource:14>, <botania:spark>, <darkutils:shulker_pearl>, <botania:spreader:3>, <botania:pylon:2>, <botania:spreader:3>, <darkutils:shulker_pearl>, <botania:spark>, <botania:manaresource:14>], 
	[	null, <botania:manaresource:14>, <botania:spark>, <botania:elfglass>, <darkutils:shulker_pearl>, <botania:elfglass>, <botania:spark>, <botania:manaresource:14>, null], 
	[	null, <botania:manaresource:14>, <botania:spark>, <botania:elfglass>, <botania:missilerod>, <botania:elfglass>, <botania:spark>, <botania:manaresource:14>, null], 
	[	null, null, <extendedcrafting:material:48>, <botania:spark>, <botania:elfglass>, <botania:spark>, <extendedcrafting:material:48>, null, null], 
	[	<botania:pool:3>, <botania:bifrostperm>, <botania:bifrostperm>, <extendedcrafting:material:48>, <botania:corporeaspark:0>, <extendedcrafting:material:48>, <botania:bifrostperm>, <botania:bifrostperm>, <botania:pool:3>], 
	[	<botania:pool:3>, <botania:ancientwill:0>, <botania:ancientwill:1>, <botania:ancientwill:2>, <extendedcrafting:material:48>, <botania:ancientwill:3>, <botania:ancientwill:4>, <botania:ancientwill:5>, <botania:pool:3>], 
	[	<botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>, <botania:pool:3>]
]);

#Creative Mana Tablet
mods.extendedcrafting.TableCrafting.addShaped(4, <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [
	[	null, null, null, null, null, null, null, null, null],
	[	null, null, null, null, null, null, null, null, null],
	[	null, null, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, null, null],
	[	null, null, <botania:shimmerrock>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <botania:shimmerrock>, null, null],
	[	null, null, <botania:shimmerrock>, <extendedcrafting:material:48>, <botania:pool:1>, <extendedcrafting:material:48>, <botania:shimmerrock>, null, null], 
	[	null, null, <botania:shimmerrock>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <extendedcrafting:material:48>, <botania:shimmerrock>, null, null], 
	[	null, null, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>, null, null], 
	[	null, null, null, null, null, null, null, null, null], 
	[	null, null, null, null, null, null, null, null, null]
]);



#Minimoo feeds
mods.actuallyadditions.Empowerer.addRecipe(<minimoos:goldenessence>, <minecraft:gold_block>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>, 500, 100);
mods.actuallyadditions.Empowerer.addRecipe(<minimoos:demonsoul>, <minecraft:skull:1>, <darkutils:shulker_pearl>, <darkutils:shulker_pearl>, <darkutils:shulker_pearl>, <darkutils:shulker_pearl>, 500, 100);

//BloodMagic crystal block

mods.extendedcrafting.TableCrafting.addShaped(3, <bloodmagic:decorative_brick:2>, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, <bloodmagic:blood_shard>, null, null, null, null], 
	[null, null, null, null, <bloodmagic:blood_rune:1>, null, null, null, null], 
	[null, null, null, <bloodmagic:blood_rune:6>, <bloodmagic:blood_rune:4>, <bloodmagic:blood_rune:6>, null, null, null], 
	[null, <bloodmagic:blood_shard>, <bloodmagic:blood_rune:8>, <bloodmagic:blood_rune:3>, <bloodmagic:decorative_brick>, <bloodmagic:blood_rune:5>, <bloodmagic:blood_rune:1>, <bloodmagic:blood_shard>, null], 
	[null, null, null, <bloodmagic:blood_rune:6>, <bloodmagic:blood_rune:10>, <bloodmagic:blood_rune:6>, null, null, null], 
	[null, null, null, null, <bloodmagic:blood_rune:7>, null, null, null, null], 
	[null, null, null, null, <bloodmagic:blood_shard>, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);
recipes.addShapeless(<bloodmagic:decorative_brick:2>, [<bloodmagic:decorative_brick:3>]);
recipes.addShapeless(<bloodmagic:decorative_brick:3> * 4, [<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>,<bloodmagic:decorative_brick:2>]);


#Creative Storage Upgrade
mods.extendedcrafting.TableCrafting.addShaped(4, <storagedrawers:upgrade_creative>,
[
    [   null, null, null,
        <extendedcrafting:material:1>, <extendedcrafting:material:1>, <extendedcrafting:material:1>,
        null, null, null
    ],
    [   null, <storagedrawers:upgrade_storage:2>, null,
        null, null, null,
        null, <storagedrawers:upgrade_storage:2>, null
    ],
    [   null, null, <storagedrawers:upgrade_storage:3>,
        null, <storagedrawers:upgrade_void>, null,
        <storagedrawers:upgrade_storage:3>, null, null
    ],
    [   <extendedcrafting:material:1>, null, null,
        <storagedrawers:upgrade_storage:4>, null, <storagedrawers:upgrade_storage:4>,
        null, null, <extendedcrafting:material:1>
    ],
    [   <extendedcrafting:material:1>, null, <storagedrawers:upgrade_void>,
        null, <storagedrawers:upgrade_template>, null,
        <storagedrawers:upgrade_void>, null, <extendedcrafting:material:1>
    ],
    [   <extendedcrafting:material:1>, null, null,
        <storagedrawers:upgrade_storage:4>, null, <storagedrawers:upgrade_storage:4>,
        null, null, <extendedcrafting:material:1>
    ],
    [   null, null, <storagedrawers:upgrade_storage:3>,
        null, <storagedrawers:upgrade_void>, null,
        <storagedrawers:upgrade_storage:3>, null, null
    ],
    [   null, <storagedrawers:upgrade_storage:2>, null,
        null, null, null,
        null, <storagedrawers:upgrade_storage:2>, null
    ],
    [   null, null, null,
        <extendedcrafting:material:1>, <extendedcrafting:material:1>, <extendedcrafting:material:1>,
        null, null, null
    ]
]);

