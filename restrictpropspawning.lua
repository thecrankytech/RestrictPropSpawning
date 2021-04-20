local ErrorMsg = "[ERROR] Spawning props is restricted to staff only."
local staff = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["operator"] = true,
}

hook.Add("PlayerSpawnProp", "RestrictPropSpawning", function(ply, model)
    if not staff[ply:GetNWString("usergroup")] then
        ply:ChatPrint( ErrorMsg )
        return false
    else
        ply:ChatPrint("Successfully spawned: " .. model)
    end
end)
