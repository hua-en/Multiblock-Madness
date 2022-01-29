import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;
import mods.botania.ManaInfusion;

print("==================== loading mystical_agriculture.zs ====================");
##########################################################################################

val removerecipes =
[   
<mysticalagriculture:master_infusion_crystal>,
<mysticalagriculture:infusion_crystal>,
<mysticalagriculture:crafting:18>,
<mysticalagriculture:crafting:17>,
<mysticalagriculture:crafting:19>,
<mysticalagriculture:crafting:20>,
<mysticalagriculture:crafting:21>,
<mysticalagradditions:insanium:1>,
<mysticalagradditions:insanium:2>,
<mysticalagriculture:crafting:36>,
<mysticalagriculture:crafting:34>,
<mysticalagriculture:crafting:35>,
<mysticalagriculture:crafting:37>,
<qmd:ingot:7>,
<qmd:ingot>,
<qmd:ingot:3>,
<qmd:ingot:8>,
<techreborn:ingot:14>,
]
as IItemStack[];
for item in removerecipes {
    recipes.remove(item);
}

// MA Intermediates //

// Base Essence Ingot
recipes.addShaped(<mysticalagriculture:crafting:32>, [[null, <mysticalagriculture:crafting:5>, null],[<mysticalagriculture:crafting:5>, <contenttweaker:inert_ingot>, <mysticalagriculture:crafting:5>], [null, <mysticalagriculture:crafting:5>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:32>*2, [[null, <mysticalagriculture:crafting:5>, null],[<mysticalagriculture:crafting:5>, <contenttweaker:material_part:20>, <mysticalagriculture:crafting:5>], [null, <mysticalagriculture:crafting:5>, null]]);

// Tier 2 Metal
InductionSmelter.addRecipe(<mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:33>, <mysticalagriculture:crafting:1>*4, 5000);

// Tier 3 metal
InductionSmelter.addRecipe(<mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:2>*4, 10000);
mods.immersiveengineering.ArcFurnace.addRecipe(<mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:34>, null, 300, 1024, [<mysticalagriculture:crafting:2>*4], "Alloying");

// Tier 4 metal
mods.techreborn.blastFurnace.addRecipe(<mysticalagriculture:crafting:36>, null, <mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:3>*4, 300, 512, 1500);

// Tier 5 metal
mods.techreborn.blastFurnace.addRecipe(<mysticalagriculture:crafting:37>, null, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:4>*4, 600, 1024, 2500);

// Tier 6 metal
mods.techreborn.blastFurnace.addRecipe(<mysticalagradditions:insanium:2>, null, <mysticalagriculture:crafting:37>, <mysticalagradditions:insanium>*4, 1200, 2048, 3500);

// Inferium Coal is made with coke
recipes.removeShapeless(<mysticalagriculture:coal>, [<minecraft:coal>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>]);
recipes.addShapeless(<mysticalagriculture:coal>, [<ore:fuelCoke>,<mysticalagriculture:crafting>,<mysticalagriculture:crafting>]);

// Prosperity Shards from Pottery Shards
ManaInfusion.addAlchemy(<mysticalagriculture:crafting:5>, <fossil:pottery_shard>, 10000);


// Seeds //
/*
recipes.addShaped(<mysticalagradditions:insanium:1>, [[null, <mysticalagradditions:insanium:2>, null],[<mysticalagradditions:insanium:2>, <mysticalagriculture:crafting:21>, <mysticalagradditions:insanium:2>], [null, <mysticalagradditions:insanium:2>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:21>, [[null, <mysticalagriculture:crafting:37>, null],[<mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:37>], [null, <mysticalagriculture:crafting:37>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:20>, [[null, <mysticalagriculture:crafting:36>, null],[<mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:36>], [null, <mysticalagriculture:crafting:36>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:19>, [[null, <mysticalagriculture:crafting:35>, null],[<mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:35>], [null, <mysticalagriculture:crafting:35>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:18>, [[null, <mysticalagriculture:crafting:34>, null],[<mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:34>], [null, <mysticalagriculture:crafting:34>, null]]);
recipes.addShaped(<mysticalagriculture:crafting:17>, [[null, <mysticalagriculture:crafting:33>, null],[<mysticalagriculture:crafting:33>, <mysticalagriculture:crafting:16>, <mysticalagriculture:crafting:33>], [null, <mysticalagriculture:crafting:33>, null]]);
*/

//Hide base seeds
	mods.jei.JEI.removeAndHide(<mysticalagriculture:crafting:16>);

recipes.addShapeless(<mysticalagradditions:insanium:1>, [<mysticalagriculture:crafting:21>,<mysticalagriculture:crafting:21>]);
recipes.addShapeless(<mysticalagriculture:crafting:21>, [<mysticalagriculture:crafting:20>,<mysticalagriculture:crafting:20>]);
recipes.addShapeless(<mysticalagriculture:crafting:20>, [<mysticalagriculture:crafting:19>,<mysticalagriculture:crafting:19>]);
recipes.addShapeless(<mysticalagriculture:crafting:19>, [<mysticalagriculture:crafting:18>,<mysticalagriculture:crafting:18>]);
recipes.addShapeless(<mysticalagriculture:crafting:18>, [<mysticalagriculture:crafting:17>,<mysticalagriculture:crafting:17>]);
recipes.addShapeless(<mysticalagriculture:crafting:17> * 2, [<mysticalagriculture:crafting:18>]);
recipes.addShapeless(<mysticalagriculture:crafting:18> * 2, [<mysticalagriculture:crafting:19>]);
recipes.addShapeless(<mysticalagriculture:crafting:19> * 2, [<mysticalagriculture:crafting:20>]);
recipes.addShapeless(<mysticalagriculture:crafting:20> * 2, [<mysticalagriculture:crafting:21>]);
recipes.addShapeless(<mysticalagriculture:crafting:21> * 2, [<mysticalagradditions:insanium:1>]);


<mysticalagradditions:insanium:1>.addTooltip(format.darkPurple("Collected as a Chapter 1 quest reward"));
<mysticalagradditions:insanium:1>.addTooltip(format.gold("Craftable"));
<mysticalagriculture:crafting:17>.addTooltip(format.red("Uncraftable"));
<mysticalagriculture:crafting:18>.addTooltip(format.red("Uncraftable"));
<mysticalagriculture:crafting:19>.addTooltip(format.red("Uncraftable"));
<mysticalagriculture:crafting:20>.addTooltip(format.red("Uncraftable"));
<mysticalagriculture:crafting:21>.addTooltip(format.red("Uncraftable"));


// Infusion Crystal //
<ore:crystalforMystical>.add(<embers:ember_cluster>);
<ore:crystalforMystical>.add(<botania:manaresource:2>);
<ore:crystalforMystical>.add(<ebwizardry:grand_crystal>);
//<ore:crystalforMystical>.add(<astralsorcery:itemrockcrystalsimple>);

recipes.addShaped(<mysticalagriculture:infusion_crystal>, [[<mysticalagriculture:crafting>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting>],[<mysticalagriculture:crafting:5>, <ore:crystalforMystical>, <mysticalagriculture:crafting:5>], [<mysticalagriculture:crafting>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting>]]);


// Master Infusion Crystal //
mods.astralsorcery.Altar.addConstellationAltarRecipe("mypackname:shaped/internal/altar/master_infusion_crystal", <mysticalagriculture:master_infusion_crystal>, 2000, 100, [

			<ebwizardry:astral_diamond>, <ebwizardry:grand_crystal>, <ebwizardry:astral_diamond>,

			<ebwizardry:grand_crystal>, <ore:CelestialCrystal>, <ebwizardry:grand_crystal>,

			<ebwizardry:astral_diamond>, <ebwizardry:grand_crystal>, <ebwizardry:astral_diamond>,

			<embers:ember_cluster>, <embers:ember_cluster>, 
            <embers:ember_cluster>, <embers:ember_cluster>,
			<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,
			<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,
			<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,
			<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]);


// Fix MA Recipes //

recipes.addShaped(<mekanism:ingot:1> * 2, [[<mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>],[<mysticalagriculture:osmium_essence>, null, <mysticalagriculture:osmium_essence>], [<mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>, <mysticalagriculture:osmium_essence>]]);
recipes.addShaped(<techreborn:ingot:14>, [[<mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>],[<mysticalagriculture:titanium_essence>, null, <mysticalagriculture:titanium_essence>], [<mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>, <mysticalagriculture:titanium_essence>]]);
recipes.addShaped(<techreborn:ingot:15>, [[<mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>],[<mysticalagriculture:tungsten_essence>, null, <mysticalagriculture:tungsten_essence>], [<mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>, <mysticalagriculture:tungsten_essence>]]);
recipes.addShaped(<techreborn:ingot:18> * 4, [[<mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>],[<mysticalagriculture:zinc_essence>, null, <mysticalagriculture:zinc_essence>], [<mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>, <mysticalagriculture:zinc_essence>]]);

recipes.addShaped(<quark:marble> * 16, [[<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>],[<mysticalagriculture:marble_essence>, null, <mysticalagriculture:marble_essence>], [<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>]]);

recipes.addShaped(<twilightforest:fiery_ingot>, [[<mysticalagriculture:fiery_ingot_essence>, <mysticalagriculture:fiery_ingot_essence>, <mysticalagriculture:fiery_ingot_essence>],[<mysticalagriculture:fiery_ingot_essence>, null, <mysticalagriculture:fiery_ingot_essence>], [<mysticalagriculture:fiery_ingot_essence>, <mysticalagriculture:fiery_ingot_essence>, <mysticalagriculture:fiery_ingot_essence>]]);

##########################################################################################
print("==================== end of mystical_agriculture.zs ====================");
