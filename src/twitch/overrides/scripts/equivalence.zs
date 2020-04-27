recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.astralsorcery.Altar.addTraitAltarRecipe("ac3:shaped/internal/altar/philo", <projecte:item.pe_philosophers_stone>, 4500, 100, [
    <extrautils2:opinium:3>, <mekanism:teleportationcore>, <extrautils2:opinium:3>, <mekanism:teleportationcore>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <mekanism:teleportationcore>, <extrautils2:opinium:3>, <mekanism:teleportationcore>, <extrautils2:opinium:3>,
    <alchemistry:ingot:118>, <alchemistry:ingot:118>, <alchemistry:ingot:118>, <alchemistry:ingot:118>,
    <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>,
    <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>, <botania:manaresource:7>
],
"astralsorcery.constellation.mineralis");

recipes.remove(<projecte:collector_mk1>);
recipes.remove(<projecte:collector_mk2>);
recipes.remove(<projecte:collector_mk3>);
recipes.remove(<projecte:transmutation_table>);
recipes.remove(<projecte:item.pe_transmutation_tablet>);
recipes.remove(<projecte:item.pe_time_watch>);
recipes.remove(<projectex:refined_link>);
recipes.remove(<projectex:compressed_refined_link>);

recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.addShaped(<projecte:item.pe_repair_talisman>, [
  [<actuallyadditions:block_item_repairer>, <draconicevolution:reactor_component>, <actuallyadditions:block_item_repairer>],
  [<draconicevolution:reactor_component>, <draconicevolution:reactor_core>, <draconicevolution:reactor_component>],
  [<actuallyadditions:block_item_repairer>, <draconicevolution:reactor_component>, <actuallyadditions:block_item_repairer>]
  ]);

recipes.remove(<equivalentintegrations:soulbound_talisman>);
recipes.addShapeless(<equivalentintegrations:soulbound_talisman>, [<ore:string>, <extrautils2:ingredients>, <minecraft:ender_chest>]);

mods.mekanism.combiner.addRecipe(<minecraft:coal> * 16, <projecte:item.pe_fuel:1>);

recipes.addShaped(<projecte:item.pe_swrg>, [
  [<ore:blockGlass>, <ore:ingotGold>, <ore:blockGlass>],
  [<ore:ingotGold>, <ore:netherStar>, <ore:ingotGold>],
  [<ore:ingotUnstable>, <ore:ingotGold>, <ore:ingotUnstable>]
  ]);

recipes.addShapeless(<projecte:item.pe_swrg>, [<extrautils2:angelring>]);
recipes.addShapeless(<extrautils2:angelring>, [<projecte:item.pe_swrg>]);


recipes.remove(<equivalentintegrations:transmutation_generator>);
recipes.addShaped(<equivalentintegrations:transmutation_generator>, [
  [<extrautils2:decorativesolid:3>, <mekanismgenerators:reactor>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <extrautils2:machine>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]
  ]);

recipes.remove(<equivalentintegrations:transmutation_disassembler>);
recipes.addShaped(<equivalentintegrations:transmutation_disassembler>, [
  [<extrautils2:decorativesolid:3>, <actuallyadditions:block_atomic_reconstructor>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <extrautils2:machine>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]
  ]);


recipes.remove(<equivalentintegrations:transmutation_chamber>);
recipes.addShaped(<equivalentintegrations:transmutation_chamber>, [
  [<extrautils2:decorativesolid:3>, <projectex:personal_link>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <extrautils2:machine>, <extrautils2:decorativesolid:3>],
  [<extrautils2:decorativesolid:3>, <projectex:matter:11>, <extrautils2:decorativesolid:3>]
  ]);

recipes.remove(<equivalentintegrations:efficiency_catalyst>);
recipes.addShaped(<equivalentintegrations:efficiency_catalyst>, [
  [<projectex:final_star_shard>, <projectex:final_star_shard>, <projectex:final_star_shard>],
  [<projectex:final_star_shard>, <projectex:matter:11>, <projectex:final_star_shard>],
  [<projectex:final_star_shard>, <projectex:final_star_shard>, <projectex:final_star_shard>]
  ]);

recipes.remove(<equivalentintegrations:alchemical_algorithms>);
recipes.addShapeless(<equivalentintegrations:alchemical_algorithms>, [<projectex:knowledge_sharing_book>]);

recipes.remove(<projecte:condenser_mk1>);
recipes.addShaped(<projecte:condenser_mk1>, [
  [<projectex:matter:4>, <projecte:alchemical_chest>, <projectex:matter:4>],
  [<projectex:matter:6>, <appliedenergistics2:condenser>, <projectex:matter:6>],
  [<projectex:matter:4>, <projectex:matter:6>,<projectex:matter:4>]
  ]);
