print("Refined Storage");

// Disk
recipes.remove(<refinedstorage:storage_part>);
recipes.addShaped(<refinedstorage:storage_part>, [[<ore:itemSilicon>, <refinedstorage:quartz_enriched_iron>, <ore:itemSilicon>], [<ore:blockGlass>, <magneticraft:floppy_disk>, <ore:blockGlass>], [<ore:itemSilicon>, <ore:blockGlass>, <ore:itemSilicon>]]);

// Quartz Enriched Iron
recipes.removeShaped(<refinedstorage:quartz_enriched_iron>);
<refinedstorage:quartz_enriched_iron>.displayName = "Duraluminium";
<refinedstorage:quartz_enriched_iron_block>.displayName = "Block of Duraluminium";