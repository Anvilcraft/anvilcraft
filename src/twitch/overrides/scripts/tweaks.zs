recipes.addShapeless(<forestry:fertilizer_compound>, [<ore:fertilizer>]);
<ore:fertilizer>.add(<alchemistry:fertilizer>);
<ore:fertilizer>.add(<ic2:crop_res:2>);

mods.alchemistry.Atomizer.addRecipe(<alchemistry:compound:26> * 32, <liquid:bio.ethanol>*500);
mods.alchemistry.Liquifier.addRecipe(<liquid:bio.ethanol>*500, <alchemistry:compound:26> * 32);
