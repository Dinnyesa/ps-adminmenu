
RegisterNetEvent('ps-adminmenu::client:spectate', function(data, selectedData)
    if not CheckPerms(data.perms) then return end
    local playerId = selectedData["Player"].value
    TriggerServerEvent('txsv:req:spectate:start', tonumber(playerId))
end)
