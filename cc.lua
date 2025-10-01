pcall(function()
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            child:Destroy()
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    end)
end)
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/0108d650b1dc878e"))()
