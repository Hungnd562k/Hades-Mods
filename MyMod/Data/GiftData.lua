if not MyMod.Config.Enabled then return end

table.insert(GiftOrdering, "MyModTrait")

GiftData.MyModNpc =
{
    InheritFrom = {"DefaultGiftData"},
    [1] = { Gift = "MyModTrait" },
}