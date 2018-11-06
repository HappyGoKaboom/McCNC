import crafttweaker.item.IItemStack;

print("Slabs");

val saw = <ore:toolSawFlint>;
val sawMetal = <ore:toolSawMetal>;
val sawGem = <ore:toolSawGem>;

val slabs = [	<minecraft:wooden_slab>,
				<biomesoplenty:wood_slab_0>,
				<biomesoplenty:wood_slab_1>,
				<forestry:slabs.0>,
				<forestry:slabs.1>,
				<forestry:slabs.2>,
				<forestry:slabs.3>,
				<forestry:slabs.fireproof.0>,
				<forestry:slabs.fireproof.1>,
				<forestry:slabs.fireproof.2>,
				<forestry:slabs.fireproof.3>,
				<forestry:slabs.vanilla.fireproof.0>,
				<terraqueous:type_earth>,
				<earthworks:itemslab_adobe>
			] as IItemStack[];
val planks = [	<minecraft:planks>,
				<biomesoplenty:planks_0>,
				<biomesoplenty:planks_0>,
				<forestry:planks.0>,
				<forestry:planks.0>,
				<forestry:planks.1>,
				<forestry:planks.1>,
				<forestry:planks.fireproof.0>,
				<forestry:planks.fireproof.0>,
				<forestry:planks.fireproof.1>,
				<forestry:planks.fireproof.1>,
				<forestry:planks.vanilla.fireproof.0>,
				<terraqueous:planks>,
				<earthworks:block_adobe>
			] as IItemStack[];
val sizes =      [6,8,8,8,8,8,5,8,8,8,5,6,10,1] as int[];
val slabstart =  [0,0,0,0,0,0,0,0,0,0,0,0,50,0] as int[];
val plankstart = [0,0,8,0,8,0,8,0,8,0,8,0,0,0] as int[];
   
for i, slab in slabs {
	for j in 0 to sizes[i] {
		recipes.remove(slab.definition.makeStack(slabstart[i]+j));
		recipes.addShaped(slab.definition.makeStack(slabstart[i]+j) * 2, [[saw], [planks[i].definition.makeStack(plankstart[i]+j)]]);
		recipes.addShaped(slab.definition.makeStack(slabstart[i]+j) * 2, [[sawMetal], [planks[i].definition.makeStack(plankstart[i]+j)]]);
		recipes.addShaped(slab.definition.makeStack(slabstart[i]+j) * 2, [[sawGem], [planks[i].definition.makeStack(plankstart[i]+j)]]);
		recipes.addShaped(planks[i].definition.makeStack(plankstart[i]+j), [[slab.definition.makeStack(slabstart[i]+j)], [slab.definition.makeStack(slabstart[i]+j)]]);
	}
}

val slabs2 = [	<minecraft:stone_slab:0>,
				<minecraft:stone_slab:1>,
				<minecraft:stone_slab:3>,
				<minecraft:stone_slab:4>,
				<minecraft:stone_slab:5>,
				<minecraft:stone_slab:6>,
				<minecraft:stone_slab:7>,
				<embers:block_caminite_brick_slab>
			] as IItemStack[];
val stones = [	<minecraft:stone>,	
				<minecraft:sandstone>,
				<minecraft:cobblestone>,
				<minecraft:brick_block>,
				<minecraft:stonebrick>,
				<minecraft:nether_brick>,
				<minecraft:quartz_block>,
				<embers:block_caminite_brick>
			] as IItemStack[];
   
for k, slab2 in slabs2 {
	recipes.remove(slab2);
	recipes.addShaped(slab2 * 2, [[sawMetal], [stones[k]]]);
	recipes.addShaped(slab2 * 2, [[sawGem], [stones[k]]]);
}