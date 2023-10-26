

-- Toggle Blips
RegisterNetEvent('ps-adminmenu:client:toggleBlips', function(data)

end)

-- Toggle Names
local showPlayerIds = false
RegisterNetEvent('ps-adminmenu:client:toggleNames', function(data)
    if not CheckPerms(data.perms) then return end
    showPlayerIds = not showPlayerIds
    TriggerServerEvent('txsv:req:showPlayerIDs', showPlayerIds)
end)

-- Mute Player
RegisterNetEvent("ps-adminmenu:client:MutePlayer", function (data, selectedData)
    if not CheckPerms(data.perms) then return end
    local playerId = selectedData["Player"].value
    if not playerId then return end
    exports["pma-voice"]:toggleMutePlayer(playerId)
end)

-- Remove Stress
RegisterNetEvent('ps-adminmenu:client:removeStress', function(data)
    TriggerServerEvent('hud:server:RelieveStress', 100)
end)
