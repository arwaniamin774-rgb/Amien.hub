--// Amien.Hub
--// UI Only - No Game Features

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local old = PlayerGui:FindFirstChild("Amien.Hub")
if old then old:Destroy() end

local GOLD = Color3.fromRGB(235, 180, 55)
local GOLD2 = Color3.fromRGB(255, 210, 90)
local DARK = Color3.fromRGB(10, 10, 10)
local PANEL = Color3.fromRGB(18, 18, 18)
local PANEL2 = Color3.fromRGB(25, 25, 25)
local WHITE = Color3.fromRGB(235, 235, 235)
local GREY = Color3.fromRGB(150, 150, 150)

local Gui = Instance.new("ScreenGui")
Gui.Name = "Amien.Hub"
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 720, 0, 460)
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = DARK
Main.BorderSizePixel = 0
Main.Parent = Gui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = GOLD
MainStroke.Thickness = 2
MainStroke.Transparency = 0.15
MainStroke.Parent = Main

local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 85)
Header.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
Header.BorderSizePixel = 0
Header.Parent = Main

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 14)
HeaderCorner.Parent = Header

local Crown = Instance.new("TextLabel")
Crown.Size = UDim2.new(0, 65, 0, 60)
Crown.Position = UDim2.fromOffset(18, 12)
Crown.BackgroundTransparency = 1
Crown.Text = "♛"
Crown.TextColor3 = GOLD2
Crown.TextSize = 48
Crown.Font = Enum.Font.GothamBold
Crown.Parent = Header

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 300, 0, 38)
Title.Position = UDim2.fromOffset(80, 10)
Title.BackgroundTransparency = 1
Title.Text = "Amien.Hub"
Title.TextColor3 = GOLD2
Title.TextSize = 30
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(0, 300, 0, 22)
Subtitle.Position = UDim2.fromOffset(82, 47)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "PREMIUM SCRIPT HUB"
Subtitle.TextColor3 = GREY
Subtitle.TextSize = 11
Subtitle.Font = Enum.Font.GothamMedium
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = Header

local Minimize = Instance.new("TextButton")
Minimize.Size = UDim2.fromOffset(38, 32)
Minimize.Position = UDim2.new(1, -92, 0, 25)
Minimize.BackgroundColor3 = PANEL2
Minimize.Text = "—"
Minimize.TextColor3 = GOLD2
Minimize.TextSize = 20
Minimize.Font = Enum.Font.GothamBold
Minimize.BorderSizePixel = 0
Minimize.Parent = Header

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 8)
MinCorner.Parent = Minimize

local Close = Instance.new("TextButton")
Close.Size = UDim2.fromOffset(38, 32)
Close.Position = UDim2.new(1, -47, 0, 25)
Close.BackgroundColor3 = PANEL2
Close.Text = "×"
Close.TextColor3 = GOLD2
Close.TextSize = 24
Close.Font = Enum.Font.GothamBold
Close.BorderSizePixel = 0
Close.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = Close

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 175, 1, -100)
Sidebar.Position = UDim2.fromOffset(12, 94)
Sidebar.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = Main

local SideCorner = Instance.new("UICorner")
SideCorner.CornerRadius = UDim.new(0, 10)
SideCorner.Parent = Sidebar

local SideLayout = Instance.new("UIListLayout")
SideLayout.Padding = UDim.new(0, 8)
SideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
SideLayout.SortOrder = Enum.SortOrder.LayoutOrder
SideLayout.Parent = Sidebar

local SidePadding = Instance.new("UIPadding")
SidePadding.PaddingTop = UDim.new(0, 12)
SidePadding.Parent = Sidebar

local function CreateTab(name, icon)
    local Button = Instance.new("TextButton")
    Button.Name = name
    Button.Size = UDim2.new(1, -16, 0, 48)
    Button.BackgroundColor3 = PANEL
    Button.BorderSizePixel = 0
    Button.Text = ""
    Button.AutoButtonColor = false
    Button.Parent = Sidebar

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 9)
    Corner.Parent = Button

    local Icon = Instance.new("TextLabel")
    Icon.Size = UDim2.fromOffset(35, 48)
    Icon.Position = UDim2.fromOffset(8, 0)
    Icon.BackgroundTransparency = 1
    Icon.Text = icon
    Icon.TextColor3 = WHITE
    Icon.TextSize = 20
    Icon.Font = Enum.Font.Gotham
    Icon.Parent = Button

    local Text = Instance.new("TextLabel")
    Text.Size = UDim2.new(1, -50, 1, 0)
    Text.Position = UDim2.fromOffset(48, 0)
    Text.BackgroundTransparency = 1
    Text.Text = name
    Text.TextColor3 = WHITE
    Text.TextSize = 15
    Text.Font = Enum.Font.GothamMedium
    Text.TextXAlignment = Enum.TextXAlignment.Left
    Text.Parent = Button

    Button.MouseEnter:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(45, 35, 15)
        Text.TextColor3 = GOLD2
        Icon.TextColor3 = GOLD2
    end)

    Button.MouseLeave:Connect(function()
        Button.BackgroundColor3 = PANEL
        Text.TextColor3 = WHITE
        Icon.TextColor3 = WHITE
    end)
end

CreateTab("Home", "⌂")
CreateTab("Main", "⚙")
CreateTab("Player", "♙")
CreateTab("Visual", "◉")
CreateTab("World", "◎")
CreateTab("Teleport", "⌖")
CreateTab("Settings", "⚙")

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, -205, 1, -100)
Content.Position = UDim2.fromOffset(195, 94)
Content.BackgroundTransparency = 1
Content.Parent = Main

local Welcome = Instance.new("TextLabel")
Welcome.Size = UDim2.new(1, 0, 0, 40)
Welcome.BackgroundTransparency = 1
Welcome.Text = "Welcome to"
Welcome.TextColor3 = WHITE
Welcome.TextSize = 25
Welcome.Font = Enum.Font.GothamBold
Welcome.TextXAlignment = Enum.TextXAlignment.Left
Welcome.Parent = Content

local HubName = Instance.new("TextLabel")
HubName.Size = UDim2.new(1, 0, 0, 50)
HubName.Position = UDim2.fromOffset(0, 34)
HubName.BackgroundTransparency = 1
HubName.Text = "Amien.Hub"
HubName.TextColor3 = GOLD2
HubName.TextSize = 38
HubName.Font = Enum.Font.GothamBlack
HubName.TextXAlignment = Enum.TextXAlignment.Left
HubName.Parent = Content

local Line = Instance.new("Frame")
Line.Size = UDim2.fromOffset(55, 3)
Line.Position = UDim2.fromOffset(0, 90)
Line.BackgroundColor3 = GOLD
Line.BorderSizePixel = 0
Line.Parent = Content

local Info = Instance.new("Frame")
Info.Size = UDim2.new(1, 0, 0, 125)
Info.Position = UDim2.fromOffset(0, 112)
Info.BackgroundColor3 = PANEL
Info.BorderSizePixel = 0
Info.Parent = Content

local InfoCorner = Instance.new("UICorner")
InfoCorner.CornerRadius = UDim.new(0, 10)
InfoCorner.Parent = Info

local InfoStroke = Instance.new("UIStroke")
InfoStroke.Color = Color3.fromRGB(75, 60, 30)
InfoStroke.Thickness = 1
InfoStroke.Parent = Info

local InfoTitle = Instance.new("TextLabel")
InfoTitle.Size = UDim2.new(1, -25, 0, 35)
InfoTitle.Position = UDim2.fromOffset(15, 10)
InfoTitle.BackgroundTransparency = 1
InfoTitle.Text = "◆  Information"
InfoTitle.TextColor3 = GOLD2
InfoTitle.TextSize = 18
InfoTitle.Font = Enum.Font.GothamBold
InfoTitle.TextXAlignment = Enum.TextXAlignment.Left
InfoTitle.Parent = Info

local InfoText = Instance.new("TextLabel")
InfoText.Size = UDim2.new(1, -30, 0, 65)
InfoText.Position = UDim2.fromOffset(15, 48)
InfoText.BackgroundTransparency = 1
InfoText.Text = "Amien.Hub\nClean Interface\nSmooth Performance\nEasy To Use"
InfoText.TextColor3 = GREY
InfoText.TextSize = 14
InfoText.Font = Enum.Font.GothamMedium
InfoText.TextXAlignment = Enum.TextXAlignment.Left
InfoText.TextYAlignment = Enum.TextYAlignment.Top
InfoText.Parent = Info

local Status = Instance.new("Frame")
Status.Size = UDim2.new(1, 0, 0, 125)
Status.Position = UDim2.fromOffset(0, 250)
Status.BackgroundColor3 = PANEL
Status.BorderSizePixel = 0
Status.Parent = Content

local StatusCorner = Instance.new("UICorner")
StatusCorner.CornerRadius = UDim.new(0, 10)
StatusCorner.Parent = Status

local StatusStroke = Instance.new("UIStroke")
StatusStroke.Color = Color3.fromRGB(75, 60, 30)
StatusStroke.Thickness = 1
StatusStroke.Parent = Status

local StatusTitle = Instance.new("TextLabel")
StatusTitle.Size = UDim2.new(1, -25, 0, 35)
StatusTitle.Position = UDim2.fromOffset(15, 10)
StatusTitle.BackgroundTransparency = 1
StatusTitle.Text = "▮▮▮  Status"
StatusTitle.TextColor3 = GOLD2
StatusTitle.TextSize = 18
StatusTitle.Font = Enum.Font.GothamBold
StatusTitle.TextXAlignment = Enum.TextXAlignment.Left
StatusTitle.Parent = Status

local StatusText = Instance.new("TextLabel")
StatusText.Size = UDim2.new(1, -30, 0, 70)
StatusText.Position = UDim2.fromOffset(15, 48)
StatusText.BackgroundTransparency = 1
StatusText.Text = "Hub       :  Amien.Hub\nVersion :  1.0\nStatus    :  Ready"
StatusText.TextColor3 = WHITE
StatusText.TextSize = 14
StatusText.Font = Enum.Font.GothamMedium
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.TextYAlignment = Enum.TextYAlignment.Top
StatusText.Parent = Status

local dragging = false
local dragStart
local startPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPos = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then

        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

local minimized = false

Minimize.MouseButton1Click:Connect(function()
    minimized = not minimized

    for _, child in ipairs(Main:GetChildren()) do
        if child ~= Header then
            child.Visible = not minimized
        end
    end

    if minimized then
        Main.Size = UDim2.new(0, 720, 0, 85)
    else
        Main.Size = UDim2.new(0, 720, 0, 460)
    end
end)

Close.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)
