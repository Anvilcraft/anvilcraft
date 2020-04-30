//infuison crystal remove
recipes.remove(<mysticalagriculture:master_infusion_crystal>);
recipes.remove(<mysticalagriculture:infusion_crystal>);

//infusion crystals
recipes.addShapedMirrored(<mysticalagriculture:infusion_crystal>, 
	[[<mysticalagriculture:crafting>, <bloodmagic:slate:2>, <mysticalagriculture:crafting>],
	[<wizardry:unicorn_horn>, <botania:manaresource:9>, <wizardry:unicorn_horn>], 
	[<mysticalagriculture:crafting>, <bloodmagic:slate:2>, <mysticalagriculture:crafting>]]);

recipes.addShapedMirrored(<mysticalagriculture:master_infusion_crystal>, 
	[[<mysticalagriculture:crafting:4>, <thaumcraft:ingot:1>, <mysticalagriculture:crafting:4>],
	[<astralsorcery:itemshiftingstar>, <mysticalagriculture:infusion_crystal>, <astralsorcery:itemshiftingstar>], 
	[<mysticalagriculture:crafting:4>, <thaumcraft:ingot:1>, <mysticalagriculture:crafting:4>]]);

//seeds changed
recipes.remove(<<mysticalagriculture:crafting:16>>);
recipes.addShapedMirrored(<mysticalagriculture:crafting:16>, 
	[[<projecte:item.pe_matter>, <heroesexpansion:heart_shaped_herb_potion>, <appliedenergistics2:material:47>],
	[<bloodmagic:slate:4>, <extrautils2:enderlilly>, <botania:manaresource:4>], 
	[<draconicevolution:wyvern_core>, <integrateddynamics:logic_director>, <embers:ember_cluster>]]);

