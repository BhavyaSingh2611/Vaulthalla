/* scripts made by Douwsky
for Iskall85's Vaulthunters */


import mods.jei.JEI;

// adding recipes

// shapeless chromatic steel ingot
craftingTable.removeByName("the_vault:chromatic_steel_ingot");
craftingTable.addShapeless("vaulthalla_chromatic_steel_ingot", <item:the_vault:chromatic_steel_ingot>, [
    <item:the_vault:chromatic_iron_ingot>,
    <item:the_vault:chromatic_iron_ingot>,
    <item:the_vault:chromatic_iron_ingot>,
    <item:the_vault:chromatic_iron_ingot>,
    <item:the_vault:carbon>,
    <item:the_vault:carbon>
]);

//vault meat
craftingTable.addShapeless("vaulthalla_vault_meat", <item:the_vault:vault_meat> * 9, [<item:the_vault:vault_meat_block>]);
craftingTable.addShapeless("vaulthalla_vault_meat_block", <item:the_vault:vault_meat_block> * 9, [<item:the_vault:packed_vault_meat_block>]);

// RS and AE Infinity Booster Cards
craftingTable.remove(<item:rsinfinitybooster:infinity_card>);
craftingTable.remove(<item:aeinfinitybooster:infinity_card>);
craftingTable.remove(<item:rsinfinitybooster:dimension_card>);
craftingTable.remove(<item:aeinfinitybooster:dimension_card>);
craftingTable.addShaped("rs_infinity_card", <item:rsinfinitybooster:infinity_card>, [
    [<item:the_vault:gem_pog>, <item:refinedstorage:range_upgrade>, <item:the_vault:gem_pog>],
    [<item:refinedstorage:range_upgrade>, <item:the_vault:echo_pog>, <item:refinedstorage:range_upgrade>],
    [<item:the_vault:extraordinary_larimar>, <item:the_vault:extraordinary_larimar>, <item:the_vault:extraordinary_larimar>]
]);
craftingTable.addShaped("ae_infinity_card", <item:aeinfinitybooster:infinity_card>, [
    [<item:the_vault:gem_pog>, <item:ae2:wireless_booster>, <item:the_vault:gem_pog>],
    [<item:ae2:wireless_booster>, <item:the_vault:echo_pog>, <item:ae2:wireless_booster>],
    [<item:the_vault:extraordinary_larimar>, <item:the_vault:extraordinary_larimar>, <item:the_vault:extraordinary_larimar>]
]);
craftingTable.addShaped("rs_dimension_card", <item:rsinfinitybooster:dimension_card>, [
    [<item:the_vault:gem_pog>, <item:the_vault:echo_pog>, <item:the_vault:gem_pog>],
    [<item:the_vault:chromatic_steel_block>, <item:rsinfinitybooster:infinity_card>, <item:the_vault:chromatic_steel_block>],
    [<item:the_vault:gem_pog>, <item:the_vault:black_chromatic_steel_block>, <item:the_vault:gem_pog>]
]);
craftingTable.addShaped("ae_dimension_card", <item:aeinfinitybooster:dimension_card>, [
    [<item:the_vault:gem_pog>, <item:the_vault:echo_pog>, <item:the_vault:gem_pog>],
    [<item:the_vault:chromatic_steel_block>, <item:aeinfinitybooster:infinity_card>, <item:the_vault:chromatic_steel_block>],
    [<item:the_vault:gem_pog>, <item:the_vault:black_chromatic_steel_block>, <item:the_vault:gem_pog>]
]);
//JEI.hideIngredient(<item:rsinfinitybooster:dimension_card>);
//JEI.hideIngredient(<item:aeinfinitybooster:dimension_card>);

// fix ingots
furnace.remove(<item:mekanism:ingot_bronze>);
furnace.addRecipe("vaulthalla_furnace_mekanism_bronze", <item:mekanism:ingot_bronze>, <item:mekanism:dust_bronze>, 0.35, 200);
blastFurnace.remove(<item:mekanism:ingot_bronze>);
blastFurnace.addRecipe("vaulthalla_blastfurnace_mekanism_bronze", <item:mekanism:ingot_bronze>, <item:mekanism:dust_bronze>, 0.35, 100);
craftingTable.addShapeless("vaulthalla_convert_mekanism_bronze_ingot", <item:mekanism:ingot_bronze>, [
    <item:thermal:bronze_ingot>
]);
craftingTable.addShapeless("vaulthalla_convert_thermal_bronze_ingot", <item:thermal:bronze_ingot>, [
    <item:mekanism:ingot_bronze>
]);

furnace.remove(<item:mekanism:ingot_tin>);
furnace.addRecipe("vaulthalla_furnace_mekanism_tin_from_dust", <item:mekanism:ingot_tin>, <item:mekanism:dust_tin>, 0.3, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_tin_from_raw", <item:mekanism:ingot_tin>, <item:mekanism:raw_tin>, 0.6, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_tin_from_ore", <item:mekanism:ingot_tin>, <item:mekanism:tin_ore>, 0.6, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_tin_from_deepslate_ore", <item:mekanism:ingot_tin>, <item:mekanism:deepslate_tin_ore>, 0.6, 200);
blastFurnace.remove(<item:mekanism:ingot_tin>);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_tin_from_dust", <item:mekanism:ingot_tin>, <item:mekanism:dust_tin>, 0.3, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_tin_from_raw", <item:mekanism:ingot_tin>, <item:mekanism:raw_tin>, 0.6, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_tin_from_ore", <item:mekanism:ingot_tin>, <item:mekanism:tin_ore>, 0.6, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_tin_from_deepslate_ore", <item:mekanism:ingot_tin>, <item:mekanism:deepslate_tin_ore>, 0.6, 100);
craftingTable.addShapeless("vaulthalla_convert_mekanism_tin_ingot", <item:mekanism:ingot_tin>, [
    <item:thermal:tin_ingot>
]);
craftingTable.addShapeless("vaulthalla_convert_thermal_tin_ingot", <item:thermal:tin_ingot>, [
    <item:mekanism:ingot_tin>
]);

furnace.remove(<item:mekanism:ingot_lead>);
furnace.addRecipe("vaulthalla_furnace_mekanism_lead_from_dust", <item:mekanism:ingot_lead>, <item:mekanism:dust_lead>, 0.3, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_lead_from_raw", <item:mekanism:ingot_lead>, <item:mekanism:raw_lead>, 0.6, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_lead_from_ore", <item:mekanism:ingot_lead>, <item:mekanism:lead_ore>, 0.6, 200);
furnace.addRecipe("vaulthalla_furnace_mekanism_lead_from_deepslate_ore", <item:mekanism:ingot_lead>, <item:mekanism:deepslate_lead_ore>, 0.6, 200);
blastFurnace.remove(<item:mekanism:ingot_lead>);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_lead_from_dust", <item:mekanism:ingot_lead>, <item:mekanism:dust_lead>, 0.3, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_lead_from_raw", <item:mekanism:ingot_lead>, <item:mekanism:raw_lead>, 0.6, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_lead_from_ore", <item:mekanism:ingot_lead>, <item:mekanism:lead_ore>, 0.6, 100);
blastFurnace.addRecipe("vaulthalla_blast_furnace_mekanism_lead_from_deepslate_ore", <item:mekanism:ingot_lead>, <item:mekanism:deepslate_lead_ore>, 0.6, 100);
craftingTable.addShapeless("vaulthalla_convert_mekanism_lead_ingot", <item:mekanism:ingot_lead>, [
    <item:thermal:lead_ingot>
]);
craftingTable.addShapeless("vaulthalla_convert_thermal_lead_ingot", <item:thermal:lead_ingot>, [
    <item:mekanism:ingot_lead>
]);

//Sophisticated Backpack Tweaks
craftingTable.addShaped("sophisticatedbackpacks_crafting_upgrade", <item:sophisticatedbackpacks:crafting_upgrade>, [
    [<item:minecraft:crafting_table>, <item:the_vault:echo_pog>, <item:minecraft:crafting_table>],
    [<item:the_vault:extraordinary_larimar>, <item:sophisticatedbackpacks:upgrade_base>, <item:the_vault:extraordinary_larimar>],
    [<item:the_vault:magic_silk>, <item:the_vault:magic_silk_block>, <item:the_vault:magic_silk>]
]);

//cobweb recipe
craftingTable.addShapeless("vaulthalla_cobweb", <item:minecraft:cobweb>, [
    <item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>,
    <item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>,
    <item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>
]);