-- Suck my balls

-- Local Library
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- Local Library

-- Main window
    local Main = Library.CreateLib("Tatakai Noob (Press Z for toggle UI)  ", "DarkTheme")
-- Main window

-- Tabs
    local Tab = Main:NewTab("Remove Quest")
    local Tab5 = Main:NewTab("Auto Farm")
    local Tab4 = Main:NewTab("Autodrink")
    local Tab3 = Main:NewTab("Auto buy items")
    local Tab2 = Main:NewTab("Settings")
-- Tabs

-- Remove Quest
    local Section = Tab:NewSection("Remove quest")

    Section:NewButton("remove quest Poster", "info", function()
    local ok = game.Players.LocalPlayer.Character:FindFirstChild("Quest")
        if ok and ok.PlayerQuest.Value == "Poster" then
            ok:Destroy()
        end
    end)

    Section:NewButton("remove quest Cat", "info", function()
    local ok = game.Players.LocalPlayer.Character:FindFirstChild("Quest")
        if ok and ok.PlayerQuest.Value == "Cat" then
            ok:Destroy()
        end
    end)

    Section:NewButton("remove quest Delivery", "info", function()
        local ok = game.Players.LocalPlayer.Character:FindFirstChild("Quest")
            if ok and ok.PlayerQuest.Value == "Delivery" then
                ok:Destroy()
            end
        end)
-- Remove Quest

-- Auto Buy
    local Section4 = Tab3:NewSection("AutoBuy (Go in the shop)")
    Section4:NewToggle("Chocolate Shake", "info", function(r)
        getgenv().autoclick1 = r
        while true do
            if not getgenv().autoclick1 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items["Chocolate Shake"]:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

    Section4:NewToggle("Mango Shake", "info", function(r)
        getgenv().autoclick2 = r
        while true do
            if not getgenv().autoclick2 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items["Mango Shake"]:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

    Section4:NewToggle("Chicken", "info", function(r)
        getgenv().autoclick3 = r
        while true do
            if not getgenv().autoclick3 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items.Chicken:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

    Section4:NewToggle("StrawBerry Shake", "info", function(r)
        getgenv().autoclick4 = r
        while true do
            if not getgenv().autoclick4 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items["Strawberry Shake"]:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

    Section4:NewToggle("Ramen", "info", function(r)
        getgenv().autoclick5 = r
        while true do
            if not getgenv().autoclick5 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items.Ramen:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    
    Section4:NewToggle("Burguer", "info", function(r)
        getgenv().autoclick6 = r
        while true do
            if not getgenv().autoclick6 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items.Burger:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

    Section4:NewToggle("Gloves", "info", function(r)
        getgenv().autoclick7 = r
        while true do
            if not getgenv().autoclick7 then return end
            wait()
                for i,v in pairs(game:GetService("Workspace").Items.Gloves:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)

-- Auto Buy

-- Auto drink

    local Section3 = Tab4:NewSection("Autodrink")

    Section3:NewToggle("Chocolate Shake", "info", function(s)
        getgenv().autodrink1 = s
            while true do
                if not getgenv().autodrink1 then return end
                wait()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Chocolate Shake" then
                    if not game.Players.LocalPlayer:FindFirstChild("XPBoost") and not game.Players.LocalPlayer.Character:FindFirstChild("Chocolate Shake") then
                        v.Parent = game.Players.LocalPlayer.Character
                        game.Players.LocalPlayer.Character:FindFirstChild("Chocolate Shake"):Activate()
                    end
                end
            end
         end
    end)

    Section3:NewToggle("Mango Shake", "info", function(s)
        getgenv().autodrink3 = s
            while true do
                if not getgenv().autodrink3 then return end
                wait()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Mango Shake" then
                    if not game.Players.LocalPlayer:FindFirstChild("EnergyBoost") and not game.Players.LocalPlayer.Character:FindFirstChild("Mango Shake") then
                        v.Parent = game.Players.LocalPlayer.Character
                        game.Players.LocalPlayer.Character:FindFirstChild("Mango Shake"):Activate()
                    end
                end
            end
         end
    end)

    Section3:NewToggle("Chicken", "info", function(s)
        getgenv().autodrink2 = s
            while true do
                if not getgenv().autodrink2 then return end
                wait()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Chicken" then
                    if not game.Players.LocalPlayer:FindFirstChild("XPBoost") and not game.Players.LocalPlayer.Character:FindFirstChild("Chicken") then
                        v.Parent = game.Players.LocalPlayer.Character
                        game.Players.LocalPlayer.Character:FindFirstChild("Chicken"):Activate()
                    end
                end
            end
         end
    end)
-- Auto drink

-- Settings
    local Section2 = Tab2:NewSection("Keybind Toggle UI")
    Section2:NewKeybind("Choose your keybind", "Info", Enum.KeyCode.Z, function()
        Library:ToggleUI()
    end)
-- Settings