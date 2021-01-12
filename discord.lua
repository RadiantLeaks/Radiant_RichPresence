Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(574574788846456) -- client id (int)

        SetRichPresence( GetPlayerName(source) .. " esta en " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("radiantlogo") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("loveimg") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Vida: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end)

--[[
    EVAL STRING FOR VIDEO 
    /eval SetEntityHealth(GetPlayerPed(-1),100)
    
--]]
