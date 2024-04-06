if not MyMod.Config.Enabled then return end

OnAnyLoad{ "DeathArea", function (triggerArgs)
    DebugPrint({Text = "Hello World!"})
end}

if not MyMod.Config.Enabled then return end

OnUsed{ 310036, function (triggerArgs)
    DebugPrint({Text="@@@HUNGND TEST@@@"})
    IncrementGiftMeter("MyModNpc", 1)
end}

ModUtil.Path.Context.Wrap("CheckDoorHealTrait", function()
    ModUtil.Path.Wrap("round", function(base, ...)
        return base(...) + GetTotalHeroTraitValue("MyModTraitValue")
    end, MyMod)
end, MyMod)