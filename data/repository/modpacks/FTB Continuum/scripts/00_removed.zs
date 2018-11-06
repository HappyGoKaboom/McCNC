#Name: removed.zs
#Author: Feed the Beast

print("Initializing 'removed.zs'...");

#vanilla tools (forced into efab)
recipes.remove(<minecraft:iron_shovel>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:iron_axe>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:stone_hoe>);
recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:golden_hoe>);

#vanilla armor (forced into efab)
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);
recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);

#chest (forced into efab)
recipes.remove(<minecraft:chest>);
recipes.remove(<quark:custom_chest:1>);
recipes.remove(<quark:custom_chest>);
recipes.remove(<quark:custom_chest:2>);
recipes.remove(<quark:custom_chest:3>);
recipes.remove(<quark:custom_chest:4>);

#piston (forced into efab)
recipes.remove(<minecraft:piston>);

#gears (forced into TiC smeltery/machines)
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:258>);
recipes.remove(<thermalfoundation:material:259>);
recipes.remove(<thermalfoundation:material:260>);
recipes.remove(<thermalfoundation:material:261>);
recipes.remove(<thermalfoundation:material:262>);
recipes.remove(<thermalfoundation:material:294>);
recipes.remove(<thermalfoundation:material:293>);
recipes.remove(<thermalfoundation:material:292>);
recipes.remove(<thermalfoundation:material:291>);
recipes.remove(<thermalfoundation:material:290>);
recipes.remove(<thermalfoundation:material:289>);
recipes.remove(<thermalfoundation:material:288>);
recipes.remove(<thermalfoundation:material:264>);
recipes.remove(<thermalfoundation:material:263>);
recipes.remove(<thermalfoundation:material:295>);

#remove leather crafting
recipes.remove(<minecraft:leather>);

#black quartz (removed from world gen and forced into efab)
recipes.remove(<actuallyadditions:item_misc:5>);

#hardened leather armor
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherhelmitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherchestitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherleggingsitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:hardenedleatherbootsitem>);

#thermoelectric generator
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device1:3>);

#tech reborn rubber/sap
mods.jei.JEI.removeAndHide(<techreborn:part:32>);
mods.jei.JEI.removeAndHide(<techreborn:part:31>);

#lumbermill
mods.jei.JEI.removeAndHide(<extratrees:machine>);

#silicon moved into efab
recipes.remove(<appliedenergistics2:material:5>);
recipes.remove(<refinedstorage:silicon>);

#lava power production
mods.jei.JEI.removeAndHide(<techreborn:thermal_generator>);
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
mods.jei.JEI.removeAndHide(<thermalexpansion:dynamo:1>);

#exu generators
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator:1>);
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator:2>);
mods.jei.JEI.removeAndHide(<extrautils2:rainbowgenerator>);

#iron alloy furnance
mods.jei.JEI.removeAndHide(<techreborn:iron_alloy_furnace>);

#exu power transfer node
mods.jei.JEI.removeAndHide(<extrautils2:grocket:6>);

#TR drills (AA drill does the same)
mods.jei.JEI.removeAndHide(<techreborn:irondrill>.withTag({}));
mods.jei.JEI.removeAndHide(<techreborn:diamonddrill>.withTag({}));
mods.jei.JEI.removeAndHide(<techreborn:advanceddrill>.withTag({}));

#tinkers unused tool forges
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:iron_block", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 3 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "chisel:blockcobalt", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 2 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:gold_block", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 5 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 1 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "techreborn:storage", Count: 1 as byte, Damage: 5 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 3 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 3 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 2 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 1 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage", Count: 1 as byte, Damage: 4 as short}}));
mods.jei.JEI.removeAndHide(<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 0 as short}}));

#automated mining machines
#mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens_inverted:*>);
#mods.jei.JEI.removeAndHide(<industrialforegoing:laser_lens:*>);
#mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device1:7>);
mods.jei.JEI.removeAndHide(<immersiveengineering:drill>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:3>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:2>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:5>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:6>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:7>);
#mods.jei.JEI.removeAndHide(<rftools:shape_card:4>);
#mods.jei.JEI.removeAndHide(<extrautils2:quarryproxy>);
#mods.jei.JEI.removeAndHide(<extrautils2:quarry>);
mods.jei.JEI.removeAndHide(<immersiveengineering:drillhead>);
mods.jei.JEI.removeAndHide(<immersiveengineering:drillhead:1>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_base>);
mods.jei.JEI.removeAndHide(<industrialforegoing:laser_drill>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_miner>);

#5x5 drill augment
mods.jei.JEI.removeAndHide(<actuallyadditions:item_drill_upgrade_five_by_five>);

#tic plate cast
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:3>);
mods.jei.JEI.removeAndHide(<tconstruct:clay_cast>);

#biogas engine
mods.jei.JEI.removeAndHide(<forestry:engine_biogas>);

#mega torch (moved into efab)
recipes.remove(<torchmaster:mega_torch>);

#te machine frames (moved into efab)
recipes.remove(<thermalexpansion:frame:64>);
recipes.remove(<thermalexpansion:frame>);

#tf coversion kits (bypasses progression)
mods.jei.JEI.removeAndHide(<thermalfoundation:upgrade:33>);
mods.jei.JEI.removeAndHide(<thermalfoundation:upgrade:34>);
mods.jei.JEI.removeAndHide(<thermalfoundation:upgrade:35>);
mods.jei.JEI.removeAndHide(<thermalfoundation:upgrade:256>);

#te numismatic dynamo
mods.jei.JEI.removeAndHide(<thermalexpansion:dynamo:5>);

#td fluid ducts (copper ones)
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16>);
mods.jei.JEI.removeAndHide(<thermaldynamics:duct_16:1>);

#refined storage (not used for autocrafting)
mods.jei.JEI.removeAndHide(<refinedstorage:crafter>);
mods.jei.JEI.removeAndHide(<refinedstorage:security_manager>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_monitor>);
mods.jei.JEI.removeAndHide(<refinedstorage:crafting_monitor>);
mods.jei.JEI.removeAndHide(<refinedstorage:portable_grid>);
mods.jei.JEI.removeAndHide(<refinedstorage:portable_grid:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:grid:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:grid:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:pattern>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_disk>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage_disk:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_receiver>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_transmitter>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_transmitter>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_interface>);
mods.jei.JEI.removeAndHide(<refinedstorage:interface>);
mods.jei.JEI.removeAndHide(<refinedstorage:relay>);
mods.jei.JEI.removeAndHide(<refinedstorage:detector>);
mods.jei.JEI.removeAndHide(<refinedstorage:writer>);
mods.jei.JEI.removeAndHide(<refinedstorage:reader>);
mods.jei.JEI.removeAndHide(<refinedstorage:destructor>);
mods.jei.JEI.removeAndHide(<refinedstorage:constructor>);
#mods.jei.JEI.removeAndHide(<refinedstorage:exporter>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:storage:4>);
mods.jei.JEI.removeAndHide(<refinedstorage:controller:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_fluid_grid:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_fluid_grid>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_crafting_monitor>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_grid:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:wireless_grid>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:2>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part:1>);
mods.jei.JEI.removeAndHide(<refinedstorage:fluid_storage_part>);
mods.jei.JEI.removeAndHide(<refinedstorage:security_card>);
mods.jei.JEI.removeAndHide(<refinedstorage:network_card>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:9>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:8>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:7>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:6>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:5>);
mods.jei.JEI.removeAndHide(<refinedstorage:upgrade:3>);
mods.jei.JEI.removeAndHide(<refinedstorage:crafter_manager>);

#TiC EFLN
mods.jei.JEI.removeAndHide(<tconstruct:throwball:1>);

#vulpes duplicates
mods.jei.JEI.removeAndHide(<libvulpes:productrod:6>);
mods.jei.JEI.removeAndHide(<libvulpes:productrod:1>);
mods.jei.JEI.removeAndHide(<libvulpes:productplate:7>);

#environmental controller
mods.jei.JEI.removeAndHide(<rftools:environmental_controller>);

#unused diamond nuggets
mods.jei.JEI.removeAndHide(<thermalfoundation:material:16>);
mods.jei.JEI.removeAndHide(<translocators:diamond_nugget>);

#block placers
mods.jei.JEI.removeAndHide(<industrialforegoing:block_placer>);
mods.jei.JEI.removeAndHide(<openblocks:block_placer>);
mods.jei.JEI.removeAndHide(<extrautils2:user>);

#block breakers
mods.jei.JEI.removeAndHide(<industrialforegoing:block_destroyer>);
mods.jei.JEI.removeAndHide(<openblocks:block_breaker>);
mods.jei.JEI.removeAndHide(<extrautils2:miner>);

#golden egg
mods.jei.JEI.removeAndHide(<openblocks:golden_egg>);

#actuallyadditions
#mods.jei.JEI.removeAndHide(<actuallyadditions:block_ranged_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_leaf_generator>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_xp_solidifier>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_heat_collector>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_solar>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_double>);
mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder_double>);

#sickles
mods.jei.JEI.removeAndHide(<extrautils2:sickle_wood>);
mods.jei.JEI.removeAndHide(<extrautils2:sickle_stone>);

#exu wands
mods.jei.JEI.removeAndHide(<extrautils2:itembuilderswand>);
mods.jei.JEI.removeAndHide(<extrautils2:itemdestructionwand>);

#terrian lighter
mods.jei.JEI.removeAndHide(<torchmaster:terrain_lighter>);

#remove survivalist tools
mods.jei.JEI.removeAndHide(<forestry:kit_shovel>);
mods.jei.JEI.removeAndHide(<forestry:broken_bronze_shovel>);
mods.jei.JEI.removeAndHide(<forestry:broken_bronze_pickaxe>);
mods.jei.JEI.removeAndHide(<forestry:kit_pickaxe>);
mods.jei.JEI.removeAndHide(<forestry:bronze_pickaxe>);
mods.jei.JEI.removeAndHide(<forestry:bronze_shovel>);

#ar press
mods.jei.JEI.removeAndHide(<advancedrocketry:platepress>);

#environmental modules
mods.jei.JEI.removeAndHide(<rftools:regeneration_module>);
mods.jei.JEI.removeAndHide(<rftools:regenerationplus_module>);
mods.jei.JEI.removeAndHide(<rftools:speed_module>);
mods.jei.JEI.removeAndHide(<rftools:speedplus_module>);
mods.jei.JEI.removeAndHide(<rftools:haste_module>);
mods.jei.JEI.removeAndHide(<rftools:flight_module>);
mods.jei.JEI.removeAndHide(<rftools:featherfallingplus_module>);
mods.jei.JEI.removeAndHide(<rftools:featherfalling_module>);
mods.jei.JEI.removeAndHide(<rftools:saturationplus_module>);
mods.jei.JEI.removeAndHide(<rftools:luck_module>);
mods.jei.JEI.removeAndHide(<rftools:glowing_module>);
mods.jei.JEI.removeAndHide(<rftools:slowness_module>);
mods.jei.JEI.removeAndHide(<rftools:saturation_module>);
mods.jei.JEI.removeAndHide(<rftools:hasteplus_module>);
mods.jei.JEI.removeAndHide(<rftools:peaceful_module>);
mods.jei.JEI.removeAndHide(<rftools:waterbreathing_module>);
mods.jei.JEI.removeAndHide(<rftools:nightvision_module>);
mods.jei.JEI.removeAndHide(<rftools:blindness_module>);
mods.jei.JEI.removeAndHide(<rftools:weakness_module>);
mods.jei.JEI.removeAndHide(<rftools:poison_module>);
mods.jei.JEI.removeAndHide(<rftools:noteleport_module>);

#ExU wireless transmitter
mods.jei.JEI.removeAndHide(<extrautils2:powertransmitter>);

#IF energy field
mods.jei.JEI.removeAndHide(<industrialforegoing:energy_field_provider>);
mods.jei.JEI.removeAndHide(<industrialforegoing:energy_field_addon>);

#stone dusts
mods.jei.JEI.removeAndHide(<techreborn:dust:63>);
mods.jei.JEI.removeAndHide(<techreborn:smalldust:65>);
mods.jei.JEI.removeAndHide(<techreborn:dust:62>);
mods.jei.JEI.removeAndHide(<techreborn:smalldust:64>);
mods.jei.JEI.removeAndHide(<techreborn:dust:61>);
mods.jei.JEI.removeAndHide(<techreborn:smalldust:63>);

#TE augments not used
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:256>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:257>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:258>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:273>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:303>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:304>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:336>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:337>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:656>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:720>);

#TE alloy hardened glass
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:8>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:7>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:6>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:5>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:4>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:2>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass:1>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:5>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:4>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:1>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:2>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:3>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:7>);
mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy:6>);

#AE2stuff wireless connector
mods.jei.JEI.removeAndHide(<ae2stuff:wireless>);
mods.jei.JEI.removeAndHide(<ae2stuff:wireless_kit>);

#malisis trap doors (content overlap with quark)
#mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_acacia>);
#mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_birch>);
#mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_dark_oak>);
#mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_jungle>);
#mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_spruce>);

#TE coal coke/block
mods.jei.JEI.removeAndHide(<thermalfoundation:material:802>);
mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource:1>);

#telsa core machine case
recipes.remove(<teslacorelib:machine_case>);

#temp disable fluid interface until dupe bug is sorted
#recipes.remove(<extracells:part.base:9>);
#<extracells:part.base:9>.addTooltip(format.darkRed("Temporarily disabled until dupe bug is fixed!"));

#enviromental tech resource blocks
recipes.remove(<environmentaltech:ionite>);
recipes.remove(<environmentaltech:erodium>);
recipes.remove(<environmentaltech:kyronite>);
recipes.remove(<environmentaltech:pladium>);
recipes.remove(<environmentaltech:litherite>);
recipes.remove(<environmentaltech:aethium>);
recipes.remove(<environmentaltech:lonsdaleite>);

print("Initialized 'removed.zs'");