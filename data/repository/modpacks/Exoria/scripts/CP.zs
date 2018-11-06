print("Capability Proxy");

// Capability Proxy
recipes.remove(<capabilityproxy:capability_proxy>);
recipes.addShaped(<capabilityproxy:capability_proxy>, [[null, <ore:chest>, null], [<actuallyadditions:item_crystal_empowered:2>, <minecraft:redstone_block>, <actuallyadditions:item_crystal_empowered:2>], [null, <actuallyadditions:item_crystal:5>, null]]);

// Entity Proxy
recipes.remove(<capabilityproxy:entity_capability_proxy>);
recipes.addShapeless(<capabilityproxy:entity_capability_proxy>, [<capabilityproxy:capability_proxy>, <botania:manaresource:8>]);

// Ranged Proxy
recipes.remove(<capabilityproxy:ranged_capability_proxy>);
recipes.addShapeless(<capabilityproxy:ranged_capability_proxy>, [<capabilityproxy:capability_proxy>, <actuallyadditions:block_misc:6>]);