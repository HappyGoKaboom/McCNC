#Name: durability.zs
#Author: Feed the Beast

print("Initializing 'durability.zs'...");

#all in one tools
<minecraft:wooden_pickaxe>.maxDamage = 1;
<minecraft:wooden_sword>.maxDamage = 1;
<minecraft:wooden_shovel>.maxDamage = 1;
<minecraft:wooden_axe>.maxDamage = 1;
<minecraft:wooden_hoe>.maxDamage = 1;
<actuallyadditions:wooden_paxel>.maxDamage = 1;

#sickles
<extrautils2:sickle_iron>.maxDamage = 500;
<extrautils2:sickle_gold>.maxDamage = 64;
<extrautils2:sickle_diamond>.maxDamage = 3122;

print("Initialized 'durability.zs'");