#define Main
    //VARS
    globalvar ItemPileOfNeutronium, ItemNeutroniumNugget, ItemNeutroniumIngot, ItemInfinityIngot, ItemCrystalMatrix,
        ItemPlasticLattice, ItemInfinityCatalyst, ItemJellySingularity, ItemBoneSingularity, ItemIronSingularity,
        ItemGoldSingularity, ItemSteelSingularity, ItemVoidSingularity, ItemCosmicSingularity, ItemUraniumSingularity,
        ItemNeutroniumBook, ItemNeutroniumPickaxe, ItemNeutroniumSword, ItemNeutroniumAmulet, ItemNeutroniumWallet,
        ItemNeutroniumBow, ItemNeutroniumBoots, ItemNeutroniumGloves, ItemExtremeStew, ItemInfinitySword; 
    globalvar StructureNeutronCollector, StructureNeutronCompressor, StructureDireForge;
    globalvar _sprPileOfNeutronium, _sprNeutroniumNugget, _sprNeutroniumIngot, _sprInfinityIngot, _sprCrystalMatrix,
        _sprNeutronCompressor, _sprNeutronCollector, _sprDireForge, _sprPlasticLattice, _sprInfinityCatalyst, _sprNeutroniumBook,
        _sprNeutroniumPickaxe, _sprNeutroniumSword, _sprNeutroniumAmulet, _sprNeutroniumWallet, _sprNeutroniumBow,
        _sprNeutroniumBoots, _sprNeutroniumGloves, _sprExtremeStew, _sprInfinitySword;

    
    // SPRITES
    _sprPileOfNeutronium = sprite_add("spr/sprPileOfNeutronium.png", 1, false, false, 0, 0);
    SetOffset(_sprPileOfNeutronium);
    _sprNeutroniumNugget = sprite_add("spr/sprNeutroniumNugget.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumNugget);
    _sprNeutroniumIngot = sprite_add("spr/sprNeutroniumIngot.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumIngot);
    _sprInfinityIngot = sprite_add("spr/sprInfinityIngot.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityIngot);
    _sprCrystalMatrix = sprite_add("spr/sprCrystalMatrix.png", 1, false, false, 0, 0);
   SetOffset(_sprCrystalMatrix);
    _sprPlasticLattice = sprite_add("spr/sprPlasticLattice.png", 1, false, false, 0, 0);
    SetOffset(_sprPlasticLattice);
    _sprInfinityCatalyst = sprite_add("spr/sprInfinityCatalyst.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityCatalyst);
    _sprNeutronCollector = sprite_add("spr/sprNeutronCollector.png", 4, false, false, 32, 32);
    SetOffset(_sprNeutronCollector);
    _sprNeutronCompressor = sprite_add("spr/sprNeutronCompressor.png", 4, false, false, 32, 32);
    SetOffset(_sprNeutronCompressor);
    _sprDireForge = sprite_add("spr/sprDireForge.png", 1, false, false, 0, 0);
    SetOffset(_sprDireForge);
    _sprNeutroniumBook = sprite_add("spr/sprNeutroniumBook.png", 1, false, false, 16, 16);
    SetOffset(_sprNeutroniumBook);
    _sprNeutroniumPickaxe = sprite_add("spr/sprNeutroniumPickaxe.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumPickaxe);
    _sprNeutroniumSword = sprite_add("spr/sprNeutroniumSword.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumSword);
    _sprNeutroniumAmulet = sprite_add("spr/sprNeutroniumAmulet.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumAmulet);
    _sprNeutroniumWallet = sprite_add("spr/sprNeutroniumWallet.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumWallet);
    _sprNeutroniumBow = sprite_add("spr/sprNeutroniumBow.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumBow);
    _sprNeutroniumBoots = sprite_add("spr/sprNeutroniumBoots.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumBoots);
    _sprNeutroniumGloves = sprite_add("spr/sprNeutroniumGloves.png", 1, false, false, 0, 0);
    SetOffset(_sprNeutroniumGloves);
    _sprExtremeStew = sprite_add("spr/sprExtremeStew.png", 28, false, false, 16, 16);
    SetOffset(_sprExtremeStew);
    
    // ITEMS
    ItemPileOfNeutronium = ItemCreate(undefined, "Pile of Neturonium", "piece of the world", _sprPileOfNeutronium, ItemType.Material,
        ItemSubType.None, 10, 0, 0, [Item.Wood, 1]);
    ItemNeutroniumNugget = ItemCreate(undefined, "Neutronium Nugget", "also piece of the world", _sprNeutroniumNugget, ItemType.Material,
        ItemSubType.None, 100, 0, 0, [ItemPileOfNeutronium, 10]);
    ItemNeutroniumIngot = ItemCreate(undefined, "Neutronium Ingot", "bar of the world", _sprNeutroniumIngot, ItemType.Material,
        ItemSubType.None, 10000, 0, 0, [ItemNeutroniumNugget, 30]);
    ItemInfinityIngot = ItemCreate(undefined, "Infinity Ingot", "power of the all galaxy", _sprInfinityIngot, ItemType.Material,
        ItemSubType.None, 100000, 0, 0, undefined);
    ItemCrystalMatrix = ItemCreate(undefined, "Crystal Matrix", "", _sprCrystalMatrix, ItemType.Material,
        ItemSubType.None, 1000, 0, 0, [Item.RoyalSteel, 10, Item.FiberGlass, 15]);
    ItemPlasticLattice = ItemCreate(undefined, "Plastic Lattice", "", _sprPlasticLattice, ItemType.Material,
        ItemSubType.None, 1000, 0, 0, [Item.Plastic, 15, Item.BottledOil, 10, Item.RoyalClothing, 10]);
    ItemInfinityCatalyst = ItemCreate(undefined, "Infinity Catalyst", "", _sprInfinityCatalyst, ItemType.Material,
        ItemSubType.None, 1000000, 0, 0, [ItemPlasticLattice, 99, ItemInfinityIngot, 30, ItemNeutroniumIngot, 80, ItemCrystalMatrix, 100]);
    // NEUTRONIUM ITEMS  
    ItemNeutroniumBook = ItemCreate(undefined, "Neutronium Book", "", _sprNeutroniumBook, ItemType.Gear,
        ItemSubType.None, 10000000, 0, 0, undefined);
    ItemNeutroniumPickaxe = ItemCreate(undefined, "Neutronium Pickaxe", "", _sprNeutroniumPickaxe, ItemType.Gear,
        ItemSubType.None, 100000, 0, 0, undefined, ScriptWrap(UsePickaxe), undefined, undefined, 7);
    ItemNeutroniumSword = ItemCreate(undefined, "Neutronium Sword", "", _sprNeutroniumSword, ItemType.Gear,
        ItemSubType.None, 100000, 0, 0, undefined, ScriptWrap(UseSword), undefined, undefined, 7);
    ItemNeutroniumAmulet = ItemCreate(undefined, "Neutronium Amulet", "", _sprNeutroniumAmulet, ItemType.Gear,
        ItemSubType.None, 10000, 0, 0, undefined);
    ItemNeutroniumWallet= ItemCreate(undefined, "Neutronium Wallet", "", _sprNeutroniumWallet, ItemType.Gear,
        ItemSubType.None, 10000, 0, 0, undefined);
    ItemNeutroniumBow = ItemCreate(undefined, "Neutronium Bow", "", _sprNeutroniumBow, ItemType.Gear,
        ItemSubType.None, 10000, 0, 0, undefined);
    ItemNeutroniumBoots = ItemCreate(undefined, "Neutronium Boots", "", _sprNeutroniumBoots, ItemType.Gear,
        ItemSubType.None, 10000, 0, 0, undefined);
    ItemNeutroniumGloves = ItemCreate(undefined, "Neutronium Gloves", "", _sprNeutroniumGloves, ItemType.Gear,
        ItemSubType.None, 10000, 0, 0, undefined);
    ItemExtremeStew = ItemCreate(undefined, "Extreme Stew", "for very hungry", _sprExtremeStew, ItemType.Consumable,
        ItemSubType.None, 1000, 200, 2000, [Item.Beet, 1, Item.Berry, 1, Item.CactusFruit, 1, Item.Citrus, 1, Item.Egg, 1,
        Item.Fish, 1, Item.HotPepper, 1, Item.Meat, 1, Item.Pumpkin, 1, Item.Seaweed, 1], ScriptWrap(UseConsume));
    // INFINITY ITEMS
    ItemInfinitySword = ItemCreate(undefined, "Infinity Sword", "NOTHING BIGGER", _sprInfinitySword, ItemType.Gear,
        ItemSubType.None, )

    // STRUCTURES
    StructureNeutronCollector = StructureCreate(undefined, "Neutron Collector", "step by step to rich", StructureType.Base ,
        _sprNeutronCollector, undefined, [Item.LegendaryGem, 10, Item.NuclearFuelCell, 10, Item.ToxicSludge, 10], 2, true,
        [ItemPileOfNeutronium], true, BuildMenuCategory.Magical, undefined);
        
    StructureNeutronCompressor = StructureCreate(undefined, "Neutron Compressor", "go to your rich", StructureType.Base,
        _sprNeutronCompressor, undefined, [ItemPileOfNeutronium, 10, Item.KrakenEye, 20, Item.CosmicSteel, 10], 2, true, 
        [], true, BuildMenuCategory.Industrial, [Gear.Book]);
        
    StructureDireForge = StructureCreate(undefined, "Dire Forge", "make incredible", StructureType.Base, _sprDireForge,
        undefined, [ItemCrystalMatrix, 80, Item.NuclearFuelCell, 10, Item.VoidSteel, 60, Item.CosmicSteel, 30], 2, true,
        [ItemNeutroniumIngot, ItemInfinityIngot, ItemInfinityCatalyst], true, BuildMenuCategory.Industrial, undefined);
        
    StructureAddItem(Structure.Forge, ItemCrystalMatrix, ItemNeutroniumNugget);
    StructureAddItem(Structure.Factory, ItemPlasticLattice);
    StructureAddItem(Structure.Cauldron, ItemExtremeStew);
    
    // SINGULARITIES
    ItemJellySingularity = SingularityCreate("Jelly", "", "Jelly", 10000, [Item.Jelly, 5000]);
    ItemBoneSingularity = SingularityCreate("Bone", "", "Bone", 10000, [Item.Bone, 5000]);
    ItemIronSingularity = SingularityCreate("Iron", "", "Iron", 10000, [Item.IronIngot, 5000]);
    ItemGoldSingularity = SingularityCreate("Gold", "", "Gold", 20000, [Item.GoldIngot, 5000]);
    ItemSteelSingularity = SingularityCreate("Steel", "", "Steel", 25000, [Item.Steel, 5000]);
    ItemVoidSingularity = SingularityCreate("Void", "", "Void", 40000, [Item.VoidSteel, 5000]);
    ItemCosmicSingularity = SingularityCreate("Cosmic", "", "Cosmic", 50000, [Item.CosmicSteel, 5000]);
    ItemUraniumSingularity = SingularityCreate("Uranium", "", "Uranium", 60000, [Item.Uranium, 5000]);
    
    // GEARS
    GearCategoryAddItems(Gear.Book, ItemNeutroniumBook);
    GearCategoryAddItems(Gear.Pickaxe, ItemNeutroniumPickaxe);
    GearCategoryAddItems(Gear.Sword, ItemNeutroniumSword);
    GearCategoryAddItems(Gear.Amulet, ItemNeutroniumAmulet);
    GearCategoryAddItems(Gear.Wallet, ItemNeutroniumWallet);
    GearCategoryAddItems(Gear.Bow, ItemNeutroniumBow);
    GearCategoryAddItems(Gear.Boots, ItemNeutroniumBoots);
    GearCategoryAddItems(Gear.Gloves, ItemNeutroniumGloves);
    

#define OnStructureBuild(inst, structure)
    if (structure == StructureNeutronCompressor) {
        inst.image_speed = 0.1; 
    }
    if (structure == StructureNeutronCollector) {
        inst.image_speed = 0.1;
    }
#define SingularityCreate(name, description, _spr, value, recipe)
    var _sprite = sprite_add("spr/" + "spr" + _spr + "Singularity.png", 1, false, false, 0, 0);
    SetOffset(_sprite);
    _singularity = ItemCreate(undefined, name + " Singularity", description, _sprite, ItemType.Material,
        ItemSubType.None, value, 0, 0, recipe);
    StructureAddItem(StructureNeutronCompressor, _singularity)
    return _singularity
#define SetOffset(sprite)
    sprite_set_offset(sprite, sprite_get_width(sprite) / 2, sprite_get_height(sprite) / 2);