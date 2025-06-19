loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Kaitun/refs/heads/main/Grow.A.Garden/Functions.lua"))()

local ms = getmoney()

task.spawn(function()
    while true do
      ms = getmoney()
      task.wait(0.5)
    end
end)
