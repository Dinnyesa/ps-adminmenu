
-- Drunk Player
RegisterNetEvent('ps-adminmenu:server:DrunkPlayer', function(data, selectedData)
    if not CheckPerms(data.perms) then return end

    local src = source
    local target = selectedData["Player"].value
    local targetPed = GetPlayerPed(target)
    local Player = QBCore.Functions.GetPlayer(target)

    if not Player then 
        return QBCore.Functions.Notify(src, locale("not_online"), 'error', 7500) 
    end

   TriggerClientEvent('txsv:req:troll:setDrunk', targetPed)
    QBCore.Functions.Notify(src, locale("playerdrunk", Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. " | " .. Player.PlayerData.citizenid), 'Success', 7500)
end)