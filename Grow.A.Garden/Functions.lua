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

function getFarmNumber()
    local p = game.Players.LocalPlayer.Name
    for _, f in pairs(workspace:WaitForChild("Farm"):GetChildren()) do
        local d = f:FindFirstChild("Important") and f.Important:FindFirstChild("Data")
        if d and d:FindFirstChild("Owner") and d.Owner.Value == p then
            return d:FindFirstChild("Farm_Number") and d.Farm_Number.Value
        end
    end
end

function tp(x, y)
    y = y or Vector3.new(0, 5, 0)
    local h = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if h then h.CFrame = CFrame.new(x + y) end
end

function tptofarm()
    local l = getFarmNumber()
    local p = getFarmPos()
    if not l or not p then return end
    local offset = (l == 1 or l == 3 or l == 5) and Vector3.new(15, 0, 5) or Vector3.new(-15, 0, -5)
    tp(p, offset)
end

function getPosPlant()
    local l = getFarmNumber()
    local p = getFarmPos()
    if not l or not p then return nil end
    local offset = (l == 1 or l == 3 or l == 5) and Vector3.new(15, 0, 5) or Vector3.new(-15, 0, -5)
    local posFinal = p + offset
    return Vector3.new(posFinal.X, 0.13552704453468323, posFinal.Z)
end
