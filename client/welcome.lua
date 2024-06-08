-- Path: resources/welcome-script/client/welcome.lua

local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('playerSpawned', function()
    local playerName = GetPlayerName(PlayerId())
    Wait(9000)
    QBCore.Functions.Notify("Welcome to the server, " .. playerName .. "!", "success")
end)

-- Fallback for when playerSpawned doesn't trigger (optional)
CreateThread(function()
    while true do
        Wait(9000) -- Check every 5 seconds
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            local playerName = GetPlayerName(PlayerId())
            QBCore.Functions.Notify("Welcome to the server, " .. playerName .. "!", "success")
            break
        end
    end
end)
