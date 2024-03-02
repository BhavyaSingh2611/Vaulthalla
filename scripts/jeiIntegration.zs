import mods.jei.category.Custom;
import mods.jei.JEI;
import mods.jei.category.SimpleJeiCategory;
import mods.jei.category.JeiCategory;
import crafttweaker.api.text.TextComponent;
import mods.jei.component.JeiDrawable;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.IItemStack;

var armourCat = JeiCategory.create<Custom>("artisan_station", new TextComponent("Vault Forge"), <item:the_vault:vault_forge>, [<item:the_vault:vault_forge>]) as Custom;
armourCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

armourCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
armourCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

armourCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

armourCat.addSlot(0, 5, 6, true);
armourCat.addSlot(1, 26, 6, true);
armourCat.addSlot(2, 47, 6, true);
armourCat.addSlot(3, 68, 6, true);
armourCat.addSlot(4, 89, 6, true);
armourCat.addSlot(5, 110, 6, true);
armourCat.addSlot(6, 158, 6, false);

// Gear
armourCat.addRecipe([<item:the_vault:leggings>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:chestplate>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:helmet>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:boots>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:sword>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:axe>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);
armourCat.addRecipe([<item:the_vault:shield>], [<item:minecraft:netherite_ingot> * 2, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:the_vault:vault_alloy> * 9]);

// Magnet
armourCat.addRecipe([<item:the_vault:magnet>], [<item:the_vault:magnetite_ingot> * 9, <item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, <item:the_vault:vault_plating> * 8, <item:minecraft:netherite_ingot>]);

// Idols
armourCat.addRecipe([<item:the_vault:idol_benevolent>, <item:the_vault:idol_omniscient>, <item:the_vault:idol_timekeeper>, <item:the_vault:idol_malevolence>], [<item:minecraft:diamond> * 5, <item:the_vault:vault_bronze> * 81, [<item:the_vault:god_blessing>.withTag({type: "idona" as string}) * 3, <item:the_vault:god_blessing>.withTag({type: "velara" as string}) * 3, <item:the_vault:god_blessing>.withTag({type: "wendarr" as string}) * 3, <item:the_vault:god_blessing>.withTag({type: "tenos" as string}) * 3], <item:the_vault:vault_diamond> * 8]);

// Trinkets
JEI.hideIngredient(<item:the_vault:trinket>);
JEI.addIngredient(<item:the_vault:trinket>);

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-2819599717796404518, -5856188570444291444, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103566735658533, 23085592362438742, 82693], vaultUses: 24 as int})], [<item:the_vault:vault_alloy> * 32, <item:the_vault:vault_diamond> * 16, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_alexandrite> * 64, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-2819599717796404518, -5856188570444291444, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103566735658533, 23085592362438742, 82693], vaultUses: 24 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [4518472306209906890, -2784437617211410162, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103588210495013, 2327258649571971158, 211467362112261], vaultUses: 18 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [4518472306209906890, -2784437617211410162, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103588210495013, 2327258649571971158, 211467362112261], vaultUses: 18 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-434085841990310886, -260229942178414004, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103579620560421, 3732944545826033750, 57043714817], vaultUses: 24 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-434085841990310886, -260229942178414004, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103579620560421, 3732944545826033750, 57043714817], vaultUses: 24 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [8946267498471511514, 7961717488789915103, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103575325593125, 1376167485089337430, 1696683020], vaultUses: 16 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [8946267498471511514, 7961717488789915103, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103575325593125, 1376167485089337430, 1696683020], vaultUses: 16 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-4213398756555162742, -5265935157502611469, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103618275266085, 4757812115898716246, -3522936895171308031, 80031857], vaultUses: 17 as int})], [<item:the_vault:vault_alloy> * 32, <item:the_vault:vault_diamond> * 16, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_alexandrite> * 64, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-4213398756555162742, -5265935157502611469, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103618275266085, 4757812115898716246, -3522936895171308031, 80031857], vaultUses: 17 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [722428263547565818, -7768537511751780827, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103579620560421, -7871354500035817386, 22765881089], vaultUses: 23 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [722428263547565818, -7768537511751780827, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103579620560421, -7871354500035817386, 22765881089], vaultUses: 23 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-1828568842070857270, 9113763370005672471, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103583915527717, 1409363459118813270, 1391649128524], vaultUses: 21 as int})], [<item:the_vault:vault_alloy> * 64, <item:the_vault:vault_diamond> * 32, <item:the_vault:vault_gold> * 12, <item:the_vault:gem_alexandrite> * 128, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-1828568842070857270, 9113763370005672471, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103583915527717, 1409363459118813270, 1391649128524], vaultUses: 21 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-5256072788984937750, 5941841075023039800, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103575325593125, 146125685154467926, 1287734560], vaultUses: 19 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-5256072788984937750, 5941841075023039800, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103575325593125, 146125685154467926, 1287734560], vaultUses: 19 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [7048441180304221114, 966719329673121104, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, -8064816388441550762, 4952768397368], vaultUses: 25 as int})], [<item:the_vault:vault_alloy> * 32, <item:the_vault:vault_diamond> * 16, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_alexandrite> * 64, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [7048441180304221114, 966719329673121104, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, -8064816388441550762, 4952768397368], vaultUses: 25 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [6086368525465959274, 5026295315450306550, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103592505462309, -7706199675926130602, 22607359231722816], vaultUses: 11 as int})], [<item:the_vault:vault_alloy> * 32, <item:the_vault:vault_diamond> * 16, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_alexandrite> * 64, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [6086368525465959274, 5026295315450306550, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103592505462309, -7706199675926130602, 22607359231722816], vaultUses: 11 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-2232951330844657174, 6930815505267067717, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103605390364197, -3183446555999776682, 5210683761216345092, 289], vaultUses: 25 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-2232951330844657174, 6930815505267067717, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103605390364197, -3183446555999776682, 5210683761216345092, 289], vaultUses: 25 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-3764859501776946278, 6666450176529638151, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103601095396901, -3183446555999776682, -8858171654867364860, 4], vaultUses: 19 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-3764859501776946278, 6666450176529638151, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103601095396901, -3183446555999776682, -8858171654867364860, 4], vaultUses: 19 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [4628181776176829082, -3152760154316358345, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, 4961075875588165718, 3350143699973], vaultUses: 18 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [4628181776176829082, -3152760154316358345, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, 4961075875588165718, 3350143699973], vaultUses: 18 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [1675141466702533082, 6969405443065135385, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, 4864209176059007062, 5574940033101], vaultUses: 15 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [1675141466702533082, 6969405443065135385, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103583915527717, 4864209176059007062, 5574940033101], vaultUses: 15 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [-5162838399224875974, 3716516073092813263, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103588210495013, 5840109308593918038, 318065033117752], vaultUses: 13 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 196, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [-5162838399224875974, 3716516073092813263, 1514722424829573161, 5928572538477319491, 2676634361676693832, 23103588210495013, 5840109308593918038, 318065033117752], vaultUses: 13 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [4862777371648089914, -5343035233342127966, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103579620560421, -2209525406955909034, 82345972480], vaultUses: 14 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 32, <item:the_vault:vault_gold> * 12, <item:the_vault:gem_alexandrite> * 128, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [4862777371648089914, -5343035233342127966, 1514722424829573162, 5928572538477319491, 2676634361676693832, 23103579620560421, -2209525406955909034, 82345972480], vaultUses: 14 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [7359414525642463242, -1775555172953390193, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103601095396901, 4977938260789645398, 1010006456021700157, 5], vaultUses: 16 as int})], [<item:the_vault:vault_alloy> * 32, <item:the_vault:vault_diamond> * 16, <item:the_vault:vault_gold> * 8, <item:the_vault:gem_alexandrite> * 64, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [7359414525642463242, -1775555172953390193, 1514722424829573163, 5928572538477319491, 2676634361676693832, 23103601095396901, 4977938260789645398, 1010006456021700157, 5], vaultUses: 16 as int}));

armourCat.addRecipe([<item:the_vault:trinket>.withTag({vaultGearData: [5944663566315699098, -8197508526454089586, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103609685331493, 1228943359166468182, 5484580942976963144, 19760], vaultUses: 11 as int})], [<item:the_vault:vault_alloy> * 128, <item:the_vault:vault_diamond> * 64, <item:the_vault:vault_gold> * 16, <item:the_vault:gem_alexandrite> * 192, <item:the_vault:trinket_scrap>]);
JEI.addIngredient(<item:the_vault:trinket>.withTag({vaultGearData: [5944663566315699098, -8197508526454089586, 1514722424829573160, 5928572538477319491, 2676634361676693832, 23103609685331493, 1228943359166468182, 5484580942976963144, 19760], vaultUses: 11 as int}));

// Add category
JEI.addCategory(armourCat);

// Tools
JEI.hideIngredient(<item:the_vault:tool>);

var toolCat = JeiCategory.create<Custom>("vault_tool_station", new TextComponent("Tool Station"), <item:the_vault:tool_station>, [<item:the_vault:tool_station>]) as Custom;
toolCat.background = JeiDrawable.blank(180, 30) as JeiDrawable;

toolCat.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
toolCat.addDrawable(157, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

toolCat.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

toolCat.addSlot(0, 5, 6, true);
toolCat.addSlot(1, 26, 6, true);
toolCat.addSlot(2, 47, 6, true);
toolCat.addSlot(3, 68, 6, true);
toolCat.addSlot(4, 89, 6, true);
toolCat.addSlot(5, 110, 6, true);
toolCat.addSlot(6, 158, 6, false);

// Jewels
toolCat.addRecipe([<item:the_vault:jewel>], [<item:the_vault:gemstone>, <item:the_vault:vault_bronze> * 9, <item:the_vault:silver_scrap> * 8, <item:the_vault:gem_wutodie> * 5]);

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_iron_ingot> * 9, <item:the_vault:driftwood> * 2, <item:the_vault:vault_bronze> * 8]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [4088642441712019850, -2908456451661967519, 1514722424829605915, 4616400934536516931, 107798892737, 423054278656, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -8388307835, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:chromatic_steel_ingot> * 9, <item:the_vault:driftwood> * 36, <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 2]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-7920290657449244086, 5809905508407278008, 1514722424829605914, 4616400934536516931, 161485983937, 697932185605, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -7314566011, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [2579985637425059258, -5991822941717261485, 1514722424829605915, 4616400934536516931, -4611685803254312767, 972810092552, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -6240824187, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:vaulterite_ingot> * 12, <item:the_vault:driftwood> * 48, <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 3]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [2579985637425059258, -5991822941717261485, 1514722424829605915, 4616400934536516931, -4611685803254312767, 972810092552, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -6240824187, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:vault_alloy> * 24, <item:the_vault:wutodic_silver_ingot> * 8, <item:the_vault:driftwood> * 48,  <item:the_vault:vault_bronze> * 81, <item:the_vault:wutodic_mass> * 4]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [9059907081151508074, 2335859790917641485, 1514722424829605915, 4616400934536516931, -9223371767994609471, 1247687999500, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -5167082363, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:black_chromatic_steel_ingot> * 12, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 162, <item:the_vault:wutodic_mass> * 8]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [3224901621940241082, 1974285087738049155, 1514722424829605912, 4616400934536516931, 4611686340974645441, 1522565906448, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -4093340539, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 256, <item:the_vault:wutodic_mass> * 16]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-6744258008942599590, 7490724894486887956, 1514722424829605912, 4616400934536516931, 376234348737, 1797443813396, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -3019598715, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

toolCat.addRecipe([<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]})], [<item:the_vault:omega_pog> * 9, <item:the_vault:echoing_ingot> * 9, <item:the_vault:driftwood> * 64,  <item:the_vault:vault_bronze> * 1024, <item:the_vault:wutodic_mass> * 24]);
JEI.addIngredient(<item:the_vault:tool>.withTag({offset: 0 as long, vaultGearData: [-1334006908380202214, -8838291958584646397, 1514722424829605915, 4616400934536516931, -9223371606933335871, 2072321720342, -8852492746032676864, -8559560530332385260, 18372019767163027, 288230376101658624, 8589934592, 184828609003782144, 185388976097100464, 140751079104801, 34359738360, 1024, 1514722424829605888, 5770026126585140547, -1945856891, 2199023255555, -6589878960610344960, 2903310526063837840, -7620749799, 2199023255555, 1130297953353728]}));

// Add category
JEI.addCategory(toolCat);

var inscription = JeiCategory.create<Custom>("inscription_table", new TextComponent("Inscription Table"), <item:the_vault:inscription_table>, [<item:the_vault:inscription_table>]) as Custom;
inscription.background = JeiDrawable.blank(180, 45) as JeiDrawable;

inscription.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(130, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(4, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(25, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(46, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(67, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(88, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(109, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(130, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
inscription.addDrawable(157, 25, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

inscription.addDrawable(154, 7, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 21, 18, 14) as JeiDrawable);

inscription.addSlot(0, 5, 6, true);
inscription.addSlot(1, 26, 6, true);
inscription.addSlot(2, 47, 6, true);
inscription.addSlot(3, 68, 6, true);
inscription.addSlot(4, 89, 6, true);
inscription.addSlot(5, 110, 6, true);
inscription.addSlot(6, 131, 6, true);
inscription.addSlot(7, 5, 26, true);
inscription.addSlot(8, 26, 26, true);
inscription.addSlot(9, 47, 26, true);
inscription.addSlot(10, 68, 26, true);
inscription.addSlot(11, 158, 26, false);

function runeItem(pool as string, color as int, model as int) as IItemStack {
  return <item:the_vault:inscription>.withTag({data: {completion: 0.0 as float, entries: [{pool: pool, count: 1 as int, color: color}], model: model, time: 0 as int, instability: 0.0 as float}});
}

inscription.addRecipe([<item:the_vault:inscription>.withTag({data: {completion: 0.05 as float, entries: [{count: 1 as int, color: 16777215 as int, type: 0 as int}], model: 0 as int, time: 400 as int, instability: 0.01 as float}})], [<item:the_vault:inscription_piece> * 8, <item:the_vault:vault_bronze> * 64]);

// Mushroom
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/mush_room", 7012096, 2)], [<item:the_vault:living_chest_scroll> * 5, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/mush_room", 7012096, 2));

// Blacksmith
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/blacksmith", 7012096, 1)], [<item:the_vault:ornate_chest_scroll> * 5, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/blacksmith", 7012096, 1));

// Library
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/library", 7012096, 3)], [<item:the_vault:gilded_chest_scroll> * 5, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/library", 7012096, 3));

// Digsite
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/digsite", 7012096, 6)], [<item:the_vault:wooden_chest_scroll> * 5, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/digsite", 7012096, 6));

// Cove
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/cove", 7012096, 4)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 4]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/cove", 7012096, 4));

// Mine
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/mine", 7012096, 9)], [<item:the_vault:gem_larimar> * 256, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/mine", 7012096, 9));

// Vendor
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/vendor", 7012096, 12)], [<item:the_vault:poisonous_mushroom> * 16, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:hunter_eye> * 2]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/vendor", 7012096, 12));

// Painting
inscription.addRecipe([runeItem("the_vault:vault/rooms/omega/painting", 7012096, 10)], [<item:the_vault:wooden_chest_scroll> * 2, <item:the_vault:living_chest_scroll> * 2, <item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:vault_bronze> * 324, <item:the_vault:inscription_piece> * 32, <item:the_vault:gem_echo> * 8, <item:the_vault:bounty_pearl> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/omega/painting", 7012096, 10));

// Dragon
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/dragon", 15769088, 7)], [<item:the_vault:bounty_pearl> * 32, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/dragon", 15769088, 7));

// Village
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/village", 15769088, 13)], [<item:the_vault:living_chest_scroll> * 2, <item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/village", 15769088, 13));

// Factory
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/factory", 15769088, 8)], [<item:minecraft:netherite_block>, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/factory", 15769088, 8));

// Wild West
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/wildwest", 15769088, 14)], [<item:the_vault:gilded_chest_scroll> * 2, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/wildwest", 15769088, 14));

// X-Mark
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/x-mark", 15769088, 15)], [<item:the_vault:ornate_chest_scroll> * 2, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 8]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/x-mark", 15769088, 15));

// Crystal Caves
inscription.addRecipe([runeItem("the_vault:vault/rooms/challenge/crystal_caves", 15769088, 5)], [<item:the_vault:gem_larimar> * 64, <item:the_vault:vault_bronze> * 192, <item:the_vault:inscription_piece> * 16]);
JEI.addIngredient(runeItem("the_vault:vault/rooms/challenge/crystal_caves", 15769088, 5));

// Add category
JEI.addCategory(inscription);


// Black Market

var blackMarket = JeiCategory.create<Custom>("black_market", new TextComponent("Black Market"), <item:the_vault:black_market>, [<item:the_vault:black_market>]) as Custom;
blackMarket.background = JeiDrawable.blank(175, 180) as JeiDrawable;

for i in 0 .. 8 {
    blackMarket.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    blackMarket.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 8 {
    for column in 0 .. 8 {
        blackMarket.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), false);
    }
}

function blackMarketItem(item as string, minPrice as int, maxPrice as int, chance as float, quantity as int) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"Min Price: " + minPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Max Price: " + maxPrice + "\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"\",\"italic\":false,\"color\":\"gray\"}]", "[{\"text\":\"Chance: " + chance + "%\",\"italic\":false,\"color\":\"gray\"}]"]}}) * quantity;
}

blackMarket.addRecipe([blackMarketItem("the_vault:blank_key", 6000, 12000, 0.24, 1),
blackMarketItem("the_vault:unidentified_artifact", 20000, 32000, 0.12, 1),
blackMarketItem("the_vault:knowledge_star", 2400, 4800, 1.88, 1),
blackMarketItem("the_vault:repair_core", 600, 1200, 3.77, 1),
blackMarketItem("the_vault:sour_orange", 2000, 4000, 0.24, 1),
blackMarketItem("the_vault:bitter_lemon", 800, 1400, 0.94, 1),
blackMarketItem("the_vault:vault_platinum", 400, 800, 1.88, 1),
blackMarketItem("the_vault:regret_orb", 200, 600, 3.77, 1),
blackMarketItem("the_vault:mod_box", 400, 800, 3.77, 1),
blackMarketItem("the_vault:opportunistic_focus", 3200, 6000, 0.47, 1),
blackMarketItem("the_vault:resilient_focus", 2000, 4000, 0.47, 1),
blackMarketItem("the_vault:fundamental_focus", 800, 1600, 1.88, 1),
blackMarketItem("the_vault:chaotic_focus", 200, 400, 3.77, 1),
blackMarketItem("the_vault:waxing_focus", 1600, 2400, 1.18, 1),
blackMarketItem("the_vault:waning_focus", 1600, 2400, 1.18, 1),
blackMarketItem("the_vault:trinket", 8000, 12000, 0.24, 1),
blackMarketItem("the_vault:trinket_scrap", 4000, 8000, 0.47, 1),
blackMarketItem("the_vault:phoenix_feather", 1000, 1600, 0.94, 1),
blackMarketItem("the_vault:eye_of_avarice", 2000, 4000, 0.47, 1),
blackMarketItem("the_vault:vault_catalyst_chaos", 3000, 6000, 0.47, 1),
blackMarketItem("the_vault:jewel", 300, 800, 7.54, 1),
blackMarketItem("the_vault:inscription", 1200, 2400, 3.77, 1),
blackMarketItem("the_vault:helmet", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:chestplate", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:leggings", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:boots", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:sword", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:axe", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:shield", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:idol_benevolent", 1200, 2000, 0.94, 1),
blackMarketItem("the_vault:idol_omniscient", 1200, 2000, 0.94, 1),
blackMarketItem("the_vault:idol_timekeeper", 1200, 2000, 0.94, 1),
blackMarketItem("the_vault:idol_malevolence", 1200, 2000, 0.94, 1),
blackMarketItem("the_vault:magnet", 800, 1600, 3.77, 1),
blackMarketItem("the_vault:soul_flame", 400, 800, 3.77, 1),
blackMarketItem("the_vault:crystal_seal_empty", 200, 600, 3.77, 1),
blackMarketItem("the_vault:crystal_seal_cake", 400, 800, 1.88, 1),
blackMarketItem("the_vault:mote_purity", 800, 1200, 1.88, 1),
blackMarketItem("the_vault:mote_sanctity", 3200, 6000, 0.47, 1),
blackMarketItem("the_vault:faceted_focus", 400, 800, 1.88, 1),
blackMarketItem("the_vault:mystery_egg", 200, 400, 1.88, 1),
blackMarketItem("the_vault:mystery_hostile_egg", 400, 800, 0.47, 1),
blackMarketItem("the_vault:unidentified_relic_fragment", 400, 800, 0.94, 1),
blackMarketItem("the_vault:artifact_fragment", 2000, 4000, 0.24, 1),
blackMarketItem("the_vault:wooden_chest_scroll", 400, 800, 0.47, 1),
blackMarketItem("the_vault:ornate_chest_scroll", 800, 1600, 0.47, 1),
blackMarketItem("the_vault:living_chest_scroll", 800, 1600, 0.47, 1),
blackMarketItem("the_vault:gilded_chest_scroll", 800, 1600, 0.47, 1),
blackMarketItem("the_vault:bounty_pearl", 200, 400, 1.88, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.71, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.71, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.82, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.71, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 600, 1200, 0.82, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 1200, 2400, 0.35, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 1200, 2400, 0.35, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 1200, 2400, 0.35, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 1200, 2400, 0.35, 1),
blackMarketItem("the_vault:vault_catalyst_infused", 1200, 2400, 0.47, 1)], []);

JEI.addCategory(blackMarket);

// Relics
JEI.hideIngredient(<item:the_vault:vault_relic>);
JEI.hideIngredient(<item:the_vault:vault_relic_fragment>);

var relic_pedestal = JeiCategory.create<Custom>("relic_pedestal", new TextComponent("Relic Pedestal"), <item:the_vault:relic_pedestal>, [<item:the_vault:relic_pedestal>]) as Custom;
relic_pedestal.background = JeiDrawable.blank(159, 28) as JeiDrawable;

relic_pedestal.addDrawable(4, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(25, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(46, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(67, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(88, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
relic_pedestal.addDrawable(136, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);

relic_pedestal.addDrawable(109, 5, JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 62, 93, 21, 15) as JeiDrawable);

relic_pedestal.addSlot(0, 5, 6, true);
relic_pedestal.addSlot(1, 26, 6, true);
relic_pedestal.addSlot(2, 47, 6, true);
relic_pedestal.addSlot(3, 68, 6, true);
relic_pedestal.addSlot(4, 89, 6, true);
relic_pedestal.addSlot(5, 137, 6, false);


function addRelic(category as JeiCategory, relicID as string) as void {
    for i in 1 .. 5 {
        JEI.addIngredient(<item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag" + i}));
    }

    category.addRecipe([<item:the_vault:vault_relic>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/statue"})], 
    [<item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag1"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag2"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag3"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag4"}),
    <item:the_vault:vault_relic_fragment>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/frag5"})]);

    JEI.addIngredient(<item:the_vault:vault_relic>.withTag({VaultModelId:"the_vault:relic/" + relicID + "/statue"}));
}

addRelic(relic_pedestal, 'cupcake');
addRelic(relic_pedestal, 'dragon');
addRelic(relic_pedestal, 'elemental');
addRelic(relic_pedestal, 'miner');
addRelic(relic_pedestal, 'nazar');
addRelic(relic_pedestal, 'richity');
addRelic(relic_pedestal, 'twitch');
addRelic(relic_pedestal, 'warrior');

// Add category
JEI.addCategory(relic_pedestal);

// Crystal Recipes
var crystal = JeiCategory.create<Custom>("vault_crystal", new TextComponent("Vault Crystal"), <item:the_vault:vault_altar>, [<item:the_vault:vault_altar>]) as Custom;
crystal.background = JeiDrawable.blank(175, 135) as JeiDrawable;

for i in 0 .. 6 {
    crystal.addDrawable(4, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(26, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(47, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(68, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(89, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(110, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(131, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
    crystal.addDrawable(152, 5 + (i * 21), JeiDrawable.of(new ResourceLocation("create", "textures/gui/jei/widgets.png") as ResourceLocation, 0, 0, 18, 18) as JeiDrawable);
}

for i in 0 .. 6 {
    for column in 0 .. 8 {
        crystal.addSlot(8 * i + column, 6 + (column * 21), 6 + (i * 21), true);
    }
}

function crystalItem(item as string, level as string, pool as string) as IItemStack {
  return <item:${item}>.withTag({display: {Lore: ["[{\"text\":\"Level: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\""+ level + "\",\"color\":\"white\",\"bold\":false},{\"text\":\"\",\"color\":\"dark_purple\",\"bold\":false}]" as string, "[{\"text\":\"Pool: \",\"italic\":false,\"color\":\"white\",\"bold\":true},{\"text\":\"" + pool +"\",\"color\":\"white\",\"bold\":false}]" as string]}});
}

// Farmable Items
crystal.addRecipe([], [[crystalItem("minecraft:sugar_cane", 0, "Farmable")],
[crystalItem("minecraft:carrot", 0, "Farmable")],
[crystalItem("minecraft:potato", 0, "Farmable")],
[crystalItem("minecraft:wheat_seeds", 0, "Farmable")],
[crystalItem("minecraft:oak_leaves", 0, "Farmable"),
crystalItem("minecraft:spruce_leaves", 0, "Farmable"),
crystalItem("minecraft:birch_leaves", 0, "Farmable"),
crystalItem("minecraft:jungle_leaves", 0, "Farmable"),
crystalItem("minecraft:acacia_leaves", 0, "Farmable"),
crystalItem("minecraft:dark_oak_leaves", 0, "Farmable"),
crystalItem("minecraft:azalea_leaves", 0, "Farmable"),
crystalItem("minecraft:flowering_azalea_leaves", 0, "Farmable"),
crystalItem("ecologics:coconut_leaves", 0, "Farmable"),
crystalItem("ecologics:walnut_leaves", 0, "Farmable")],
[crystalItem("minecraft:kelp", 10, "Farmable")],
[crystalItem("minecraft:cactus", 10, "Farmable")],
[crystalItem("minecraft:bamboo", 10, "Farmable")],
[crystalItem("minecraft:vine", 10, "Farmable")],
[crystalItem("minecraft:beetroot", 10, "Farmable")],
[crystalItem("minecraft:snowball", 10, "Farmable")],
[crystalItem("minecraft:pumpkin", 10, "Farmable")],
[crystalItem("minecraft:melon", 10, "Farmable")],
[crystalItem("minecraft:sea_pickle", 10, "Farmable")],
[crystalItem("minecraft:dandelion", 10, "Farmable"),
crystalItem("minecraft:poppy", 10, "Farmable"),
crystalItem("minecraft:blue_orchid", 10, "Farmable"),
crystalItem("minecraft:allium", 10, "Farmable"),
crystalItem("minecraft:azure_bluet", 10, "Farmable"),
crystalItem("minecraft:oxeye_daisy", 10, "Farmable"),
crystalItem("minecraft:cornflower", 10, "Farmable"),
crystalItem("minecraft:lily_of_the_valley", 10, "Farmable")],
[crystalItem("minecraft:beetroot_seeds", 10, "Farmable")],
[crystalItem("minecraft:sweet_berries", 10, "Farmable")],
[crystalItem("minecraft:apple", 10, "Farmable")],
[crystalItem("minecraft:seagrass", 10, "Farmable")],
[crystalItem("minecraft:brown_mushroom", 20, "Farmable")],
[crystalItem("minecraft:red_mushroom", 20, "Farmable")],
[crystalItem("minecraft:red_tulip", 20, "Farmable"),
crystalItem("minecraft:orange_tulip", 20, "Farmable"),
crystalItem("minecraft:white_tulip", 20, "Farmable"),
crystalItem("minecraft:pink_tulip", 20, "Farmable")],
[crystalItem("minecraft:sunflower", 20, "Farmable"),
crystalItem("minecraft:rose_bush", 20, "Farmable"),
crystalItem("minecraft:peony", 20, "Farmable"),
crystalItem("minecraft:lilac", 20, "Farmable")],
[crystalItem("minecraft:glow_lichen", 20, "Farmable")],
[crystalItem("minecraft:clay_ball", 20, "Farmable")],
[crystalItem("minecraft:brick", 20, "Farmable")],
[crystalItem("minecraft:glow_berries", 20, "Farmable")],
[crystalItem("minecraft:nether_wart", 20, "Farmable")],
[crystalItem("minecraft:twisting_vines", 40, "Farmable")],
[crystalItem("minecraft:weeping_vines", 40, "Farmable")],
[crystalItem("minecraft:big_dripleaf", 40, "Farmable")],
[crystalItem("minecraft:crimson_fungus", 40, "Farmable")],
[crystalItem("minecraft:warped_fungus", 40, "Farmable")],
[crystalItem("minecraft:chorus_fruit", 40, "Farmable")],
[crystalItem("minecraft:lily_pad", 40, "Farmable")],
[crystalItem("minecraft:wither_rose", 75, "Farmable")]]);

// Resource
crystal.addRecipe([], [[crystalItem("minecraft:cobblestone", 0, "Resource")],
[crystalItem("minecraft:diorite", 0, "Resource")],
[crystalItem("minecraft:andesite", 0, "Resource")],
[crystalItem("minecraft:granite", 0, "Resource")],
[crystalItem("minecraft:stone", 0, "Resource")],
[crystalItem("minecraft:gravel", 0, "Resource")],
[crystalItem("minecraft:sand", 0, "Resource"),
crystalItem("minecraft:red_sand", 0, "Resource")],
[crystalItem("minecraft:dirt", 0, "Resource")],
[crystalItem("minecraft:oak_log", 0, "Resource"),
crystalItem("minecraft:spruce_log", 0, "Resource"),
crystalItem("minecraft:birch_log", 0, "Resource"),
crystalItem("minecraft:jungle_log", 0, "Resource"),
crystalItem("minecraft:acacia_log", 0, "Resource"),
crystalItem("minecraft:dark_oak_log", 0, "Resource")],
[crystalItem("minecraft:moss_block", 10, "Resource")],
[crystalItem("minecraft:white_wool", 10, "Resource"),
crystalItem("minecraft:orange_wool", 10, "Resource"),
crystalItem("minecraft:magenta_wool", 10, "Resource"),
crystalItem("minecraft:light_blue_wool", 10, "Resource"),
crystalItem("minecraft:yellow_wool", 10, "Resource"),
crystalItem("minecraft:lime_wool", 10, "Resource"),
crystalItem("minecraft:pink_wool", 10, "Resource"),
crystalItem("minecraft:gray_wool", 10, "Resource"),
crystalItem("minecraft:light_gray_wool", 10, "Resource"),
crystalItem("minecraft:cyan_wool", 10, "Resource"),
crystalItem("minecraft:purple_wool", 10, "Resource"),
crystalItem("minecraft:blue_wool", 10, "Resource"),
crystalItem("minecraft:brown_wool", 10, "Resource"),
crystalItem("minecraft:green_wool", 10, "Resource"),
crystalItem("minecraft:red_wool", 10, "Resource"),
crystalItem("minecraft:black_wool", 10, "Resource")],
[crystalItem("minecraft:glass", 10, "Resource"),
crystalItem("minecraft:white_stained_glass", 10, "Resource"),
crystalItem("minecraft:orange_stained_glass", 10, "Resource"),
crystalItem("minecraft:magenta_stained_glass", 10, "Resource"),
crystalItem("minecraft:light_blue_stained_glass", 10, "Resource"),
crystalItem("minecraft:yellow_stained_glass", 10, "Resource"),
crystalItem("minecraft:lime_stained_glass", 10, "Resource"),
crystalItem("minecraft:pink_stained_glass", 10, "Resource"),
crystalItem("minecraft:gray_stained_glass", 10, "Resource"),
crystalItem("minecraft:light_gray_stained_glass", 10, "Resource"),
crystalItem("minecraft:cyan_stained_glass", 10, "Resource"),
crystalItem("minecraft:purple_stained_glass", 10, "Resource"),
crystalItem("minecraft:blue_stained_glass", 10, "Resource"),
crystalItem("minecraft:brown_stained_glass", 10, "Resource"),
crystalItem("minecraft:green_stained_glass", 10, "Resource"),
crystalItem("minecraft:red_stained_glass", 10, "Resource"),
crystalItem("minecraft:black_stained_glass", 10, "Resource")],
[crystalItem("minecraft:smooth_stone", 10, "Resource")],
[crystalItem("minecraft:bricks", 10, "Resource")],
[crystalItem("minecraft:netherrack", 10, "Resource")],
[crystalItem("minecraft:soul_sand", 10, "Resource")],
[crystalItem("minecraft:basalt", 10, "Resource")],
[crystalItem("minecraft:white_terracotta", 10, "Resource"),
crystalItem("minecraft:orange_terracotta", 10, "Resource"),
crystalItem("minecraft:magenta_terracotta", 10, "Resource"),
crystalItem("minecraft:light_blue_terracotta", 10, "Resource"),
crystalItem("minecraft:yellow_terracotta", 10, "Resource"),
crystalItem("minecraft:lime_terracotta", 10, "Resource"),
crystalItem("minecraft:pink_terracotta", 10, "Resource"),
crystalItem("minecraft:gray_terracotta", 10, "Resource"),
crystalItem("minecraft:light_gray_terracotta", 10, "Resource"),
crystalItem("minecraft:cyan_terracotta", 10, "Resource"),
crystalItem("minecraft:purple_terracotta", 10, "Resource"),
crystalItem("minecraft:blue_terracotta", 10, "Resource"),
crystalItem("minecraft:brown_terracotta", 10, "Resource"),
crystalItem("minecraft:green_terracotta", 10, "Resource"),
crystalItem("minecraft:red_terracotta", 10, "Resource"),
crystalItem("minecraft:black_terracotta", 10, "Resource"),
crystalItem("minecraft:terracotta", 10, "Resource")],
[crystalItem("minecraft:deepslate", 10, "Resource"),
crystalItem("minecraft:cobbled_deepslate", 10, "Resource")],
[crystalItem("minecraft:tuff", 10, "Resource")],
[crystalItem("minecraft:mossy_cobblestone", 20, "Resource")],
[crystalItem("minecraft:obsidian", 20, "Resource")],
[crystalItem("minecraft:ice", 20, "Resource")],
[crystalItem("minecraft:white_concrete", 20, "Resource"),
crystalItem("minecraft:orange_concrete", 20, "Resource"),
crystalItem("minecraft:magenta_concrete", 20, "Resource"),
crystalItem("minecraft:light_blue_concrete", 20, "Resource"),
crystalItem("minecraft:yellow_concrete", 20, "Resource"),
crystalItem("minecraft:lime_concrete", 20, "Resource"),
crystalItem("minecraft:pink_concrete", 20, "Resource"),
crystalItem("minecraft:gray_concrete", 20, "Resource"),
crystalItem("minecraft:light_gray_concrete", 20, "Resource"),
crystalItem("minecraft:cyan_concrete", 20, "Resource"),
crystalItem("minecraft:purple_concrete", 20, "Resource"),
crystalItem("minecraft:blue_concrete", 20, "Resource"),
crystalItem("minecraft:brown_concrete", 20, "Resource"),
crystalItem("minecraft:green_concrete", 20, "Resource"),
crystalItem("minecraft:red_concrete", 20, "Resource"),
crystalItem("minecraft:black_concrete", 20, "Resource")],
[crystalItem("minecraft:white_concrete_powder", 20, "Resource"),
crystalItem("minecraft:orange_concrete_powder", 20, "Resource"),
crystalItem("minecraft:magenta_concrete_powder", 20, "Resource"),
crystalItem("minecraft:light_blue_concrete_powder", 20, "Resource"),
crystalItem("minecraft:yellow_concrete_powder", 20, "Resource"),
crystalItem("minecraft:lime_concrete_powder", 20, "Resource"),
crystalItem("minecraft:pink_concrete_powder", 20, "Resource"),
crystalItem("minecraft:gray_concrete_powder", 20, "Resource"),
crystalItem("minecraft:light_gray_concrete_powder", 20, "Resource"),
crystalItem("minecraft:cyan_concrete_powder", 20, "Resource"),
crystalItem("minecraft:purple_concrete_powder", 20, "Resource"),
crystalItem("minecraft:blue_concrete_powder", 20, "Resource"),
crystalItem("minecraft:brown_concrete_powder", 20, "Resource"),
crystalItem("minecraft:green_concrete_powder", 20, "Resource"),
crystalItem("minecraft:red_concrete_powder", 20, "Resource"),
crystalItem("minecraft:black_concrete_powder", 20, "Resource")],
[crystalItem("minecraft:blackstone", 20, "Resource")],
[crystalItem("minecraft:dripstone_block", 20, "Resource")],
[crystalItem("minecraft:prismarine", 20, "Resource")],
[crystalItem("minecraft:soul_soil", 40, "Resource")],
[crystalItem("minecraft:purpur_block", 40, "Resource")],
[crystalItem("minecraft:mycelium", 40, "Resource")],
[crystalItem("minecraft:end_stone", 40, "Resource")],
[crystalItem("minecraft:magma_block", 40, "Resource")],
[crystalItem("minecraft:nether_wart_block", 40, "Resource")],
[crystalItem("minecraft:warped_wart_block", 40, "Resource")],
[crystalItem("minecraft:shroomlight", 40, "Resource")],
[crystalItem("minecraft:podzol", 40, "Resource")],
[crystalItem("minecraft:blue_ice", 75, "Resource")],
[crystalItem("minecraft:crimson_stem", 75, "Resource")],
[crystalItem("minecraft:warped_stem", 75, "Resource")],
[crystalItem("minecraft:crying_obsidian", 75, "Resource")],
[crystalItem("minecraft:calcite", 75, "Resource")],
[crystalItem("minecraft:rooted_dirt", 75, "Resource")]]);

// Mob
crystal.addRecipe([], [[crystalItem("minecraft:string", 0, "Mob")],
[crystalItem("minecraft:rotten_flesh", 0, "Mob")],
[crystalItem("minecraft:bone", 0, "Mob")],
[crystalItem("minecraft:spider_eye", 0, "Mob")],
[crystalItem("minecraft:arrow", 0, "Mob")],
[crystalItem("minecraft:feather", 10, "Mob")],
[crystalItem("minecraft:porkchop", 10, "Mob")],
[crystalItem("minecraft:beef", 10, "Mob")],
[crystalItem("minecraft:chicken", 10, "Mob")],
[crystalItem("minecraft:rabbit", 10, "Mob")],
[crystalItem("minecraft:slime_ball", 10, "Mob")],
[crystalItem("minecraft:egg", 10, "Mob")],
[crystalItem("minecraft:leather", 10, "Mob")],
[crystalItem("minecraft:rabbit_hide", 10, "Mob")],
[crystalItem("minecraft:white_dye", 10, "Mob"),
crystalItem("minecraft:orange_dye", 10, "Mob"),
crystalItem("minecraft:magenta_dye", 10, "Mob"),
crystalItem("minecraft:light_blue_dye", 10, "Mob"),
crystalItem("minecraft:yellow_dye", 10, "Mob"),
crystalItem("minecraft:lime_dye", 10, "Mob"),
crystalItem("minecraft:pink_dye", 10, "Mob"),
crystalItem("minecraft:gray_dye", 10, "Mob"),
crystalItem("minecraft:light_gray_dye", 10, "Mob"),
crystalItem("minecraft:cyan_dye", 10, "Mob"),
crystalItem("minecraft:purple_dye", 10, "Mob"),
crystalItem("minecraft:blue_dye", 10, "Mob"),
crystalItem("minecraft:brown_dye", 10, "Mob"),
crystalItem("minecraft:green_dye", 10, "Mob"),
crystalItem("minecraft:red_dye", 10, "Mob"),
crystalItem("minecraft:black_dye", 10, "Mob")],
[crystalItem("minecraft:poisonous_potato", 10, "Mob")],
[crystalItem("minecraft:mutton", 10, "Mob")],
[crystalItem("minecraft:salmon", 10, "Mob")],
[crystalItem("minecraft:cod", 10, "Mob")],
[crystalItem("minecraft:cocoa_beans", 10, "Mob")],
[crystalItem("minecraft:gunpowder", 10, "Mob")],
[crystalItem("minecraft:honey_bottle", 20, "Mob")],
[crystalItem("minecraft:blaze_rod", 20, "Mob")],
[crystalItem("minecraft:ender_pearl", 20, "Mob")],
[crystalItem("minecraft:rabbit_foot", 20, "Mob")],
[crystalItem("minecraft:honeycomb", 20, "Mob")],
[crystalItem("minecraft:ink_sac", 20, "Mob")],
[crystalItem("minecraft:glow_ink_sac", 20, "Mob")],
[crystalItem("minecraft:pufferfish", 20, "Mob")],
[crystalItem("minecraft:tropical_fish", 40, "Mob")],
[crystalItem("minecraft:ghast_tear", 40, "Mob")],
[crystalItem("minecraft:magma_cream", 40, "Mob")],
[crystalItem("minecraft:nautilus_shell", 40, "Mob")],
[crystalItem("minecraft:turtle_egg", 40, "Mob")],
[crystalItem("minecraft:wither_skeleton_skull", 40, "Mob")],
[crystalItem("minecraft:phantom_membrane", 75, "Mob")]]);

// Misc
crystal.addRecipe([], [[crystalItem("minecraft:pointed_dripstone", 0, "Misc")],
[crystalItem("minecraft:gold_ingot", 0, "Misc")],
[crystalItem("minecraft:iron_ingot", 0, "Misc")],
[crystalItem("minecraft:redstone", 0, "Misc")],
[crystalItem("minecraft:emerald", 0, "Misc")],
[crystalItem("minecraft:lapis_lazuli", 0, "Misc")],
[crystalItem("minecraft:copper_ingot", 0, "Misc")],
[crystalItem("minecraft:coal", 0, "Misc"),
crystalItem("minecraft:charcoal", 0, "Misc")],
[crystalItem("minecraft:amethyst_shard", 10, "Misc")],
[crystalItem("minecraft:diamond", 10, "Misc")],
[crystalItem("minecraft:spore_blossom", 10, "Misc")],
[crystalItem("minecraft:glowstone_dust", 20, "Misc")],
[crystalItem("minecraft:quartz", 20, "Misc")],
[crystalItem("minecraft:name_tag", 20, "Misc")],
[crystalItem("minecraft:prismarine_shard", 40, "Misc")],
[crystalItem("minecraft:prismarine_crystals", 40, "Misc")],
[crystalItem("minecraft:chorus_flower", 40, "Misc")],
[crystalItem("minecraft:dead_brain_coral", 40, "Misc"),
crystalItem("minecraft:dead_bubble_coral", 40, "Misc"),
crystalItem("minecraft:dead_fire_coral", 40, "Misc"),
crystalItem("minecraft:dead_horn_coral", 40, "Misc"),
crystalItem("minecraft:dead_tube_coral", 40, "Misc"),
crystalItem("minecraft:dead_tube_coral_fan", 40, "Misc"),
crystalItem("minecraft:dead_brain_coral_fan", 40, "Misc"),
crystalItem("minecraft:dead_bubble_coral_fan", 40, "Misc"),
crystalItem("minecraft:dead_fire_coral_fan", 40, "Misc"),
crystalItem("minecraft:dead_horn_coral_fan", 40, "Misc")],
[crystalItem("minecraft:brain_coral", 40, "Misc"),
crystalItem("minecraft:bubble_coral", 40, "Misc"),
crystalItem("minecraft:fire_coral", 40, "Misc"),
crystalItem("minecraft:horn_coral", 40, "Misc"),
crystalItem("minecraft:tube_coral", 40, "Misc"),
crystalItem("minecraft:tube_coral_fan", 40, "Misc"),
crystalItem("minecraft:brain_coral_fan", 40, "Misc"),
crystalItem("minecraft:bubble_coral_fan", 40, "Misc"),
crystalItem("minecraft:fire_coral_fan", 40, "Misc"),
crystalItem("minecraft:horn_coral_fan", 40, "Misc")],
[crystalItem("minecraft:totem_of_undying", 40, "Misc")],
[crystalItem("minecraft:saddle", 40, "Misc")],
[crystalItem("minecraft:cobweb", 40, "Misc")],
[crystalItem("minecraft:sponge", 75, "Misc")],
[crystalItem("minecraft:nether_star", 75, "Misc")],
[crystalItem("minecraft:trident", 75, "Misc")],
[crystalItem("minecraft:music_disc_13", 90, "Misc"),
crystalItem("minecraft:music_disc_cat", 90, "Misc"),
crystalItem("minecraft:music_disc_blocks", 90, "Misc"),
crystalItem("minecraft:music_disc_chirp", 90, "Misc"),
crystalItem("minecraft:music_disc_far", 90, "Misc"),
crystalItem("minecraft:music_disc_mall", 90, "Misc"),
crystalItem("minecraft:music_disc_mellohi", 90, "Misc"),
crystalItem("minecraft:music_disc_stal", 90, "Misc"),
crystalItem("minecraft:music_disc_strad", 90, "Misc"),
crystalItem("minecraft:music_disc_ward", 90, "Misc"),
crystalItem("minecraft:music_disc_11", 90, "Misc"),
crystalItem("minecraft:music_disc_wait", 90, "Misc"),
crystalItem("minecraft:music_disc_otherside", 90, "Misc"),
crystalItem("minecraft:music_disc_pigstep", 90, "Misc")]]);

// Add category
JEI.addCategory(crystal);