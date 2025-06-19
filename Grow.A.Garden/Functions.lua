function getmoney()
  return game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value
end

function getFarmPos()
    local playerName = game.Players.LocalPlayer.Name
    local farms = workspace:WaitForChild("Farm")
    for _, f in pairs(farms:GetChildren()) do
        local d = f:FindFirstChild("Important") and f.Important:FindFirstChild("Data")
        if d and d:FindFirstChild("Owner") and d.Owner.Value == playerName then
            local cp = f:FindFirstChild("Center_Point")
            if cp and cp:IsA("BasePart") then
                return cp.Position
            end
        end
    end
    return nil
end

