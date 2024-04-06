if not MyMod.Config.Enabled then return end

TraitData.MyModTrait =
{
    Icon = "Keepsake_Collar",
    EquipSound = "/SFX/Menu Sounds/KeepsakeCerberusCollar",
    InheritFrom = { "GiftTrait" },
    InRackTitle = "MyModTrait_Rack",
    MyModTraitValue = MyMod.Config.HealValue,
    SignOffData =
	{
	  {
		Text = "MyModSignoff"
	  }
	},
    PropertyChanges =
    {
        {
            LuaProperty = "MaxHealth",
            BaseValue = 500,
            AsInt = true,
            ChangeType = "Add",
            MaintainDelta = true,
            ExtractValue =
            {
                ExtractAs = "TooltipHealth",
            }
        },
    },
    ExtractValues =
	{
		{
			Key = "MyModTraitValue",
			ExtractAs = "TooltipHeal"
		}
	},
}