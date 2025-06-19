-- valores

local money =
local etapa = 0
local terreno = nil

-- pegar o terreno atual 


local playerName = game.Players.LocalPlayer.Name
local terreno = function() for _,f in ipairs(workspace.Farm:GetChildren()) do local d=f:FindFirstChild("Important") and f.Important:FindFirstChild("Data") if d and d:FindFirstChild("Owner") and d.Owner.Value==playerName then return f end end end()
local ndt = terreno.Important.Data.Farm_Number.Value
local v3t = function() local p=game.Players.LocalPlayer.Name for _,f in ipairs(workspace.Farm:GetChildren()) do local d=f:FindFirstChild("Important") and f.Important:FindFirstChild("Data") if d and d:FindFirstChild("Owner") and d.Owner.Value==p then return f:GetPivot().Position end end end()

-- Funções 

function tp(x)
	local char = game.Players.LocalPlayer.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		char.HumanoidRootPart.CFrame = CFrame.new(x)
	end
end

-- 
