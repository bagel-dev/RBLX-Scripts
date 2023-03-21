for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "soldier_model" then
        local Cham = Instance.new("Highlight", game:GetService("Lighting"))
        Cham.Adornee = v
        local render = game.RunService.RenderStepped:Connect(function()
        Cham.Enabled = true
        Cham.DepthMode = 0
        Cham.OutlineColor = Color3.fromRGB(0, 0, 0)
        Cham.OutlineTransparency = 1
        Cham.FillColor = Color3.fromRGB(255, 28, 255)
        if v:FindFirstChild("friendly_marker") then
            Cham.FillColor = Color3.fromRGB(28, 255, 28)
        end
        end)
        workspace.ChildRemoved:Connect(function(child)
            if child == v then
                render:Disconnect()
                Cham:Destroy()
            end
        end)
    end
end



workspace.ChildAdded:Connect(function(v)
    if v.Name == "soldier_model" then
        local Cham = Instance.new("Highlight", game:GetService("Lighting"))
        Cham.Adornee = v
        local render = game.RunService.RenderStepped:Connect(function()
        Cham.Enabled = true
        Cham.DepthMode = 0
        Cham.OutlineColor = Color3.fromRGB(0, 0, 0)
        Cham.OutlineTransparency = 1
        Cham.FillColor = Color3.fromRGB(255, 28, 255)
        if v:FindFirstChild("friendly_marker") then
            Cham.FillColor = Color3.fromRGB(28, 255, 28)
        end
        end)
        workspace.ChildRemoved:Connect(function(child)
            if child == v then
                render:Disconnect()
                Cham:Destroy()
            end
        end)
    end
end)
