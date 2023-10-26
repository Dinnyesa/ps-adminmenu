local noclip = false
RegisterNetEvent('ps-adminmenu:client:ToggleNoClip', function(data)
    if not CheckPerms(data.perms) then return end

    if not noclip then
        TriggerEvent("txcl:setPlayerMode", "noclip", false)
        noclip = true
    else
        TriggerEvent("txcl:setPlayerMode", "none", false)
        noclip = false
    end
end)
