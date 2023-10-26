-- Set on fire
RegisterNetEvent('ps-adminmenu:client:SetOnFire', function(data, selectedData)
    if not CheckPerms(data.perms) then return end
    local playerId = selectedData["Player"].value
    TriggerServerEvent("txsv:req:troll:setOnFire", playerId)
end)

-- Explode player
RegisterNetEvent('ps-adminmenu:client:ExplodePlayer', function(damage)
    local coords = GetEntityCoords(cache.serverId)
    if damage == nil then damage = "nodamage" end
    if damage == "nodamage" then
        AddExplosion(coords.x, coords.y, coords.z, 'EXPLOSION_TANKER', 2.0, true, false, 2.0)
    else
        AddExplosion(coords.x, coords.y, coords.z, 2, 0.9, 1, 0, 1065353216, 0)
    end
end)

-- Play Sound
RegisterNetEvent('ps-adminmenu:client:PlaySound', function(data, selectedData)
    if not CheckPerms(data.perms) then return end
    local player = selectedData["Player"].value
    local sound = selectedData["Sound"].value

    TriggerServerEvent("InteractSound_SV:PlayOnOne", player, sound, 0.30)
end)

-- Freeze Player
RegisterNetEvent('ps-adminmenu:client:FreezePlayer', function(data, selectedData)
    if not CheckPerms(data.perms) then return end
    local targetId = selectedData["Player"].value

    TriggerServerEvent('txsv:req:freezePlayer', targetId)
end)

