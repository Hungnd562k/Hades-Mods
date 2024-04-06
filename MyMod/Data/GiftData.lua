if not MyMod.Config.Enabled then return end

table.insert(GiftOrdering, "MyModTrait")

GiftData.MyModNpc =
{
    InheritFrom = {"DefaultGiftData"},
    [1] = { Gift = "MyModTrait" },
}

table.insert(GiftOrdering, "IncreaseCritChance")

GiftData.GodOfSexUpgrade =
{
    InheritFrom = {"DefaultGiftData"},
    [1] = { Gift = "IncreaseCritChance" },
}