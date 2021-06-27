ULib.registerPlugin({
    Name = 'therealknight\'s Spawn restriction',
    Version = '1.0.0',
    Author ='therealknight',
    URL = 'https://github.com/therealknight/RestrictPropSpawning'
})
--[[
    Prop spawning restriction
]]
-- Permission check hook: 
hook.Add("PlayerSpawnProp", "sr_RestrictPropSpawning", function(ply, model) -- add uniqueness to unique hook id
    -- check if user has permissions
    if not ply:query( 'Can Spawn Props' ) then
        -- Print error to users chat and console
        ULib.tsayError(ply, 'You don\'t have permissions to spawn props')
        return false
    end -- I don't think it's necessary to notify the user if something has been spawned successfully, another hook may still deny it
end)
ULib.ucl.registerAccess('Can Spawn Props', 'user', 'Allows user to spawn props', 'KNIGHTs SpawnRestriction')

--[[
    NPC spawning restriction
]]
-- Permission check hook: 
hook.Add("PlayerSpawnNPC", "sr_RestrictNPCSpawning", function(ply, npcType, wep) -- add uniqueness to unique hook id
    -- check if user has permissions
    if not ply:query( 'Can Spawn NPCs' ) then
        -- Print error to users chat and console
        ULib.tsayError(ply, 'You don\'t have permissions to spawn NPCs')
        return false
    end -- I don't think it's necessary to notify the user if something has been spawned successfully, another hook may still deny it
end)
ULib.ucl.registerAccess('Can Spawn NPCs', 'user', 'Allows user to spawn NPCs', 'KNIGHTs SpawnRestriction')

--[[
    SWEP give restriction
]]
-- Permission check hook: 
hook.Add("PlayerGiveSWEP", "sr_RestrictWeaponSpawning", function(ply, weapon, swep) -- add uniqueness to unique hook id
    -- check if user has permissions
    if not ply:query( 'Can Give SWEPs' ) then
        -- Print error to users chat and console
        ULib.tsayError(ply, 'You don\'t have permissions to give SWEPs')
        return false
    end -- I don't think it's necessary to notify the user if something has been spawned successfully, another hook may still deny it
end)
ULib.ucl.registerAccess('Can Give SWEPs', 'user', 'Allows user to give SWEPs', 'KNIGHTs SpawnRestriction')

--[[
    SWEP spawn restriction
]]
-- Permission check hook: 
hook.Add("PlayerSpawnSWEP", "sr_RestrictWeaponSpawning", function(ply, weapon, swep) -- add uniqueness to unique hook id
    -- check if user has permissions
    if not ply:query( 'Can Spawn SWEPs' ) then
        -- Print error to users chat and console
        ULib.tsayError(ply, 'You don\'t have permissions to spawn SWEPs')
        return false
    end -- I don't think it's necessary to notify the user if something has been spawned successfully, another hook may still deny it
end)
ULib.ucl.registerAccess('Can Spawn SWEPs', 'user', 'Allows user to spawn SWEPs', 'KNIGHTs SpawnRestriction')