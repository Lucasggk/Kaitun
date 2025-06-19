loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasggk/Kaitun/refs/heads/main/Grow.A.Garden/Functions.lua"))() 
local ms = tonumber(getmoney())
task.spawn(function()
    while true do
      ms = tonumber(getmoney())
      task.wait(0.5)
    end
end)

local ignoreNames = {
    -- Sementes
    ["Carrot"] = true,
    ["Strawberry"] = true,
    ["Blueberry"] = true,
    ["Orange Tulip"] = true,
    ["Tomato"] = true,
    ["Corn"] = true,
    ["Daffodil"] = true,
    ["Watermelon"] = true,
    ["Pumpkin"] = true,
    ["Apple"] = true,
    ["Bamboo"] = true,
    ["Coconut"] = false,
    ["Cactus"] = false,
    ["Dragon Fruit"] = false,
    ["Mango"] = false,
    ["Grape"] = true,
    ["Mushroom"] = true,
    ["Pepper"] = true,
    ["Cacao"] = true,
    ["Beanstalk"] = true,
    ["Ember Lily"] = true,
    ["Sugar Apple"] = true,

    -- Gears
    ["Watering Can"] = false,
    ["Trowel"] = false,
    ["Recall Wrench"] = false,
    ["Basic Sprinkler"] = false,
    ["Advanced Sprinkler"] = false,
    ["Godly Sprinkler"] = false,
    ["Lightning Rod"] = false,
    ["Master Sprinkler"] = false,
    ["Cleaning Spray"] = false,
    ["Favorite Tool"] = false,
    ["Harvest Tool"] = false,
    ["Friendship Pot"] = false,
}

task.spawn(function()
    while true do
        if ms and ms < 50000000 then
            ignoreNames["Watering Can"] = false
            ignoreNames["Trowel"] = false
            ignoreNames["Recall Wrench"] = false
            ignoreNames["Basic Sprinkler"] = false
            ignoreNames["Advanced Sprinkler"] = false
            ignoreNames["Godly Sprinkler"] = false
            ignoreNames["Lightning Rod"] = false
            ignoreNames["Master Sprinkler"] = false
            ignoreNames["Cleaning Spray"] = false
            ignoreNames["Favorite Tool"] = false
            ignoreNames["Harvest Tool"] = false
            ignoreNames["Friendship Pot"] = false
        else
            ignoreNames["Watering Can"] = true
            ignoreNames["Trowel"] = true
            ignoreNames["Recall Wrench"] = false
            ignoreNames["Basic Sprinkler"] = true
            ignoreNames["Advanced Sprinkler"] = true
            ignoreNames["Godly Sprinkler"] = true
            ignoreNames["Lightning Rod"] = true
            ignoreNames["Master Sprinkler"] = true
            ignoreNames["Cleaning Spray"] = false
            ignoreNames["Favorite Tool"] = false
            ignoreNames["Harvest Tool"] = false
            ignoreNames["Friendship Pot"] = true
        end
        task.wait(1)
    end
end)



