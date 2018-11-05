#Name: exchangers.zs
#Author: Feed the Beast

print("Initializing 'exchangers.zs'...");

#remove non powered exchangers
mods.jei.JEI.removeAndHide(<exchangers:tuberous_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:wooden_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:stone_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:golden_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:iron_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:diamond_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:emerald_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:obsidian_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:exchanger_core_tier1>);
mods.jei.JEI.removeAndHide(<exchangers:exchanger_core_tier3>);
mods.jei.JEI.removeAndHide(<exchangers:exchanger_core_tier2>);

#ie exchangers
mods.jei.JEI.removeAndHide(<exchangers:ie_exchanger_core_tier3>);
mods.jei.JEI.removeAndHide(<exchangers:ie_exchanger_core_tier2>);
mods.jei.JEI.removeAndHide(<exchangers:ie_exchanger_core_tier1>);
mods.jei.JEI.removeAndHide(<exchangers:hv_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:mv_exchanger>);
mods.jei.JEI.removeAndHide(<exchangers:lv_exchanger>);


print("Initialized 'exchangers.zs'");