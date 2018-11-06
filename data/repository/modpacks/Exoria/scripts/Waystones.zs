print("Waystones");

// Disable Waystone
recipes.remove(<waystones:waystone>);

// Warp Stone
recipes.remove(<waystones:warp_stone>);
recipes.addShaped(<waystones:warp_stone>, [[null, <roots:runestone>, null], [<roots:runestone>, <botania:manaresource:8>, <roots:runestone>], [null, <roots:runestone>, null]]);

// Disable and Hide Rest
mods.jei.JEI.removeAndHide(<waystones:return_scroll>);
mods.jei.JEI.removeAndHide(<waystones:warp_scroll>);