import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.addDescription as ad;
# Custom recipes made by NillerMedDild
	print("--- loading Tooltips.zs ---");

# *======= Variables =======*

	var metallurgic = format.red("(Only obtainable through the Metallurgic Infuser)");
	var atomicReconstructor = format.red("(Only obtainable through the Atomic Reconstructor)");

# *======= Adding Tooltips =======*

# Blood Magic Guide
	ad(<guideapi:bloodmagic-guide>, "Sneak-Right-Click on a Blood Altar with this book, and it will show you where to place the appropriate blocks for the different Blood Altar tiers. Right-click to change tier.");

# Thaumonomicon
	ad(<thaumcraft:thaumonomicon>, "Made by right-clicking a Bookshelf with Salis Mundus.");

# Arcane Workbench
	ad(<thaumcraft:arcane_workbench>, "Made by right-clicking a Crafting Table with Salis Mundus.");

# Crucible
	ad(<thaumcraft:crucible>, "Made by right-clicking a Cauldron with Salis Mundus.");

# Blood Magic Wills
	ad(<bloodmagic:item_demon_crystal>, "Obtained through the Gathering of the Forsaken Souls ritual.");
	ad(<bloodmagic:item_demon_crystal:1>, "Obtained through the Resonance of the Faceted Crystal ritual.");
	ad(<bloodmagic:item_demon_crystal:2>, "Obtained through the Resonance of the Faceted Crystal ritual.");
	ad(<bloodmagic:item_demon_crystal:3>, "Obtained through the Resonance of the Faceted Crystal ritual.");
	ad(<bloodmagic:item_demon_crystal:4>, "Obtained through the Resonance of the Faceted Crystal ritual.");

# Bibliocraft Clipboard
	<bibliocraft:biblioclipboard>.addTooltip(format.red("(Removed due to instability issues)"));
	
	<libvulpes:productingot:7>.addTooltip(format.red("(Craftable)"));

	<natura:redwood_sapling>.addTooltip("Caution: This tree is insanely big!");

	<harvestcraft:market>.addTooltip(format.red("Disabled. Use the Market from Farming For Blockheads."));
		
	