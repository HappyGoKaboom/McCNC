#Name: ironBackpacks.zs
#Author: Feed the Beast

print("Initializing 'ironBackpacks.zs'...");

#leather backpack
recipes.remove(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}));
recipes.addShaped(<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}), [[<ore:blockWool>, <harvestcraft:hardenedleatheritem>, <ore:blockWool>], [<harvestcraft:hardenedleatheritem>, <ore:chest>, <harvestcraft:hardenedleatheritem>], [<ore:blockWool>, <harvestcraft:hardenedleatheritem>, <ore:blockWool>]]);

print("Initialized 'ironBackpacks.zs'");