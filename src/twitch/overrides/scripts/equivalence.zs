recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.astralsorcery.Altar.addTraitAltarRecipe("ac3:shaped/internal/altar/philo", <projecte:item.pe_philosophers_stone>, 4500, 100, [
    <extrautils2:opinium:3>, <mekanism:teleportationcore>, <extrautils2:opinium:3>, <mekanism:teleportationcore>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <mekanism:teleportationcore>, <extrautils2:opinium:3>, <mekanism:teleportationcore>, <extrautils2:opinium:3>,
    <alchemistry:ingot:118>, <alchemistry:ingot:118>, <alchemistry:ingot:118>, <alchemistry:ingot:118>,
    <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>,
    <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>
],
"astralsorcery.constellation.mineralis");

recipes.remove(<projecte:transmutation_table>);
recipes.remove(<projecte:item.pe_transmutation_tablet>);
recipes.remove(<projecte:condenser_mk1>);

recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShaped(<projecte:item.pe_repair_talisman>, [
  [<actuallyadditions:block_item_repairer>, <draconicevolution:reactor_component>, <actuallyadditions:block_item_repairer>],
  [<draconicevolution:reactor_component>, <draconicevolution:reactor_core>, <draconicevolution:reactor_component>],
  [<actuallyadditions:block_item_repairer>, <draconicevolution:reactor_component>, <actuallyadditions:block_item_repairer>]
  ]);

recipes.addShaped(<projecte:item.pe_swrg>, [
  [<ore:blockGlass>, <ore:ingotGold>, <ore:blockGlass>],
  [<ore:ingotGold>, <ore:netherStar>, <ore:ingotGold>],
  [<ore:ingotUnstable>, <ore:ingotGold>, <ore:ingotUnstable>]
  ]);
recipes.addShapeless(<projecte:item.pe_swrg>, [<extrautils2:angelring>]);
recipes.addShapeless(<extrautils2:angelring>, [<projecte:item.pe_swrg>]);
