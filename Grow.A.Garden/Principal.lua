loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Kaitun/refs/heads/main/Grow.A.Garden/Functions.lua"))()

local ms = getMoney()

task.spawn(function()
    while true do
      ms = getMoney()
      print(ms)
      task.wait(0.5)
    end
end)
