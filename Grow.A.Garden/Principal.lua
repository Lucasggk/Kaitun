loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Kaitun/refs/heads/main/Grow.A.Garden/Functions.lua"))()

local ms = getmoney()
local etp

task.spawn(function()
    while true do
      ms = getmoney()
      task.wait(0.5)
    end
end)

if ms >= 0 and ms <= 1000 then
etp = 1
elseif ms >= 1001 and ms <= 10000 then
etp = 2
elseif ms >= 10001 and ms <= 100000 then
etp = 3
else 
etp = 4
print(etp)
end
