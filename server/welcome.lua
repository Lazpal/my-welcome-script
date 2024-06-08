-- Path: resources/welcome-script/server/welcome.lua

AddEventHandler('playerConnecting', function(name, setCallback, deferrals)
    local src = source
    deferrals.defer()
    Wait(0)
    deferrals.update(string.format("Welcome %s to the server!", name))
    Wait(1000)
    deferrals.done()
end)
