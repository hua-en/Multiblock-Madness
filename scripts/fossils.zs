import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
print("==================== loading mods fossils.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<fossil:scarab_pickaxe>,
	<fossil:scarab_axe>,
	<fossil:scarab_shovel>,
	<fossil:scarab_sword>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}

<fossil:fern_seed>.addTooltip(format.green("Plant under a tree"));

<fossil:scarab_pickaxe>.maxDamage = 3000;
//<fossil:ancient_sword>.damage = 10;

recipes.addShapeless(<fossil:scarab_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 70 as short}, {lvl: 3 as short, id: 78 as short}], RepairCost: 3, infench: [{lvl: 3 as short, id: 4 as short}]}),[<minecraft:diamond_pickaxe>,<fossil:scarab_gem>]);

recipes.addShapeless(<fossil:scarab_axe>.withTag({ench: [{lvl: 5 as short, id: 18 as short}, {lvl: 4 as short, id: 32 as short}], RepairCost: 3}),[<minecraft:diamond_axe>,<fossil:scarab_gem>]);
recipes.addShapeless(<fossil:scarab_shovel>.withTag({ench: [{lvl: 3 as short, id: 32 as short}], RepairCost: 1, infench: [{lvl: 1 as short, id: 0 as short}]}),[<minecraft:diamond_shovel>,<fossil:scarab_gem>]);
recipes.addShapeless(<fossil:scarab_sword>.withTag({ench: [{lvl: 1 as short, id: 80 as short}, {lvl: 3 as short, id: 86 as short}], RepairCost: 7, infench: [{lvl: 3 as short, id: 5 as short}]}),[<minecraft:diamond_sword>,<fossil:scarab_gem>]);

//mods.fossils.recipes.removeWorktableRecipe(<fossil:broken_sword>);
//mods.fossils.recipes.addWorktableRecipe(<fossil:broken_sword>, <fossil:relic_scrap>, <fossil:ancient_sword>.withTag({ench: [{lvl: 1 as short, id: 27 as short}, {lvl: 5 as short, id: 36 as short}], RepairCost: 3}));

mods.fossils.recipes.addAnalyzerOutput(<fossil:ancient_sword>, <fossil:ancient_sword>.withTag({ench: [{lvl: 1 as short, id: 27 as short}, {lvl: 5 as short, id: 36 as short}, {lvl: 5 as short, id: 92 as short}], RepairCost: 7}), 100);


val tinyDustMap as IItemStack[IItemStack] = {
	/* Old Tiny Piles
<jaopca:item_dusttinytin>: <minecraft:gravel>,
<jaopca:item_dusttinycopper>: <minecraft:gravel>,
<jaopca:item_dusttinynickel>: <minecraft:gravel>,
<jaopca:item_dusttinysilver>: <minecraft:gravel>,
<jaopca:item_dusttinylead>: <minecraft:gravel>,
<jaopca:item_dusttinygold>: <minecraft:gravel>,
<jaopca:item_dusttinyiron>: <minecraft:gravel>,
<techreborn:smalldust:61>: <minecraft:gravel>,
<jaopca:item_dusttinyaluminium>: <minecraft:gravel>,
<jaopca:item_dusttinypalladium>: <minecraft:gravel>,

<jaopca:item_dusttinyardite>: <techreborn:dust:33>,
<techreborn:smalldust:62>: <techreborn:dust:33>,
<jaopca:item_dusttinycobalt>: <techreborn:dust:33>,
<jaopca:item_dusttinylithium>: <techreborn:dust:33>,
<jaopca:item_dusttinyboron>: <techreborn:dust:33>,
<jaopca:item_dusttinyuranium>: <techreborn:dust:33>,
<jaopca:item_dusttinymagnesium>: <techreborn:dust:33>,
<jaopca:item_dusttinyorichalcum>: <techreborn:dust:33>,

<jaopca:item_dusttinyplatinum>: <nuclearcraft:gem_dust:11>,
<jaopca:item_dusttinyosmium>: <nuclearcraft:gem_dust:11>,
<jaopca:item_dusttinyadamantine>: <nuclearcraft:gem_dust:11>,
<jaopca:item_dusttinytungsten>: <nuclearcraft:gem_dust:11>,
<jaopca:item_dusttinytitanium>: <nuclearcraft:gem_dust:11>,
*/

<techreborn:smalldust:30>: <minecraft:gravel>,
<techreborn:smalldust:1>: <minecraft:gravel>,
<techreborn:smalldust:24>: <minecraft:gravel>,
<jaopca:item_dustsmallpalladium>: <minecraft:gravel>,
<techreborn:smalldust:14>: <minecraft:gravel>,
<techreborn:smalldust:29>: <minecraft:gravel>,
<minecraft:redstone>: <minecraft:gravel>,
<techreborn:smalldust:53>: <minecraft:gravel>,
<techreborn:smalldust:34>: <minecraft:gravel>,
<techreborn:smalldust:47>: <minecraft:gravel>,
<techreborn:smalldust:27>: <minecraft:gravel>,

<jaopca:item_dustsmalllithium>: <techreborn:dust:33>,
<techreborn:smalldust:68>: <techreborn:dust:33>,
<jaopca:item_dustsmallboron>: <techreborn:dust:33>,
<jaopca:item_dustsmallcobalt>: <techreborn:dust:33>,
<minecraft:glowstone_dust>: <techreborn:dust:33>,
<jaopca:item_dustsmallardite>: <techreborn:dust:33>,
<jaopca:item_dustsmallorichalcum>: <techreborn:dust:33>,
<techreborn:smalldust:30>: <techreborn:dust:33>,

<techreborn:smalldust:54>: <techreborn:dust:21>,
<jaopca:item_dustsmallosmium>: <techreborn:dust:21>,
<jaopca:item_dustsmalladamantine>: <techreborn:dust:21>,
<techreborn:smalldust:55>: <techreborn:dust:21>,
<techreborn:smalldust:38>: <techreborn:dust:21>,
} as IItemStack[IItemStack];

for tinyDust, material in tinyDustMap {
	mods.fossils.recipes.addSifterOutput(material, tinyDust, 1);
}

//bio-goo fix
recipes.removeShapeless(<fossil:bio_goo>, [<ore:egg>, <minecraft:wheat>, <minecraft:rotten_flesh>, <minecraft:milk_bucket>]);
recipes.removeShapeless(<fossil:bio_goo> * 4, [<ore:egg>, <minecraft:wheat>, <fossil:failuresaurus_flesh>, <minecraft:milk_bucket>]);
recipes.addShapeless(<fossil:bio_goo> * 4, [<minecraft:egg>, <minecraft:wheat>, <fossil:failuresaurus_flesh>, <minecraft:milk_bucket>]);
recipes.addShapeless(<fossil:bio_goo>, [<minecraft:egg>, <minecraft:wheat>, <minecraft:rotten_flesh>, <minecraft:milk_bucket>]);

##########################################################################################
print("==================== end of fossils.zs ====================");
