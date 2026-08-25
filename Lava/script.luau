local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "LavaHubUpdate"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 190)
frame.Position = UDim2.new(0.5, -160, 0.5, -95)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = gui

-- ARC Hub - Update
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 8)
title.BackgroundTransparency = 1
title.Text = "Lava Hub - Update"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.Font = Enum.Font.GothamBold
title.Parent = frame

-- Copy new script/loader
local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, -20, 0, 30)
subtitle.Position = UDim2.new(0, 10, 0, 48)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Copy new script/loader (Lava Hub change to Lavz Hub)"
subtitle.TextColor3 = Color3.fromRGB(220, 220, 220)
subtitle.TextSize = 16
subtitle.Font = Enum.Font.Gotham
subtitle.Parent = frame

-- Description
local description = Instance.new("TextLabel")
description.Size = UDim2.new(1, -20, 0, 30)
description.Position = UDim2.new(0, 10, 0, 78)
description.BackgroundTransparency = 1
description.Text = "Copy the link and paste it into your browser"
description.TextColor3 = Color3.fromRGB(150, 150, 150)
description.TextSize = 13
description.Font = Enum.Font.Gotham
description.Parent = frame

-- COPY LINK button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 240, 0, 45)
button.Position = UDim2.new(0.5, -120, 0, 125)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.Text = "COPY LINK"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 15
button.Font = Enum.Font.GothamBold
button.Parent = frame

button.MouseButton1Click:Connect(function()
    setclipboard("scriptpastebin")

    button.Text = "LINK COPIED!"

    task.wait(1.5)

    button.Text = "COPY LINK"
end)
