#define Main

    __FeatMain();
    
    #region VARS
    globalvar ItemPileOfNeutronium, ItemNeutroniumNugget, ItemNeutroniumIngot, ItemInfinityIngot, ItemCrystalMatrix,
        ItemPlasticLattice, ItemInfinityCatalyst, ItemJellySingularity, ItemBoneSingularity, ItemIronSingularity,
        ItemGoldSingularity, ItemSteelSingularity, ItemVoidSingularity, ItemCosmicSingularity, ItemUraniumSingularity,
        ItemCrystalSingularity, ItemNeutroniumBook, ItemNeutroniumPickaxe, ItemNeutroniumSword, ItemNeutroniumAmulet,
        ItemNeutroniumWallet, ItemNeutroniumBow, ItemNeutroniumBoots, ItemNeutroniumGloves, ItemExtremeStew, ItemInfinitySword,
        ItemInfinityPickaxe, ItemInfinityAmulet, ItemInfinityBook, ItemInfinityWallet,ItemInfinityBow, ItemInfinityBoots, 
        ItemInfinityGloves, ItemBlackHoleBomb, ItemMatrixEye, ItemGalaxySigil; 
    globalvar StructureNeutronCollector, StructureNeutronCompressor, StructureDireForge;
    globalvar _sprPileOfNeutronium, _sprNeutroniumNugget, _sprNeutroniumIngot, _sprInfinityIngot, _sprCrystalMatrix,
        _sprNeutronCompressor, _sprNeutronCollector, _sprDireForge, _sprPlasticLattice, _sprInfinityCatalyst, _sprNeutroniumBook,
        _sprNeutroniumPickaxe, _sprNeutroniumSword, _sprNeutroniumAmulet, _sprNeutroniumWallet, _sprNeutroniumBow,
        _sprNeutroniumBoots, _sprNeutroniumGloves, _sprExtremeStew, _sprInfinitySword, _sprInfinityPickaxe, _sprBlackHoleBomb,
        _sprMatrixEye, _sprInfinityAmulet, _sprInfinityBook, _sprInfinityWallet, _sprInfinityBow, _sprInfinityBoots,
        _sprInfinityGloves, _sprGalaxySigil, _sprGalaxySpirit;
    globalvar EnemyGalaxySpirit;
    globalvar GearMatrixEye;
    globalvar _instBlackHoleBomb, _instGalaxySpirit, _instMatrixEye;
    globalvar prepare, prepareTick, eyeTick;
    globalvar playerX, playerY;
    globalvar featDireForge, featNetronuimDude, featInfinityMan, featSingularity, featDefeatGalaxySpirit;
    globalvar isSummoned;
    #endregion
    
    _instGalaxySpirit = null;
    
    #region GEAR_CATEGORY_CREATE
    GearMatrixEye = GearCategoryCreate(undefined, "Matrix Eye", true);
    #endregion

    #region SPRITES
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
    _sprNeutronCompressor = sprite_add("spr/sprNeutronCompressor.png", 3, false, false, 64, 64);
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
    _sprInfinitySword = sprite_add("spr/sprInfinitySword.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinitySword);
    _sprInfinityPickaxe = sprite_add("spr/sprInfinityPickaxe.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityPickaxe);
    _sprBlackHoleBomb = sprite_add("spr/sprBlackHoleBomb.png", 1, false, false, 0, 0);
    SetOffset(_sprBlackHoleBomb);
    _sprMatrixEye = sprite_add("spr/sprMatrixEye.png", 1, false, false, 0, 0);
    SetOffset(_sprMatrixEye);
    _sprInfinityAmulet = sprite_add("spr/sprInfinityAmulet.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityAmulet);
    _sprInfinityBook = sprite_add("spr/sprInfinityBook.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityBook);
    _sprInfinityWallet = sprite_add("spr/sprInfinityWallet.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityWallet);
    _sprInfinityBow = sprite_add("spr/sprInfinityBow.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityBow);
    _sprInfinityBoots = sprite_add("spr/sprInfinityBoots.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityBoots);
    _sprInfinityGloves = sprite_add("spr/sprInfinityGloves.png", 1, false, false, 0, 0);
    SetOffset(_sprInfinityGloves);
    _sprGalaxySigil = sprite_add("spr/sprGalaxySigil.png", 1, false, false, 0, 0);
    SetOffset(_sprGalaxySigil);
    _sprGalaxySpirit = sprite_add("spr/sprGalaxySpirit.png", 2, false, false, 64, 79);
    SetOffset(_sprGalaxySpirit);
    #endregion
    
    #region ITEMS
    
        #region OTHER ITEMS
        ItemPileOfNeutronium = ItemCreate(undefined, "Pile of Neturonium", "piece of the world", _sprPileOfNeutronium, ItemType.Material,
            ItemSubType.None, 10, 0, 0, [Item.Wood, 1]);
        ItemNeutroniumNugget = ItemCreate(undefined, "Neutronium Nugget", "also piece of the world", _sprNeutroniumNugget, ItemType.Material,
            ItemSubType.None, 100, 0, 0, [ItemPileOfNeutronium, 10]);
        ItemNeutroniumIngot = ItemCreate(undefined, "Neutronium Ingot", "bar of the world", _sprNeutroniumIngot, ItemType.Material,
            ItemSubType.None, 10000, 0, 0, [ItemNeutroniumNugget, 30]);
        ItemInfinityIngot = ItemCreate(undefined, "Infinity Ingot", "power of the all galaxy", _sprInfinityIngot, ItemType.Material,
            ItemSubType.None, 100000, 0, 0, [Item.LegendaryGem, 10, Item.KrakenEye, 5]);
        ItemCrystalMatrix = ItemCreate(undefined, "Crystal Matrix", "matrix", _sprCrystalMatrix, ItemType.Material,
            ItemSubType.None, 1000, 0, 0, [Item.RoyalSteel, 10, Item.FiberGlass, 15]);
        ItemPlasticLattice = ItemCreate(undefined, "Plastic Lattice", "gimme plastic", _sprPlasticLattice, ItemType.Material,
            ItemSubType.None, 1000, 0, 0, [Item.Plastic, 15, Item.BottledOil, 10, Item.RoyalClothing, 5]);
        ItemInfinityCatalyst = ItemCreate(undefined, "Infinity Catalyst", "stores all galaxy", _sprInfinityCatalyst, ItemType.Material,
            ItemSubType.None, 1000000, 0, 0, []);
        ItemBlackHoleBomb = ItemCreate(undefined, "Black-Hole Bomb", "WARNING! it's not a toy", _sprBlackHoleBomb, ItemType.Consumable,
            ItemSubType.None, 1000000, 0, 0, [ItemInfinityIngot, 4, Item.EMPGrenade, 1], ScriptWrap(BlackHole), undefined, true, 9999);
        ItemMatrixEye = ItemCreate(undefined, "Matrix Eye", "Your uber has arrived", _sprMatrixEye, ItemType.Gear,
            ItemSubType.None, 100000, 0, 0, [/* Item.KrakenEye, 30, Item.StarFragment, 50, ItemInfinityCatalyst, 2 */], ScriptWrap(MatrixEye), 30);
        ItemExtremeStew = ItemCreate(undefined, "Extreme Stew", "galaxy food", _sprExtremeStew, ItemType.Consumable,
            ItemSubType.None, 10, 200, 2000, [Item.Beet, 1, Item.Berry, 1, Item.CactusFruit, 1, Item.Citrus, 1, Item.Egg, 1,
                Item.Fish, 1, Item.HotPepper, 1, Item.Meat, 1, Item.Pumpkin, 1, Item.Seaweed, 1], ScriptWrap(UseConsume));
        ItemGalaxySigil = ItemCreate(undefined, "Galaxy Sigil", "", _sprGalaxySigil, ItemType.Consumable,
            ItemSubType.None, 1000, 0, 0, [], ScriptWrap(GalaxySpirit), 1000);
        #endregion
        
        #region NEUTRONIUM_ITEMS  
        ItemNeutroniumBook = ItemCreate(undefined, "Neutronium Book", "xp gained increased by 140%!", _sprNeutroniumBook, ItemType.Gear,
            ItemSubType.None, 10000000, 0, 0, undefined);
        ItemNeutroniumPickaxe = ItemCreate(undefined, "Neutronium Pickaxe", "resource and plants may drop pile of neutronium",
            _sprNeutroniumPickaxe, ItemType.Gear,  ItemSubType.None, 100000, 0, 0, undefined, ScriptWrap(UsePickaxe),
            undefined, undefined, 7);
        ItemNeutroniumSword = ItemCreate(undefined, "Neutronium Sword", "enemies may drop pile of neutronium", _sprNeutroniumSword, ItemType.Gear,
            ItemSubType.None, 100000, 0, 0, undefined, ScriptWrap(UseSword), undefined, undefined, 7);
        ItemNeutroniumAmulet = ItemCreate(undefined, "Neutronium Amulet", "gain 220% more resources!", _sprNeutroniumAmulet, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, undefined);
        ItemNeutroniumWallet= ItemCreate(undefined, "Neutronium Wallet", "coins are worth 220% more!", _sprNeutroniumWallet, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, undefined);
        ItemNeutroniumBow = ItemCreate(undefined, "Neutronium Bow", "arrows may drop pile of neutronium on hit!", _sprNeutroniumBow, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, undefined);
        ItemNeutroniumBoots = ItemCreate(undefined, "Neutronium Boots", "move speed increase by 100%!\n gives a 50% chance to dodge attacks!", _sprNeutroniumBoots, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, undefined);
        ItemNeutroniumGloves = ItemCreate(undefined, "Neutronium Gloves", "attack speed increased by 100%", _sprNeutroniumGloves, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, undefined);
        #endregion
        
        #region INFINITY_ITEMS
        ItemInfinitySword = ItemCreate(undefined, "Infinity Sword", "enemies may drop infinity ingot", _sprInfinitySword, ItemType.Gear,
            ItemSubType.None, 100000000, 0, 0, [], ScriptWrap(UseSword), 50, true, 999999);
        ItemInfinityPickaxe = ItemCreate(undefined, "Infinity Pickaxe", "resource and plants may drop infinity ingot ", _sprInfinityPickaxe, ItemType.Gear,
            ItemSubType.None, 100000000, 0, 0, [], ScriptWrap(UsePickaxe), 50, true, 999999);
        ItemInfinityAmulet = ItemCreate(undefined, "Infinity Amulet", "gain 240% more resources!", _sprInfinityAmulet, ItemType.Gear,
            ItemSubType.None, 1000000, 0, 0, []);
        ItemInfinityBook = ItemCreate(undefined, "Infinity Book", "xp gained increased by 160%", _sprInfinityBook, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, []);
        ItemInfinityWallet = ItemCreate(undefined, "Infinity Wallet", "coins are worth 240% more!", _sprInfinityWallet, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, []);
        ItemInfinityBow = ItemCreate(undefined, "Infinity Bow", "arrows may drop infinity ingot on hit!", _sprInfinityBow, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, []);
        ItemInfinityBoots = ItemCreate(undefined, "Infinity Boots", "move speed increase by 120%!\n gives a 50% chance to dodge attacks!", _sprInfinityBoots, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, []);
        ItemInfinityGloves = ItemCreate(undefined, "Infinity Gloves", "attack speed increased by 120%", _sprInfinityGloves, ItemType.Gear,
            ItemSubType.None, 10000, 0, 0, []);
        #endregion
        
        #region ITEMDATA.CRAFTING_TIME
        ItemEdit(ItemPileOfNeutronium, ItemData.CraftingTime, 150);
        ItemEdit(ItemNeutroniumNugget, ItemData.CraftingTime, 150);
        ItemEdit(ItemNeutroniumIngot, ItemData.CraftingTime, 150);
        ItemEdit(ItemInfinityIngot, ItemData.CraftingTime, 150);
        ItemEdit(ItemCrystalMatrix, ItemData.CraftingTime, 150);
        ItemEdit(ItemPlasticLattice, ItemData.CraftingTime, 150);
        ItemEdit(ItemInfinityCatalyst, ItemData.CraftingTime, 150);
        ItemEdit(ItemNeutroniumBook, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumPickaxe, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumSword, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumAmulet, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumWallet, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumBow, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumBoots, ItemData.CraftingTime, 1000);
        ItemEdit(ItemNeutroniumGloves, ItemData.CraftingTime, 1000);
        ItemEdit(ItemExtremeStew, ItemData.CraftingTime, 150);
        ItemEdit(ItemInfinitySword, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityPickaxe, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityAmulet, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityBook, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityWallet, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityBow, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityBoots, ItemData.CraftingTime, 1000);
        ItemEdit(ItemInfinityGloves, ItemData.CraftingTime, 1000);
        ItemEdit(ItemBlackHoleBomb, ItemData.CraftingTime, 150);
        ItemEdit(ItemMatrixEye, ItemData.CraftingTime, 150);
        #endregion
        
    #endregion
    
    #region STRUCTURES
    StructureNeutronCollector = StructureCreate(undefined, "Neutron Collector", "step by step to rich", StructureType.Base ,
        _sprNeutronCollector, undefined, [Item.LegendaryGem, 10, Item.NuclearFuelCell, 10, Item.ToxicSludge, 10], 2, true,
        [ItemPileOfNeutronium], true, BuildMenuCategory.Magical, undefined);
        
    StructureNeutronCompressor = StructureCreate(undefined, "Neutron Compressor", "go to your rich", StructureType.Base,
        _sprNeutronCompressor, undefined, [ItemPileOfNeutronium, 10, Item.KrakenEye, 20, Item.CosmicSteel, 10], 3, true, 
        [], true, BuildMenuCategory.Industrial, [Gear.Book]);
        
    StructureDireForge = StructureCreate(undefined, "Dire Forge", "make incredible", StructureType.Base, _sprDireForge,
        undefined, [ItemCrystalMatrix, 80, Item.NuclearFuelCell, 10, Item.VoidSteel, 60, Item.CosmicSteel, 30], 2, true,
        [ItemNeutroniumIngot, ItemInfinityIngot], true, BuildMenuCategory.Industrial, []);
    
    
    #region STRUCTURE_ADD_ITEM 
    StructureAddItem(Structure.Forge, ItemCrystalMatrix, ItemNeutroniumNugget);
    StructureAddItem(Structure.Factory, ItemPlasticLattice, ItemBlackHoleBomb);
    StructureAddItem(Structure.Cauldron, ItemExtremeStew);
    // StructureAddItem(StructureDireForge, ItemMatrixEye);
    StructureAddItem(Structure.SigilMaker, ItemGalaxySigil);
    #endregion
    
    #endregion
    
    #region SINGULARITIES
    ItemJellySingularity = SingularityCreate("Jelly", "Jelly", "Jelly", 10000, [Item.Jelly, 5000]);
    ItemBoneSingularity = SingularityCreate("Bone", "Bone", "Bone", 10000, [Item.Bone, 5000]);
    ItemIronSingularity = SingularityCreate("Iron", "Iron", "Iron", 10000, [Item.IronIngot, 5000]);
    ItemGoldSingularity = SingularityCreate("Gold", "Gold", "Gold", 20000, [Item.GoldIngot, 5000]);
    ItemSteelSingularity = SingularityCreate("Steel", "Steel", "Steel", 25000, [Item.Steel, 5000]);
    ItemCrystalSingularity = SingularityCreate("Crystal", "Crystal", "Crystal", 30000, [Item.Crystal, 5000]);
    ItemVoidSingularity = SingularityCreate("Void", "Void", "Void", 40000, [Item.VoidSteel, 5000]);
    ItemCosmicSingularity = SingularityCreate("Cosmic", "Cosmic", "Cosmic", 50000, [Item.CosmicSteel, 5000]);
    ItemUraniumSingularity = SingularityCreate("Uranium", "Uranium", "Uranium", 60000, [Item.Uranium, 5000]);
    
    #region ITEM_EDIT
    ItemEdit(ItemJellySingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemBoneSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemIronSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemGoldSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemSteelSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemVoidSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemCosmicSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemUraniumSingularity, ItemData.CraftingTime, 10);
    ItemEdit(ItemCrystalSingularity, ItemData.CraftingTime, 10);
    #endregion
    
    #endregion
    
    #region GEARS
    GearCategoryAddItems(Gear.Book, ItemNeutroniumBook, ItemInfinityBook);
    GearCategoryAddItems(Gear.Pickaxe, ItemNeutroniumPickaxe, ItemInfinityPickaxe);
    GearCategoryAddItems(Gear.Sword, ItemNeutroniumSword, ItemInfinitySword);
    GearCategoryAddItems(Gear.Amulet, ItemNeutroniumAmulet, ItemInfinityAmulet);
    GearCategoryAddItems(Gear.Wallet, ItemNeutroniumWallet, ItemInfinityWallet);
    GearCategoryAddItems(Gear.Bow, ItemNeutroniumBow, ItemInfinityBow);
    GearCategoryAddItems(Gear.Boots, ItemNeutroniumBoots, ItemInfinityBoots);
    GearCategoryAddItems(Gear.Gloves, ItemNeutroniumGloves, ItemInfinityGloves);
    GearCategoryAddItems(GearMatrixEye, ItemMatrixEye);
    #endregion
    
    #region ITEMDATA.BLUEPRINT
    
        #region NEUTRONIUM_ITEMS
        ItemEdit(ItemNeutroniumPickaxe, ItemData.Blueprint, 
            [ItemNeutroniumIngot, 10, ItemIronSingularity, 3, ItemGoldSingularity, 2]);
        ItemEdit(ItemNeutroniumSword, ItemData.Blueprint,
            [ItemNeutroniumIngot, 15, ItemSteelSingularity, 1, ItemPlasticLattice, 10]);
        ItemEdit(ItemNeutroniumBow, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, ItemIronSingularity, 3, ItemBoneSingularity, 2]);
        ItemEdit(ItemNeutroniumBook, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, Item.Paper, 200, ItemGoldSingularity, 2]);
        ItemEdit(ItemNeutroniumAmulet, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, ItemCrystalMatrix, 20]);
        ItemEdit(ItemNeutroniumWallet, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, ItemGoldSingularity, 5, ItemPlasticLattice, 10]);
        ItemEdit(ItemNeutroniumBoots, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, ItemJellySingularity, 1, ItemCrystalMatrix, 5]);
        ItemEdit(ItemNeutroniumGloves, ItemData.Blueprint,
            [ItemNeutroniumIngot, 10, ItemSteelSingularity, 2]);
        #endregion
        
        #region INFINITY_ITEMS
        ItemEdit(ItemInfinitySword, ItemData.Blueprint,
            [ItemInfinityCatalyst, 2, ItemUraniumSingularity, 2]);
        ItemEdit(ItemInfinityPickaxe, ItemData.Blueprint,
            [ItemInfinityCatalyst, 2, ItemCosmicSingularity, 1]);
        ItemEdit(ItemInfinityAmulet, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, ItemCrystalSingularity, 4]);
        ItemEdit(ItemInfinityBook, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, Item.Paper, 300, ItemVoidSingularity, 1]);
        ItemEdit(ItemInfinityWallet, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, ItemGoldSingularity, 3]);
        ItemEdit(ItemInfinityBow, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, ItemBoneSingularity, 2]);
        ItemEdit(ItemInfinityBoots, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, ItemJellySingularity, 1]);
        ItemEdit(ItemInfinityGloves, ItemData.Blueprint,
            [ItemInfinityCatalyst, 1, ItemVoidSingularity, 1]);
        #endregion 
        
        ItemEdit(ItemGalaxySigil, ItemData.Blueprint,
            [Item.StarFragment, 10, ItemInfinityIngot, 10, ItemSteelSingularity, 10]);
        
    #endregion
    
    #region ENEMIES
    EnemyGalaxySpirit = EnemyCreate(undefined, "Galaxy Spirit", EnemyType.Raider);
    EnemyEdit(EnemyGalaxySpirit, EnemyData.HP, 7500);
    EnemyEdit(EnemyGalaxySpirit, EnemyData.Damage, 7.5);
    #endregion
    
    #region FEATS
    featDireForge = FeatCreate("DIIIIRE!", "craft dire forge", undefined, rewardDireForge);
    featNetronuimDude = FeatCreate("Netronium DUDE", "get a neutronium tier item", undefined, rewardNetroniumDude);
    featInfinityMan = FeatCreate("Infinity DUDE", "get a infinity tier item", undefined, rewardInfinityDude);
    featSingularity = FeatCreate("Singularities man", "get any singularity", undefined, rewardSingularity);
    featDefeatGalaxySpirit = FeatCreate("spectrophobia", "defeat a the galaxy spirit", undefined, rewardGalaxySpirit);
    #endregion
    

#define OnItemGet(item, quantity)
    if (item == ItemNeutroniumBook || item == ItemNeutroniumPickaxe || item == ItemNeutroniumSword ||
        item == ItemNeutroniumAmulet || item == ItemNeutroniumWallet || item == ItemNeutroniumBow ||
        item == ItemNeutroniumBoots || item == ItemNeutroniumGloves){
            FeatUnlock(featNetronuimDude);
    }
    if (item == ItemInfinitySword || item == ItemInfinityPickaxe || item == ItemInfinityAmulet ||
        item == ItemInfinityBook || item == ItemInfinityWallet || item == ItemInfinityBow ||
        item == ItemInfinityBoots || item == ItemInfinityGloves){
            FeatUnlock(featInfinityMan);
    }
    if (item == ItemJellySingularity || item == ItemBoneSingularity || item == ItemIronSingularity ||
        item == ItemGoldSingularity || item == ItemSteelSingularity || item == ItemCrystalMatrix ||
        item == ItemVoidSingularity || item == ItemCosmicSingularity || item == ItemUraniumSingularity){
        FeatUnlock(featSingularity);
    }
#region rewards
#define rewardDireForge
    DropItem(objPlayer.x, objPlayer.y, ItemNeutroniumNugget, 10);
#define rewardNetroniumDude
    DropItem(objPlayer.x, objPlayer.y, ItemExtremeStew, 10);
#define rewardInfinityDude
    DropItem(objPlayer.x, objPlayer.y, ItemExtremeStew, 20);
#define rewardSingularity
    DropItem(objPlayer.x, objPlayer.y, ItemBlackHoleBomb, 20);
#define rewardGalaxySpirit
    DropItem(objPlayer.x, objPlayer.y, ItemMatrixEye, 1);
#endregion
#region MatrixEye
#define MatrixEye
    _instMatrixEye = ModObjectSpawn(objPlayer.x, objPlayer.y, 0);
    eyeTick = 30;
    with(_instMatrixEye){
        sprite_index = _sprMatrixEye;
        direction = point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y);
        InstanceAssignMethod(id, "step", ScriptWrap(MatrixEyeUpdate));
    }
#define MatrixEyeUpdate
    
    var _xDelta = lengthdir_x(6, direction);
    var _yDelta = lengthdir_y(6, direction);
    x += _xDelta;
    y += _yDelta;
    eyeTick--;
    if(eyeTick <= 0){
        if(id.x >= 0 && id.y >= 0 ){
            if(id.x <= 1300 && id.y <= 1300){
                objPlayer.x = id.x;
                objPlayer.y = id.y;
                instance_destroy(id);
                repeat(100){
                    ZapSpawn();
                }
            }
        }
    }
    // playerX = "X: " + objPlayer.x;
    // playerY = "Y: " + objPlayer.y;
    // Trace("X:");
    // Trace(objPlayer.x);
    // Trace("Y:");
    // Trace(objPlayer.y);
    
   
#endregion
#region BlackHoleBomb
#define BlackHole
    prepare = true
    prepareTick = 50;
    _instBlackHoleBomb = ModObjectSpawn(objPlayer.x, objPlayer.y, 0);

    with(_instBlackHoleBomb){
        sprite_index = _sprBlackHoleBomb;
        InstanceAssignMethod(id, "step", ScriptWrap(BlackHoleUpdate));
    }
    
#define BlackHoleUpdate
        if(prepare){
            if(prepareTick <= 0){
                ExplosionCreate(x, y, 3330, false);
                instance_destroy(id);
                // prepare = false;
            }
            prepareTick--;
            // Trace(prepare);
            // Trace(prepareTick);
        }
#endregion

#define OnItemUse(item)
    if (item == ItemInfinitySword){
        repeat(100){
            ZapSpawn();
        }
    }
    // if (item == ItemGalaxySigil){
    //     _instGalaxySpirit = ModEnemySpawn(objPlayer.x, objPlayer.y, objPlayer.depth, EnemyGalaxySpirit);        
    // }
#define GalaxySpirit
    _instGalaxySpirit = ModEnemySpawn(objPlayer.x, objPlayer.y, objPlayer.depth, EnemyGalaxySpirit);
    with(_instGalaxySpirit){
        image_speed = 0.2;
        sprite_index = _sprGalaxySpirit;
    }
#define OnResourceDestroy(inst)
    if (ToolSelected() == ItemNeutroniumPickaxe || ToolSelected() = ItemInfinityPickaxe){
        if (irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90) {
            DropItem(objPlayer.x, objPlayer.y, ItemPileOfNeutronium, irandom_range(1, 3));
        }
    }
    if (ToolSelected() == ItemInfinityPickaxe){
        if(irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90){
            DropItem(objPlayer.x, objPlayer.y, ItemInfinityIngot, irandom_range(1, 3));
        }
    }
#define OnArrowHit(arrow, inst)
    if(ToolSelected() == ItemNeutroniumBow || ToolSelected() == ItemInfinityBow){
        if (irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90) {
            DropItem(arrow.x, arrow.y, ItemPileOfNeutronium, irandom_range(1, 3));
        }
    }
    if(ToolSelected() == ItemInfinityBow){
        if (irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90) {
            DropItem(arrow.x, arrow.y, ItemInfinityIngot, irandom_range(1, 3));
        }
    }
#define OnMobDeath(inst)
    if (ToolSelected() == ItemNeutroniumSword || ToolSelected() == ItemInfinitySword){
        if (irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90){
            DropItem(objPlayer.x, objPlayer.y, ItemPileOfNeutronium, irandom_range(1, 3));
        }
    }
    if (ToolSelected() == ItemInfinitySword){
        if (irandom_range(0, 100) <= 10 || irandom_range(0, 100) >= 90){
            DropItem(objPlayer.x, objPlayer.y, ItemInfinityIngot, irandom_range(1, 3));
        }
    }
    if (inst == _instGalaxySpirit){
        DropItem(inst.x, inst.y, ItemInfinityCatalyst, irandom_range(1, 5));
        FeatUnlock(featDefeatGalaxySpirit);
    }
    
#define OnStructureBuild(inst, structure)
    if (structure == StructureNeutronCompressor) {
        inst.image_speed = 0.1; 
    }
    if (structure == StructureNeutronCollector) {
        inst.image_speed = 0.1;
    }
    if (structure == StructureDireForge){
        FeatUnlock(featDireForge);
    }
#define SingularityCreate(name, description, _spr, value, recipe)
    var _sprite = sprite_add("spr/" + "spr" + _spr + "Singularity.png", 1, false, false, 0, 0);
    SetOffset(_sprite);
    _singularity = ItemCreate(
        undefined, 
        name + " Singularity", 
        "power of " + description, 
        _sprite, 
        ItemType.Material,
        ItemSubType.None, 
        value, 
        0, 
        0, 
        recipe);
    StructureAddItem(StructureNeutronCompressor, _singularity)
    return _singularity
#define SetOffset(sprite)
    sprite_set_offset(sprite, sprite_get_width(sprite) / 2, sprite_get_height(sprite) / 2);
#define OnNewGame
__FeatNewGame();
#define OnLoad
__FeatLoad();
#define OnSystemStep
__FeatSystemStep();
#define OnDrawGUI
__FeatDrawGUI();
