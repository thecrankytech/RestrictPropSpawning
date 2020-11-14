local ErrorMsg = "[ERROR] Spawning props is restricted to staff only.",
local staff = {
    "superadmin",
    "admin",
    "operator",
}

hook.Add("PlayerSpawnProp", "RestrictPropSpawning", function(ply, model)
    if (!table.HasValue(staff, ply:GetNWString("usergroup"))) then
        ply:ChatPrint( ErrorMsg )
        return false
    end
end)
