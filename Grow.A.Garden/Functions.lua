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

function tptocenter()
    tp(getFarmPos())
end

function tptogarden()
    local l = getFarmNumber()
    local p = getFarmPos()
    if not l or not p then return end
    local offset = (l == 1 or l == 3 or l == 5) and Vector3.new(0, 0, 40) or Vector3.new(0, 0, -40)
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

function pcs()
    local player = game.Players.LocalPlayer
    local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
    local l = getPosPlant()
    if tool then
        local baseName = tool.Name:match("^(.-)%s+[Ss]eed") or tool.Name
        baseName = baseName:gsub("%s+$", "")
        local y = math.random() * (1.5 - 0.13) + 0.13
        game:GetService("ReplicatedStorage").GameEvents.Plant_RE:FireServer(
            Vector3.new(l.X, y, l.Z),
            baseName
        )
    end
end
 
function esa()
    local p = game.Players.LocalPlayer
    local b, h = p:FindFirstChild("Backpack"), p.Character and p.Character:FindFirstChild("Humanoid")
    if not (b and h) then return end
    local l = {}
    for _, t in ipairs(b:GetChildren()) do
        local n = t.Name:lower()
        if t:IsA("Tool") and n:find("seed") and not n:find("pack") then
            l[#l + 1] = t
        end
    end
    if #l > 0 then h:EquipTool(l[math.random(#l)]) end
end

function sellinv()
    game:GetService("ReplicatedStorage").GameEvents.Sell_Inventory:FireServer()
    task.wait(0.15)
    tp(Vector3.new(87, 3, 0))
    task.wait(0.35)
    tptocenter()
end
