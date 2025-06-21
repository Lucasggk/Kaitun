loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Kaitun/refs/heads/main/Grow.A.Garden/Functions.lua"))()

local ms = tonumber(getmoney())
local etp

task.spawn(function()
    while true do
      ms = tonumber(getmoney())
      task.wait(0.5)
    end
end)

task.spawn(function()
    while true do
        if ms <= 1000 then
            etp = 1
        elseif ms <= 10000 then
            etp = 2
        elseif ms <= 100000 then
            etp = 3
        elseif ms <= 1000000 then
            etp = 4
        elseif ms <= 10000000 then
            etp = 5
        elseif ms <= 100000000 then
            etp = 6
        elseif ms <= 1000000000 then
            etp = 7
        else
            etp = 8
        end
        task.wait(1)
    end
end)

tptocenter()

print(etp)
task.spawn(function()
while true do 
task.wait(0.2)
esa()
task.wait(0.1)
pcs()
pcs()
task.wait(0.2)
end
end)

task.spawn(function()
        while true do
            task.wait(5)
            tptofarm()
            task.wait(5)
            sellinv()
        end
    end
)



