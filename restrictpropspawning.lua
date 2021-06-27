local PropErrorMsg = "[ERROR] Spawning props is restricted to staff only."
local NPCErrorMsg = "[ERROR] Spawning NPCs is restricted to staff only."
local staff = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["operator"] = true,
}

hook.Add("PlayerSpawnProp", "RestrictPropSpawning", function(ply, model)
    if not staff[ply:GetNWString("usergroup")] then
        ply:ChatPrint( PropErrorMsg )
        return false
    else
        ply:ChatPrint("Successfully spawned: " .. model)
    end
end)

hook.Add("PlayerSpawnNPC", "RestrictNPCSpawning", function(ply, npcType, wep)
    if not staff[ply:GetNWString("usergroup")] then
        ply:ChatPrint( NPCErrorMsg )
        return false
    else
        ply:ChatPrint("Successfully spawned: " .. npcType)
    end
end)