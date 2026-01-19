RegisterCommand("clearchat", function(source, args)
    if IsPlayerAceAllowed(source, "chat.clear") then
        TriggerClientEvent("chat:clear", -1)
        Citizen.Wait(10)
        TriggerClientEvent('chatMessage', -1, "[^1LACRP^0] Chat has been cleared by an admin")
        print("Chat has been cleared by ID: " .. source .. " Name: " .. GetPlayerName(source))
    else
        TriggerClientEvent('chatMessage', -1, "[^1LACRP^0] Access Denied")
        print("A user with the ID " .. source .. " tried to run the clearchat script without having proper perms. Name: " .. GetPlayerName(source))
    end
end, false)

print("Made by LACRP. For support visit our Discord @ https://discord.gg/lacountyrp")
