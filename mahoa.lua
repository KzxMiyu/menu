--[[
    ╔══════════════════════════════════════╗
    ║     FRUITS MENU SCRIPT v2.0          ║
    ║     Chỉ dùng cho mục đích học tập   ║
    ╚══════════════════════════════════════╝
]]

-- ===================== SERVICES =====================
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- ===================== BIẾN TRẠNG THÁI =====================
local Toggles = {
    AutoFarm = false,
    AutoQuest = false,
    AutoFruitCollect = false,
    AutoAttack = false,
    FastAttack = false,
    GodMode = false,
    ESP = false,
    SpeedHack = false,
    FlyMode = false,
    TeleportFruit = false,
}

local Settings = {
    FarmRange = 50,
    WalkSpeed = 16,
    JumpPower = 50,
    FlySpeed = 100,
    AttackDelay = 0.1,
}

-- ===================== TẠO GIAO DIỆN CHÍNH =====================
local function CreateMainGUI()
    -- Xoá GUI cũ nếu có
    if PlayerGui:FindFirstChild("FruitsMenuGUI") then
        PlayerGui:FindFirstChild("FruitsMenuGUI"):Destroy()
    end

    -- ScreenGui chính
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "FruitsMenuGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = PlayerGui

    -- =================== NÚT MỞ MENU ===================
    local OpenButton = Instance.new("TextButton")
    OpenButton.Name = "OpenButton"
    OpenButton.Size = UDim2.new(0, 50, 0, 50)
    OpenButton.Position = UDim2.new(0, 10, 0.5, -25)
    OpenButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    OpenButton.Text = "🍎"
    OpenButton.TextSize = 24
    OpenButton.Font = Enum.Font.GothamBold
    OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    OpenButton.Parent = ScreenGui

    local OpenCorner = Instance.new("UICorner")
    OpenCorner.CornerRadius = UDim.new(1, 0)
    OpenCorner.Parent = OpenButton

    -- =================== FRAME CHÍNH ===================
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 550, 0, 380)
    MainFrame.Position = UDim2.new(0.5, -275, 0.5, -190)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    MainFrame.BorderSizePixel = 0
    MainFrame.Visible = false
    MainFrame.Parent = ScreenGui

    local MainCorner = Instance.new("UICorner")
    MainCorner.CornerRadius = UDim.new(0, 12)
    MainCorner.Parent = MainFrame

    local MainStroke = Instance.new("UIStroke")
    MainStroke.Color = Color3.fromRGB(88, 101, 242)
    MainStroke.Thickness = 2
    MainStroke.Parent = MainFrame

    -- =================== THANH TIÊU ĐỀ ===================
    local TitleBar = Instance.new("Frame")
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 45)
    TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame

    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 12)
    TitleCorner.Parent = TitleBar

    -- Bo góc dưới của title bar
    local TitleFix = Instance.new("Frame")
    TitleFix.Size = UDim2.new(1, 0, 0, 15)
    TitleFix.Position = UDim2.new(0, 0, 1, -15)
    TitleFix.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    TitleFix.BorderSizePixel = 0
    TitleFix.Parent = TitleBar

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(0.8, 0, 1, 0)
    TitleLabel.Position = UDim2.new(0, 15, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = "🍎 FRUITS MENU v2.0"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 18
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = TitleBar

    -- Nút đóng
    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 35, 0, 35)
    CloseButton.Position = UDim2.new(1, -40, 0, 5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    CloseButton.Text = "✕"
    CloseButton.TextSize = 16
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Parent = TitleBar

    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(0, 8)
    CloseCorner.Parent = CloseButton

    -- =================== SIDEBAR (TAB BUTTONS) ===================
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Size = UDim2.new(0, 130, 1, -50)
    Sidebar.Position = UDim2.new(0, 5, 0, 48)
    Sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
    Sidebar.BorderSizePixel = 0
    Sidebar.Parent = MainFrame

    local SideCorner = Instance.new("UICorner")
    SideCorner.CornerRadius = UDim.new(0, 10)
    SideCorner.Parent = Sidebar

    local SideLayout = Instance.new("UIListLayout")
    SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SideLayout.Padding = UDim.new(0, 5)
    SideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    SideLayout.Parent = Sidebar

    local SidePadding = Instance.new("UIPadding")
    SidePadding.PaddingTop = UDim.new(0, 8)
    SidePadding.Parent = Sidebar

    -- =================== CONTENT AREA ===================
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "ContentFrame"
    ContentFrame.Size = UDim2.new(1, -145, 1, -55)
    ContentFrame.Position = UDim2.new(0, 140, 0, 50)
    ContentFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
    ContentFrame.BorderSizePixel = 0
    ContentFrame.Parent = MainFrame

    local ContentCorner = Instance.new("UICorner")
    ContentCorner.CornerRadius = UDim.new(0, 10)
    ContentCorner.Parent = ContentFrame

    return ScreenGui, MainFrame, OpenButton, CloseButton, Sidebar, ContentFrame
end

-- ===================== TẠO TAB BUTTON =====================
local function CreateTabButton(parent, text, icon, order)
    local Button = Instance.new("TextButton")
    Button.Name = text .. "Tab"
    Button.Size = UDim2.new(0.9, 0, 0, 35)
    Button.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
    Button.Text = icon .. " " .. text
    Button.TextSize = 13
    Button.TextColor3 = Color3.fromRGB(200, 200, 200)
    Button.Font = Enum.Font.GothamSemibold
    Button.LayoutOrder = order
    Button.Parent = parent

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Button

    return Button
end

-- ===================== TẠO TOGGLE SWITCH =====================
local function CreateToggle(parent, text, toggleKey, order)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Name = text .. "Toggle"
    ToggleFrame.Size = UDim2.new(0.95, 0, 0, 38)
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 55)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.LayoutOrder = order
    ToggleFrame.Parent = parent

    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(0, 8)
    ToggleCorner.Parent = ToggleFrame

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.65, 0, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(220, 220, 220)
    Label.TextSize = 13
    Label.Font = Enum.Font.GothamSemibold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = ToggleFrame

    -- Switch background
    local SwitchBG = Instance.new("Frame")
    SwitchBG.Size = UDim2.new(0, 44, 0, 22)
    SwitchBG.Position = UDim2.new(1, -56, 0.5, -11)
    SwitchBG.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
    SwitchBG.BorderSizePixel = 0
    SwitchBG.Parent = ToggleFrame

    local SwitchCornerBG = Instance.new("UICorner")
    SwitchCornerBG.CornerRadius = UDim.new(1, 0)
    SwitchCornerBG.Parent = SwitchBG

    -- Switch circle
    local SwitchCircle = Instance.new("Frame")
    SwitchCircle.Size = UDim2.new(0, 18, 0, 18)
    SwitchCircle.Position = UDim2.new(0, 2, 0.5, -9)
    SwitchCircle.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
    SwitchCircle.BorderSizePixel = 0
    SwitchCircle.Parent = SwitchBG

    local CircleCorner = Instance.new("UICorner")
    CircleCorner.CornerRadius = UDim.new(1, 0)
    CircleCorner.Parent = SwitchCircle

    -- Switch button (invisible, for clicking)
    local SwitchButton = Instance.new("TextButton")
    SwitchButton.Size = UDim2.new(1, 0, 1, 0)
    SwitchButton.BackgroundTransparency = 1
    SwitchButton.Text = ""
    SwitchButton.Parent = SwitchBG

    -- Toggle logic
    local isOn = Toggles[toggleKey] or false

    local function UpdateVisual()
        if isOn then
            TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {
                Position = UDim2.new(1, -20, 0.5, -9)
            }):Play()
            TweenService:Create(SwitchBG, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(88, 101, 242)
            }):Play()
            TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        else
            TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {
                Position = UDim2.new(0, 2, 0.5, -9)
            }):Play()
            TweenService:Create(SwitchBG, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(60, 60, 80)
            }):Play()
            TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(180, 180, 180)
            }):Play()
        end
    end

    SwitchButton.MouseButton1Click:Connect(function()
        isOn = not isOn
        Toggles[toggleKey] = isOn
        UpdateVisual()
    end)

    UpdateVisual()
    return ToggleFrame
end

-- ===================== TẠO SLIDER =====================
local function CreateSlider(parent, text, min, max, default, settingKey, order)
    local SliderFrame = Instance.new("Frame")
    SliderFrame.Name = text .. "Slider"
    SliderFrame.Size = UDim2.new(0.95, 0, 0, 55)
    SliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 55)
    SliderFrame.BorderSizePixel = 0
    SliderFrame.LayoutOrder = order
    SliderFrame.Parent = parent

    local SliderCorner = Instance.new("UICorner")
    SliderCorner.CornerRadius = UDim.new(0, 8)
    SliderCorner.Parent = SliderFrame

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.7, 0, 0, 20)
    Label.Position = UDim2.new(0, 12, 0, 5)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(220, 220, 220)
    Label.TextSize = 13
    Label.Font = Enum.Font.GothamSemibold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = SliderFrame

    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.Size = UDim2.new(0.25, 0, 0, 20)
    ValueLabel.Position = UDim2.new(0.75, -12, 0, 5)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Text = tostring(default)
    ValueLabel.TextColor3 = Color3.fromRGB(88, 101, 242)
    ValueLabel.TextSize = 13
    ValueLabel.Font = Enum.Font.GothamBold
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
    ValueLabel.Parent = SliderFrame

    -- Slider track
    local Track = Instance.new("Frame")
    Track.Size = UDim2.new(0.9, 0, 0, 6)
    Track.Position = UDim2.new(0.05, 0, 0, 35)
    Track.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    Track.BorderSizePixel = 0
    Track.Parent = SliderFrame

    local TrackCorner = Instance.new("UICorner")
    TrackCorner.CornerRadius = UDim.new(1, 0)
    TrackCorner.Parent = Track

    -- Fill
    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    Fill.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    Fill.BorderSizePixel = 0
    Fill.Parent = Track

    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(1, 0)
    FillCorner.Parent = Fill

    -- Knob
    local Knob = Instance.new("Frame")
    Knob.Size = UDim2.new(0, 16, 0, 16)
    Knob.Position = UDim2.new((default - min) / (max - min), -8, 0.5, -8)
    Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Knob.BorderSizePixel = 0
    Knob.ZIndex = 2
    Knob.Parent = Track

    local KnobCorner = Instance.new("UICorner")
    KnobCorner.CornerRadius = UDim.new(1, 0)
    KnobCorner.Parent = Knob

    -- Slider interaction
    local SliderButton = Instance.new("TextButton")
    SliderButton.Size = UDim2.new(1, 0, 0, 20)
    SliderButton.Position = UDim2.new(0, 0, 0, -7)
    SliderButton.BackgroundTransparency = 1
    SliderButton.Text = ""
    SliderButton.ZIndex = 3
    SliderButton.Parent = Track

    local dragging = false

    SliderButton.MouseButton1Down:Connect(function()
        dragging = true
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local trackAbsPos = Track.AbsolutePosition.X
            local trackAbsSize = Track.AbsoluteSize.X
            local mouseX = input.Position.X
            local relative = math.clamp((mouseX - trackAbsPos) / trackAbsSize, 0, 1)
            local value = math.floor(min + (max - min) * relative)

            Fill.Size = UDim2.new(relative, 0, 1, 0)
            Knob.Position = UDim2.new(relative, -8, 0.5, -8)
            ValueLabel.Text = tostring(value)
            Settings[settingKey] = value
        end
    end)

    return SliderFrame
end

-- ===================== TẠO NÚT BẤM =====================
local function CreateButton(parent, text, icon, order, callback)
    local Button = Instance.new("TextButton")
    Button.Name = text .. "Btn"
    Button.Size = UDim2.new(0.95, 0, 0, 35)
    Button.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    Button.Text = icon .. "  " .. text
    Button.TextSize = 13
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.GothamBold
    Button.LayoutOrder = order
    Button.Parent = parent

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Button

    Button.MouseButton1Click:Connect(function()
        -- Hiệu ứng nhấn
        TweenService:Create(Button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(120, 130, 255)
        }):Play()
        task.wait(0.1)
        TweenService:Create(Button, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(88, 101, 242)
        }):Play()

        if callback then
            callback()
        end
    end)

    return Button
end

-- ===================== TẠO CONTENT PAGES =====================
local function CreatePage(contentFrame, name)
    local Page = Instance.new("ScrollingFrame")
    Page.Name = name .. "Page"
    Page.Size = UDim2.new(1, -10, 1, -10)
    Page.Position = UDim2.new(0, 5, 0, 5)
    Page.BackgroundTransparency = 1
    Page.BorderSizePixel = 0
    Page.ScrollBarThickness = 4
    Page.ScrollBarImageColor3 = Color3.fromRGB(88, 101, 242)
    Page.Visible = false
    Page.CanvasSize = UDim2.new(0, 0, 0, 0)
    Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Page.Parent = contentFrame

    local Layout = Instance.new("UIListLayout")
    Layout.SortOrder = Enum.SortOrder.LayoutOrder
    Layout.Padding = UDim.new(0, 5)
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Layout.Parent = Page

    local Padding = Instance.new("UIPadding")
    Padding.PaddingTop = UDim.new(0, 5)
    Padding.PaddingBottom = UDim.new(0, 5)
    Padding.Parent = Page

    return Page
end

-- ===================== CHỨC NĂNG GAME =====================

-- Auto Farm
local function StartAutoFarm()
    spawn(function()
        while Toggles.AutoFarm do
            pcall(function()
                local character = Player.Character
                if not character then return end
                local humanoid = character:FindFirstChild("Humanoid")
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if not humanoid or not rootPart then return end

                -- Tìm mob gần nhất
                local nearestMob = nil
                local nearestDist = Settings.FarmRange

                for _, mob in pairs(Workspace:GetChildren()) do
                    if mob:FindFirstChild("Humanoid") 
                       and mob:FindFirstChild("HumanoidRootPart")
                       and mob.Humanoid.Health > 0
                       and mob ~= character then
                        local dist = (mob.HumanoidRootPart.Position - rootPart.Position).Magnitude
                        if dist < nearestDist then
                            nearestDist = dist
                            nearestMob = mob
                        end
                    end
                end

                if nearestMob then
                    -- Di chuyển đến mob
                    rootPart.CFrame = nearestMob.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)

                    -- Tự động tấn công (gửi event nếu có)
                    if Toggles.AutoAttack then
                        -- Thử click chuột ảo hoặc gọi remote
                        pcall(function()
                            -- Tuỳ game, thay đổi remote name
                            local remotes = ReplicatedStorage:GetDescendants()
                            for _, remote in pairs(remotes) do
                                if remote:IsA("RemoteEvent") and 
                                   (remote.Name:lower():find("attack") or 
                                    remote.Name:lower():find("combat") or
                                    remote.Name:lower():find("damage")) then
                                    remote:FireServer(nearestMob)
                                end
                            end
                        end)
                    end
                end
            end)
            task.wait(Settings.AttackDelay or 0.1)
        end
    end)
end

-- Auto Collect Fruit
local function StartAutoFruitCollect()
    spawn(function()
        while Toggles.AutoFruitCollect do
            pcall(function()
                local character = Player.Character
                if not character or not character:FindFirstChild("HumanoidRootPart") then return end

                -- Tìm fruit trong workspace
                for _, obj in pairs(Workspace:GetDescendants()) do
                    if not Toggles.AutoFruitCollect then break end

                    if (obj.Name:lower():find("fruit") or 
                        obj.Name:lower():find("devil") or
                        obj.Name:lower():find("blox")) and
                       obj:IsA("BasePart") or 
                       (obj:IsA("Model") and obj:FindFirstChild("Handle")) then

                        local targetPart = obj:IsA("BasePart") and obj or obj:FindFirstChild("Handle")
                        if targetPart then
                            character.HumanoidRootPart.CFrame = targetPart.CFrame
                            task.wait(0.5)

                            -- Thử touch/pickup
                            pcall(function()
                                firetouchinterest(character.HumanoidRootPart, targetPart, 0)
                                task.wait(0.1)
                                firetouchinterest(character.HumanoidRootPart, targetPart, 1)
                            end)
                        end
                    end
                end
            end)
            task.wait(1)
        end
    end)
end

-- ESP (Hiện tên người chơi / mob)
local function ToggleESP()
    if Toggles.ESP then
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= Player and plr.Character and plr.Character:FindFirstChild("Head") then
                pcall(function()
                    -- Xoá ESP cũ
                    local head = plr.Character.Head
                    if head:FindFirstChild("ESPGui") then
                        head:FindFirstChild("ESPGui"):Destroy()
                    end

                    local Billboard = Instance.new("BillboardGui")
                    Billboard.Name = "ESPGui"
                    Billboard.Size = UDim2.new(0, 200, 0, 50)
                    Billboard.AlwaysOnTop = true
                    Billboard.StudsOffset = Vector3.new(0, 3, 0)
                    Billboard.Parent = head

                    local NameLabel = Instance.new("TextLabel")
                    NameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    NameLabel.BackgroundTransparency = 1
                    NameLabel.Text = plr.Name
                    NameLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
                    NameLabel.TextSize = 14
                    NameLabel.Font = Enum.Font.GothamBold
                    NameLabel.TextStrokeTransparency = 0.5
                    NameLabel.Parent = Billboard

                    local HealthLabel = Instance.new("TextLabel")
                    HealthLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    HealthLabel.Position = UDim2.new(0, 0, 0.5, 0)
                    HealthLabel.BackgroundTransparency = 1
                    HealthLabel.TextColor3 = Color3.fromRGB(85, 255, 85)
                    HealthLabel.TextSize = 12
                    HealthLabel.Font = Enum.Font.GothamSemibold
                    HealthLabel.TextStrokeTransparency = 0.5
                    HealthLabel.Parent = Billboard

                    -- Cập nhật HP
                    spawn(function()
                        while Billboard and Billboard.Parent and Toggles.ESP do
                            pcall(function()
                                local hum = plr.Character and plr.Character:FindFirstChild("Humanoid")
                                if hum then
                                    HealthLabel.Text = string.format("HP: %d/%d", hum.Health, hum.MaxHealth)
                                    local dist = (plr.Character.HumanoidRootPart.Position - 
                                                  Player.Character.HumanoidRootPart.Position).Magnitude
                                    NameLabel.Text = string.format("%s [%dm]", plr.Name, math.floor(dist))
                                end
                            end)
                            task.wait(0.5)
                        end
                    end)
                end)
            end
        end
    else
        -- Xoá tất cả ESP
        for _, plr in pairs(Players:GetPlayers()) do
            pcall(function()
                if plr.Character and plr.Character:FindFirstChild("Head") then
                    local esp = plr.Character.Head:FindFirstChild("ESPGui")
                    if esp then esp:Destroy() end
                end
            end)
        end
    end
end

-- Fruit ESP
local function ToggleFruitESP()
    spawn(function()
        while Toggles.TeleportFruit do
            pcall(function()
                for _, obj in pairs(Workspace:GetDescendants()) do
                    if (obj.Name:lower():find("fruit") or obj.Name:lower():find("devil")) then
                        if obj:IsA("BasePart") or obj:IsA("Model") then
                            local part = obj:IsA("BasePart") and obj or obj:FindFirstChildWhichIsA("BasePart")
                            if part and not part:FindFirstChild("FruitESP") then
                                local Billboard = Instance.new("BillboardGui")
                                Billboard.Name = "FruitESP"
                                Billboard.Size = UDim2.new(0, 150, 0, 40)
                                Billboard.AlwaysOnTop = true
                                Billboard.StudsOffset = Vector3.new(0, 2, 0)
                                Billboard.Parent = part

                                local Label = Instance.new("TextLabel")
                                Label.Size = UDim2.new(1, 0, 1, 0)
                                Label.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
                                Label.BackgroundTransparency = 0.3
                                Label.Text = "🍎 " .. obj.Name
                                Label.TextColor3 = Color3.fromRGB(255, 200, 50)
                                Label.TextSize = 14
                                Label.Font = Enum.Font.GothamBold
                                Label.Parent = Billboard

                                local Corner = Instance.new("UICorner")
                                Corner.CornerRadius = UDim.new(0, 6)
                                Corner.Parent = Label
                            end
                        end
                    end
                end
            end)
            task.wait(2)
        end

        -- Cleanup
        for _, obj in pairs(Workspace:GetDescendants()) do
            pcall(function()
                if obj.Name == "FruitESP" then obj:Destroy() end
            end)
        end
    end)
end

-- Speed Hack
local function UpdateSpeed()
    spawn(function()
        while Toggles.SpeedHack do
            pcall(function()
                if Player.Character and Player.Character:FindFirstChild("Humanoid") then
                    Player.Character.Humanoid.WalkSpeed = Settings.WalkSpeed
                    Player.Character.Humanoid.JumpPower = Settings.JumpPower
                end
            end)
            task.wait(0.1)
        end
        -- Reset
        pcall(function()
            if Player.Character and Player.Character:FindFirstChild("Humanoid") then
                Player.Character.Humanoid.WalkSpeed = 16
                Player.Character.Humanoid.JumpPower = 50
            end
        end)
    end)
end

-- Fly Mode
local FlyConnection = nil
local BodyGyro = nil
local BodyVelocity = nil

local function ToggleFly()
    if Toggles.FlyMode then
        pcall(function()
            local character = Player.Character
            local rootPart = character.HumanoidRootPart

            BodyGyro = Instance.new("BodyGyro")
            BodyGyro.P = 9e4
            BodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BodyGyro.CFrame = rootPart.CFrame
            BodyGyro.Parent = rootPart

            BodyVelocity = Instance.new("BodyVelocity")
            BodyVelocity.Velocity = Vector3.new(0, 0, 0)
            BodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BodyVelocity.Parent = rootPart

            FlyConnection = RunService.RenderStepped:Connect(function()
                if not Toggles.FlyMode then return end
                pcall(function()
                    local camera = Workspace.CurrentCamera
                    local moveDir = Vector3.new(0, 0, 0)

                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        moveDir = moveDir + camera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        moveDir = moveDir - camera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        moveDir = moveDir - camera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        moveDir = moveDir + camera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        moveDir = moveDir + Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                        moveDir = moveDir - Vector3.new(0, 1, 0)
                    end

                    BodyVelocity.Velocity = moveDir * Settings.FlySpeed
                    BodyGyro.CFrame = camera.CFrame
                end)
            end)
        end)
    else
        pcall(function()
            if FlyConnection then FlyConnection:Disconnect() end
            if BodyGyro then BodyGyro:Destroy() end
            if BodyVelocity then BodyVelocity:Destroy() end
        end)
    end
end

-- ===================== KHỞI TẠO GUI =====================
local ScreenGui, MainFrame, OpenButton, CloseButton, Sidebar, ContentFrame = CreateMainGUI()

-- Tạo các Tab
local tabs = {
    {name = "Auto Farm",  icon = "⚔️", order = 1},
    {name = "Fruits",     icon = "🍎", order = 2},
    {name = "Player",     icon = "🏃", order = 3},
    {name = "Teleport",   icon = "🌀", order = 4},
    {name = "ESP",        icon = "👁️", order = 5},
    {name = "Settings",   icon = "⚙️", order = 6},
}

local tabButtons = {}
local pages = {}

for _, tab in ipairs(tabs) do
    tabButtons[tab.name] = CreateTabButton(Sidebar, tab.name, tab.icon, tab.order)
    pages[tab.name] = CreatePage(ContentFrame, tab.name)
end

-- ===================== TRANG AUTO FARM =====================
CreateToggle(pages["Auto Farm"], "Auto Farm Mob", "AutoFarm", 1)
CreateToggle(pages["Auto Farm"], "Auto Quest", "AutoQuest", 2)
CreateToggle(pages["Auto Farm"], "Auto Attack", "AutoAttack", 3)
CreateToggle(pages["Auto Farm"], "Fast Attack", "FastAttack", 4)
CreateSlider(pages["Auto Farm"], "Farm Range", 10, 200, 50, "FarmRange", 5)
CreateSlider(pages["Auto Farm"], "Attack Delay", 0, 1, 0.1, "AttackDelay", 6)

-- ===================== TRANG FRUITS =====================
CreateToggle(pages["Fruits"], "Auto Collect Fruit", "AutoFruitCollect", 1)
CreateToggle(pages["Fruits"], "Fruit ESP", "TeleportFruit", 2)

CreateButton(pages["Fruits"], "TP đến Fruit gần nhất", "🍎", 3, function()
    pcall(function()
        local character = Player.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end

        local nearest = nil
        local nearestDist = math.huge

        for _, obj in pairs(Workspace:GetDescendants()) do
            if (obj.Name:lower():find("fruit") or obj.Name:lower():find("devil")) then
                local part = obj:IsA("BasePart") and obj or (obj:IsA("Model") and obj:FindFirstChildWhichIsA("BasePart"))
                if part then
                    local dist = (part.Position - character.HumanoidRootPart.Position).Magnitude
                    if dist < nearestDist then
                        nearestDist = dist
                        nearest = part
                    end
                end
            end
        end

        if nearest then
            character.HumanoidRootPart.CFrame = nearest.CFrame * CFrame.new(0, 3, 0)
        end
    end)
end)

CreateButton(pages["Fruits"], "Store All Fruits", "📦", 4, function()
    pcall(function()
        for _, remote in pairs(ReplicatedStorage:GetDescendants()) do
            if remote:IsA("RemoteEvent") and remote.Name:lower():find("store") then
                remote:FireServer()
            end
        end
    end)
end)

-- ===================== TRANG PLAYER =====================
CreateToggle(pages["Player"], "Speed Hack", "SpeedHack", 1)
CreateToggle(pages["Player"], "Fly Mode (Phím F)", "FlyMode", 2)
CreateToggle(pages["Player"], "God Mode", "GodMode", 3)
CreateSlider(pages["Player"], "Walk Speed", 16, 500, 16, "WalkSpeed", 4)
CreateSlider(pages["Player"], "Jump Power", 50, 500, 50, "JumpPower", 5)
CreateSlider(pages["Player"], "Fly Speed", 50, 500, 100, "FlySpeed", 6)

CreateButton(pages["Player"], "Reset Character", "💀", 7, function()
    pcall(function()
        Player.Character:FindFirstChild("Humanoid").Health = 0
    end)
end)

CreateButton(pages["Player"], "Full Health", "❤️", 8, function()
    pcall(function()
        Player.Character:FindFirstChild("Humanoid").Health = 
            Player.Character:FindFirstChild("Humanoid").MaxHealth
    end)
end)

-- ===================== TRANG TELEPORT =====================
local teleportLocations = {
    {name = "Spawn",          pos = Vector3.new(0, 50, 0)},
    {name = "Marine Ford",    pos = Vector3.new(-4607, 21, 4324)},
    {name = "Jungle",         pos = Vector3.new(-1603, 37, 152)},
    {name = "Pirate Village", pos = Vector3.new(-1139, 15, 3826)},
    {name = "Desert",         pos = Vector3.new(938, 68, 4437)},
    {name = "Frozen Village", pos = Vector3.new(1207, 87, -1381)},
    {name = "Sky Island",     pos = Vector3.new(-4869, 733, -2622)},
    {name = "Colosseum",      pos = Vector3.new(-1862, 13, -2948)},
    {name = "Prison",         pos = Vector3.new(4875, 18, 735)},
    {name = "Magma Village",  pos = Vector3.new(-5312, 12, 8517)},
}

for i, loc in ipairs(teleportLocations) do
    CreateButton(pages["Teleport"], "TP → " .. loc.name, "🌀", i, function()
        pcall(function()
            if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(loc.pos)
            end
        end)
    end)
end

-- ===================== TRANG ESP =====================
CreateToggle(pages["ESP"], "Player ESP", "ESP", 1)

CreateButton(pages["ESP"], "Refresh ESP", "🔄", 2, function()
    ToggleESP()
end)

CreateButton(pages["ESP"], "Mob ESP", "👾", 3, function()
    pcall(function()
        for _, mob in pairs(Workspace:GetDescendants()) do
            if mob:IsA("Humanoid") and mob.Parent ~= Player.Character then
                local head = mob.Parent:FindFirstChild("Head")
                if head and not head:FindFirstChild("MobESP") then
                    local Billboard = Instance.new("BillboardGui")
                    Billboard.Name = "MobESP"
                    Billboard.Size = UDim2.new(0, 150, 0, 30)
                    Billboard.AlwaysOnTop = true
                    Billboard.StudsOffset = Vector3.new(0, 3, 0)
                    Billboard.Parent = head

                    local Label = Instance.new("TextLabel")
                    Label.Size = UDim2.new(1, 0, 1, 0)
                    Label.BackgroundTransparency = 1
                    Label.Text = mob.Parent.Name .. " [" .. math.floor(mob.Health) .. "]"
                    Label.TextColor3 = Color3.fromRGB(255, 170, 50)
                    Label.TextSize = 12
                    Label.Font = Enum.Font.GothamBold
                    Label.TextStrokeTransparency = 0.5
                    Label.Parent = Billboard
                end
            end
        end
    end)
end)

-- ===================== TRANG SETTINGS =====================
CreateButton(pages["Settings"], "Destroy Menu", "🗑️", 1, function()
    ScreenGui:Destroy()
end)

CreateButton(pages["Settings"], "Rejoin Server", "🔄", 2, function()
    pcall(function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
    end)
end)

CreateButton(pages["Settings"], "Copy Game ID", "📋", 3, function()
    pcall(function()
        setclipboard(tostring(game.PlaceId))
    end)
end)

-- Thông tin
local InfoLabel = Instance.new("TextLabel")
InfoLabel.Size = UDim2.new(0.95, 0, 0, 80)
InfoLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 55)
InfoLabel.Text = "🍎 Fruits Menu v2.0\n\nPhím tắt:\nF - Bật/tắt Fly\nRight Shift - Ẩn/hiện menu"
InfoLabel.TextColor3 = Color3.fromRGB(180, 180, 200)
InfoLabel.TextSize = 12
InfoLabel.Font = Enum.Font.Gotham
InfoLabel.TextWrapped = true
InfoLabel.LayoutOrder = 4
InfoLabel.Parent = pages["Settings"]

local InfoCorner = Instance.new("UICorner")
InfoCorner.CornerRadius = UDim.new(0, 8)
InfoCorner.Parent = InfoLabel

-- ===================== LOGIC CHUYỂN TAB =====================
local activeTab = nil

local function SwitchTab(tabName)
    -- Ẩn tất cả pages
    for name, page in pairs(pages) do
        page.Visible = false
    end
    -- Đổi màu tất cả tab buttons
    for name, btn in pairs(tabButtons) do
        TweenService:Create(btn, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(40, 40, 60)
        }):Play()
        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    end

    -- Hiện page được chọn
    pages[tabName].Visible = true
    TweenService:Create(tabButtons[tabName], TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    }):Play()
    tabButtons[tabName].TextColor3 = Color3.fromRGB(255, 255, 255)

    activeTab = tabName
end

-- Gán sự kiện click cho tab buttons
for name, btn in pairs(tabButtons) do
    btn.MouseButton1Click:Connect(function()
        SwitchTab(name)
    end)
end

-- Mặc định mở tab đầu tiên
SwitchTab("Auto Farm")

-- ===================== MỞ / ĐÓNG MENU =====================
local menuOpen = false

local function ToggleMenu()
    menuOpen = not menuOpen
    if menuOpen then
        MainFrame.Visible = true
        MainFrame.Size = UDim2.new(0, 0, 0, 0)
        MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back), {
            Size = UDim2.new(0, 550, 0, 380),
            Position = UDim2.new(0.5, -275, 0.5, -190)
        }):Play()
        OpenButton.Text = "✕"
    else
        TweenService:Create(MainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        }):Play()
        task.wait(0.2)
        MainFrame.Visible = false
        OpenButton.Text = "🍎"
    end
end

OpenButton.MouseButton1Click:Connect(ToggleMenu)

CloseButton.MouseButton1Click:Connect(function()
    menuOpen = true
    ToggleMenu()
end)

-- ===================== KÉO THẢ MENU =====================
local dragging = false
local dragStart = nil
local startPos = nil

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- ===================== PHÍM TẮT =====================
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    -- Right Shift: Toggle menu
    if input.KeyCode == Enum.KeyCode.RightShift then
        ToggleMenu()
    end

    -- F: Toggle Fly
    if input.KeyCode == Enum.KeyCode.F then
        Toggles.FlyMode = not Toggles.FlyMode
        ToggleFly()
    end
end)

-- ===================== VÒNG LẶP CHÍNH =====================
-- Theo dõi các toggle và chạy chức năng tương ứng
spawn(function()
    local prevStates = {}
    for k, v in pairs(Toggles) do
        prevStates[k] = v
    end

    while ScreenGui and ScreenGui.Parent do
        for key, value in pairs(Toggles) do
            if value ~= prevStates[key] then
                prevStates[key] = value

                -- Khi toggle thay đổi, thực hiện hành động
                if key == "AutoFarm" and value then
                    StartAutoFarm()
                elseif key == "AutoFruitCollect" and value then
                    StartAutoFruitCollect()
                elseif key == "ESP" then
                    ToggleESP()
                elseif key == "SpeedHack" and value then
                    UpdateSpeed()
                elseif key == "FlyMode" then
                    ToggleFly()
                elseif key == "TeleportFruit" then
                    ToggleFruitESP()
                end
            end
        end
        task.wait(0.2)
    end
end)

-- ===================== THÔNG BÁO =====================
local Notification = Instance.new("TextLabel")
Notification.Size = UDim2.new(0, 300, 0, 40)
Notification.Position = UDim2.new(0.5, -150, 0, -50)
Notification.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
Notification.Text = "🍎 Fruits Menu v2.0 Loaded! | Phím RShift để ẩn/hiện"
Notification.TextColor3 = Color3.fromRGB(255, 255, 255)
Notification.TextSize = 13
Notification.Font = Enum.Font.GothamBold
Notification.Parent = ScreenGui

local NotifCorner = Instance.new("UICorner")
NotifCorner.CornerRadius = UDim.new(0, 10)
NotifCorner.Parent = Notification

-- Animation thông báo
TweenService:Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
    Position = UDim2.new(0.5, -150, 0, 20)
}):Play()

task.wait(3)

TweenService:Create(Notification, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
    Position = UDim2.new(0.5, -150, 0, -50)
}):Play()

task.wait(0.5)
Notification:Destroy()

print("🍎 Fruits Menu v2.0 đã được tải thành công!")
print("📌 Phím RightShift: Ẩn/hiện menu")
print("📌 Phím F: Bật/tắt Fly")
