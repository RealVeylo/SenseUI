local library = {}

function library:CreateWindow(name)

local theme1 = Color3.fromRGB(45,45,45)  -- Dark grey primary/background
local theme2 = Color3.fromRGB(35,35,35)  -- Darker grey secondary
local theme3 = Color3.fromRGB(0, 255, 255)  -- Cyan accent color
local toolight = false

    for i,v in pairs(game.CoreGui:GetChildren()) do
if v.Name == "Sense Hub" then
        v:Destroy()
    end
end

local Screen = Instance.new("ScreenGui")
local MainMenuButton = Instance.new("ImageButton")
local MainMenuCorner = Instance.new("UICorner")
local Top = Instance.new("ImageLabel")
local TopCorner = Instance.new("UICorner")
local Toggle = Instance.new("ImageButton")
local Main = Instance.new("ImageLabel")
local MainCorner = Instance.new("UICorner")
local Tabs = Instance.new("ImageLabel")
local TabsCorner = Instance.new("UICorner")
local UIGridLayout = Instance.new("UIGridLayout")
local TabContainer = Instance.new("Folder")
local Items = Instance.new("ImageLabel")
local ItemsCorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

Screen.Name = "Sense Hub"
Screen.Parent = game:WaitForChild("CoreGui")
Screen.Enabled = true
Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainMenuButton.Name = "MainMenuButton"
MainMenuButton.Parent = Screen
MainMenuButton.BackgroundColor3 = theme1
MainMenuButton.BackgroundTransparency = 0.1
MainMenuButton.Position = UDim2.new(0.5, -25, 0.5, -25)
MainMenuButton.Size = UDim2.new(0, 50, 0, 50)
MainMenuButton.Image = "rbxassetid://129937299302497"
MainMenuButton.ZIndex = 1000
MainMenuButton.Active = true
MainMenuButton.Draggable = true

MainMenuCorner.CornerRadius = UDim.new(0, 8)
MainMenuCorner.Parent = MainMenuButton

Top.Name = "Top"
Top.Parent = Screen
Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.fromRGB(33, 32, 49)
Top.BackgroundTransparency = 1.000
Top.Active = true
Top.Position = UDim2.new(0.5, 0, 0.240482569, 0)
Top.Size = UDim2.new(0, 558, 0, 25)
Top.Image = "rbxassetid://3570695787"
Top.ImageColor3 = theme1
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(100, 100, 100, 100)
Top.SliceScale = 0.030
Top.Draggable = true
Top.ZIndex = 10

TopCorner.CornerRadius = UDim.new(0, 8)
TopCorner.Parent = Top

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0358817279, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 515, 0, 20)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = name
TextLabel.TextColor3 = theme3
TextLabel.TextSize = 14.000

Toggle.Name = "Toggle"
Toggle.Parent = Top
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.00900000613, 0, 0.142857149, 0)
Toggle.Rotation = 90.000
Toggle.Size = UDim2.new(0, 15, 0, 16)
Toggle.ImageColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

Main.Name = "Main"
Main.Parent = Top
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, 0, 6.75571394, 0)
Main.Size = UDim2.new(0, 558, 0, 298)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = theme2
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.030
Main.ZIndex = 5

MainCorner.CornerRadius = UDim.new(0, 8)
MainCorner.Parent = Main

Tabs.Name = "Tabs"
Tabs.Parent = TabContainer
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.Position = UDim2.new(0.0129999956, 0, 0.0300000086, 0)
Tabs.Size = UDim2.new(0, 119, 0, 282)
Tabs.Image = "rbxassetid://3570695787"
Tabs.ImageColor3 = theme1
Tabs.ScaleType = Enum.ScaleType.Slice
Tabs.SliceCenter = Rect.new(100, 100, 100, 100)
Tabs.SliceScale = 0.020

TabsCorner.CornerRadius = UDim.new(0, 6)
TabsCorner.Parent = Tabs

UIGridLayout.Parent = Tabs
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 119, 0, 26)

TabContainer.Name = "TabContainer"
TabContainer.Parent = Main

Items.Name = "Items"
Items.Parent = Main
Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Items.BackgroundTransparency = 1.000
Items.Position = UDim2.new(0.245519713, 0, 0.030201342, 0)
Items.Size = UDim2.new(0, 414, 0, 282)
Items.Image = "rbxassetid://3570695787"
Items.ImageColor3 = theme1
Items.ScaleType = Enum.ScaleType.Slice
Items.SliceCenter = Rect.new(100, 100, 100, 100)
Items.SliceScale = 0.020

ItemsCorner.CornerRadius = UDim.new(0, 6)
ItemsCorner.Parent = Items

-- Main menu button functionality and UI visibility controls
local opened = true
local uiVisible = false

-- Main Menu Button Click (acts as LeftControl/RightControl for mobile)
MainMenuButton.MouseButton1Click:Connect(function()
    uiVisible = not uiVisible
    Top.Visible = uiVisible
    Main.Visible = uiVisible and opened
    play("rbxassetid://1412830636")
end)

-- Toggle button functionality (minimize/maximize main UI)
Toggle.MouseButton1Click:Connect(function()
    if opened then
        Main.Visible = false
        Toggle.Rotation = 0
        opened = false
    else
        Main.Visible = true
        Toggle.Rotation = 90
        opened = true
    end
end)

-- Initially hide the UI
Top.Visible = false
Main.Visible = false

local InsideLibrary = {}

function InsideLibrary:CreateTab(text)
    local TextButton1 = Instance.new("TextButton")
    local ButtonCorner = Instance.new("UICorner")
    local Frame = Instance.new("ScrollingFrame")
    local FrameCorner = Instance.new("UICorner")
    local UIGridLayout_2 = Instance.new("UIGridLayout")

TextButton1.Name = text.." Button"
TextButton1.Parent = Tabs
TextButton1.BackgroundColor3 = Color3.fromRGB(32,32,32)
TextButton1.BackgroundTransparency = 1.000
TextButton1.Size = UDim2.new(0, 70, 0, 21)
TextButton1.Font = Enum.Font.SourceSansSemibold
TextButton1.Text = text
TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.TextSize = 14.000

ButtonCorner.CornerRadius = UDim.new(0, 4)
ButtonCorner.Parent = TextButton1

Frame.Parent = Items
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0170000009, 0, 0.0359999985, 0)
Frame.Size = UDim2.new(0, 399, 0, 264)
Frame.CanvasSize = UDim2.new(0, 0, 1.1,0)
Frame.ScrollBarImageColor3 = theme2
Frame.ScrollBarThickness = 7

FrameCorner.CornerRadius = UDim.new(0, 6)
FrameCorner.Parent = Frame

UIGridLayout_2.Parent = Frame
UIGridLayout_2.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellSize = UDim2.new(0, 70, 0, 23)
UIGridLayout_2.StartCorner = Enum.StartCorner.TopRight

Frame.ChildAdded:Connect(function()
    if #Frame:GetChildren() > 13 then
Frame.CanvasSize = UDim2.new(0, 0,Frame.CanvasSize.Y.Scale + 0.10,0)
    end
end)

TextButton1.MouseButton1Click:Connect(function()
for i,v in next,Items:GetChildren() do
v.Visible = false
end
for i,t in next, Tabs:GetChildren() do
if t.ClassName ~= "UIGridLayout" and t.ClassName ~= "UICorner" then
t.TextColor3 = Color3.fromRGB(255, 255, 255)
end
TextButton1.TextColor3 = theme3
end
Frame.Visible = true
play("rbxassetid://1412830636")
end)

local InsideTab = {}

function InsideTab:CreateDropdown(text, list, callback)
    local BodyYSize = 0
    local IsDropped = false
    callback = callback or function() end
    list = list or {}
    text = text or "Dropdown"
    local Dropdown = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_Roundify_2px_2 = Instance.new("ImageLabel")
local ButtonCorner = Instance.new("UICorner")
local DropdownContainer = Instance.new("ImageLabel")
local DropdownCorner = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")

Dropdown.Name = "Dropdown"
Dropdown.Parent = Frame
Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdown.BackgroundTransparency = 1.000
Dropdown.Size = UDim2.new(0, 200, 0, 50)
Dropdown.Font = Enum.Font.SourceSansSemibold
Dropdown.Text = text
Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdown.TextSize = 14.000

TextButton.Parent = Dropdown
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, 0, 0, 0)
TextButton.Size = UDim2.new(0, 31, 0, 27)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "+"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_Roundify_2px_2.Name = "TextButton_Roundify_2px"
TextButton_Roundify_2px_2.Parent = TextButton
TextButton_Roundify_2px_2.Active = true
TextButton_Roundify_2px_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_2px_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_2px_2.BackgroundTransparency = 1.000
TextButton_Roundify_2px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton_Roundify_2px_2.Selectable = true
TextButton_Roundify_2px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_2px_2.Image = "rbxassetid://3570695787"
TextButton_Roundify_2px_2.ImageColor3 = theme2
TextButton_Roundify_2px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_2px_2.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_2px_2.SliceScale = 0.020

ButtonCorner.CornerRadius = UDim.new(0, 4)
ButtonCorner.Parent = TextButton_Roundify_2px_2

TextButton.MouseButton1Click:Connect(function()
    play("rbxassetid://178104975")
    if not IsDropped then
        IsDropped = true
        TextButton.TextColor3 = theme3
        DropdownContainer.Visible = true
        else
            IsDropped = false
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownContainer.Visible = false
        end
    end)

for i,v in pairs(list) do
BodyYSize = BodyYSize + 27
local TextButton_2 = Instance.new("TextButton")
local ButtonCorner2 = Instance.new("UICorner")
TextButton_2.Parent = DropdownContainer
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Size = UDim2.new(0, 197, 0, 27)
TextButton_2.Font = Enum.Font.SourceSansSemibold
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Text = v
TextButton_2.TextSize = 14.000
TextButton_2.ZIndex = 4

ButtonCorner2.CornerRadius = UDim.new(0, 3)
ButtonCorner2.Parent = TextButton_2

TextButton_2.MouseButton1Click:Connect(function()
    Dropdown.Text = v
    callback(v)
    IsDropped = false
        DropdownContainer.Visible = false
    end)
end

DropdownContainer.Name = "DropdownContainer"
DropdownContainer.Parent = TextButton
DropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownContainer.BackgroundTransparency = 1.000
DropdownContainer.Position = UDim2.new(1.46359456, 0, 0, 0)
DropdownContainer.Size = UDim2.new(0, 197, 0, BodyYSize)
DropdownContainer.Image = "rbxassetid://3570695787"
DropdownContainer.ImageColor3 = theme2
DropdownContainer.Visible = false
DropdownContainer.ScaleType = Enum.ScaleType.Slice
DropdownContainer.SliceCenter = Rect.new(100, 100, 100, 100)
DropdownContainer.SliceScale = 0.020
DropdownContainer.ZIndex = 3

DropdownCorner.CornerRadius = UDim.new(0, 6)
DropdownCorner.Parent = DropdownContainer

UIListLayout_2.Parent = DropdownContainer
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
end

function InsideTab:CreateSlider(text, minvalue, maxvalue, callback)
    text = text or "Slider"
    minvalue = minvalue or 0
    maxvalue = maxvalue or 100

    callback = callback or function() end

    local mouse = game.Players.LocalPlayer:GetMouse()
    local uis = game:GetService("UserInputService")
    local Value

    local Slider = Instance.new("TextLabel")
    local Frame_3 = Instance.new("ImageLabel")
    local FrameCorner = Instance.new("UICorner")
    local SliderButton = Instance.new("TextButton")
    local TextButton_Roundify_2px = Instance.new("ImageLabel")
    local SliderButtonCorner = Instance.new("UICorner")
    local SliderInner = Instance.new("ImageLabel")
    local SliderInnerCorner = Instance.new("UICorner")
    local TextLabel_2 = Instance.new("TextLabel")

    Slider.Name = "Slider"
    Slider.Parent = Frame
    Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider.BackgroundTransparency = 1.000
    Slider.Size = UDim2.new(0, 200, 0, 50)
    Slider.Font = Enum.Font.SourceSansSemibold
    Slider.Text = text
    Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
    Slider.TextSize = 14.000

    Frame_3.Name = "Frame"
    Frame_3.Parent = Slider
    Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_3.BackgroundTransparency = 1.000
    Frame_3.Position = UDim2.new(1, 0, 0.395000011, 0)
    Frame_3.Size = UDim2.new(0, 148, 0, 8)
    Frame_3.Image = "rbxassetid://3570695787"
    Frame_3.ImageColor3 = theme2
    Frame_3.ScaleType = Enum.ScaleType.Slice
    Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
    Frame_3.SliceScale = 0.020

    FrameCorner.CornerRadius = UDim.new(0, 4)
    FrameCorner.Parent = Frame_3

    SliderButton.Name = "SliderButton"
    SliderButton.Parent = Slider
    SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderButton.BackgroundTransparency = 1.000
    SliderButton.BorderSizePixel = 0
    SliderButton.Position = UDim2.new(1, 0, 0.391304344, 0)
    SliderButton.Size = UDim2.new(0, 148, 0, 8)
    SliderButton.Font = Enum.Font.SourceSans
    SliderButton.Text = ""
    SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    SliderButton.TextSize = 14.000

    TextButton_Roundify_2px.Name = "TextButton_Roundify_2px"
    TextButton_Roundify_2px.Parent = SliderButton
    TextButton_Roundify_2px.Active = true
    TextButton_Roundify_2px.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_Roundify_2px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Roundify_2px.BackgroundTransparency = 1.000
    TextButton_Roundify_2px.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton_Roundify_2px.Selectable = true
    TextButton_Roundify_2px.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_2px.Image = "rbxassetid://3570695787"
    TextButton_Roundify_2px.ImageColor3 = theme2
    TextButton_Roundify_2px.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_2px.SliceCenter = Rect.new(100, 100, 100, 100)
    TextButton_Roundify_2px.SliceScale = 0.020

    SliderButtonCorner.CornerRadius = UDim.new(0, 4)
    SliderButtonCorner.Parent = TextButton_Roundify_2px

    SliderInner.Name = "SliderInner"
    SliderInner.Parent = SliderButton
    SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderInner.BackgroundTransparency = 1.000
    SliderInner.Size = UDim2.new(0, 0, 0, 8)
    SliderInner.Image = "rbxassetid://3570695787"
    SliderInner.ImageColor3 = theme3
    SliderInner.ScaleType = Enum.ScaleType.Slice
    SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
    SliderInner.SliceScale = 0.020

    SliderInnerCorner.CornerRadius = UDim.new(0, 4)
    SliderInnerCorner.Parent = SliderInner

    TextLabel_2.Parent = Slider
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderSizePixel = 2
    TextLabel_2.Position = UDim2.new(3.10714293, 0, 0.4, 0)
    TextLabel_2.Size = UDim2.new(0, 33, 0, 7)
    TextLabel_2.Font = Enum.Font.SourceSansBold
    TextLabel_2.Text = tostring(minvalue)
    TextLabel_2.TextColor3 = theme3
    TextLabel_2.TextSize = 13.000
    TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

SliderButton.MouseButton1Down:Connect(function()
    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or 0
    pcall(function()
        callback(Value)
        TextLabel_2.Text = Value
    end)
    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)
    moveconnection = mouse.Move:Connect(function()
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
        pcall(function()
            callback(Value)
            TextLabel_2.Text = Value
        end)
        SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 148) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
            pcall(function()
                callback(Value)
            end)
            SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 148), 0, 8)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)
end)
end

function InsideTab:Show()
    for i,v in next,Items:GetChildren() do
        v.Visible = false
        end
        Frame.Visible = true
        TextButton1.TextColor3 = theme3
end

function InsideTab:CreateToggle(text,callback)
    text = text or "New Toggle"
    callback = callback or function() end
    local switchactions = {}
    local Toggle_2 = Instance.new("TextLabel")
    local Frame_t = Instance.new("ImageLabel")
    local FrameCorner = Instance.new("UICorner")
    local Frame_2 = Instance.new("ImageLabel")
    local Frame2Corner = Instance.new("UICorner")
    local ToggleButton = Instance.new("TextButton")

    Toggle_2.Name = "Toggle"
Toggle_2.Parent = Frame
Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle_2.BackgroundTransparency = 1.000
Toggle_2.Size = UDim2.new(0, 200, 0, 50)
Toggle_2.Font = Enum.Font.SourceSansSemibold
Toggle_2.Text = text
Toggle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle_2.TextSize = 14.000

Frame_t.Name = "Frame"
Frame_t.Parent = Toggle_2
Frame_t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_t.BackgroundTransparency = 1.000
Frame_t.Position = UDim2.new(1, 0, 0.333333343, 0)
Frame_t.Size = UDim2.new(0, 27, 0, 13)
Frame_t.Image = "rbxassetid://3570695787"
Frame_t.ImageColor3 = theme2
Frame_t.ScaleType = Enum.ScaleType.Slice
Frame_t.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_t.SliceScale = 0.250

FrameCorner.CornerRadius = UDim.new(0, 7)
FrameCorner.Parent = Frame_t

Frame_2.Name = "Frame_2"
Frame_2.Parent = Frame_t
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
Frame_2.Size = UDim2.new(0, 9, 0, 9)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.250

Frame2Corner.CornerRadius = UDim.new(0, 5)
Frame2Corner.Parent = Frame_2

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Toggle_2
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.Position = UDim2.new(1, 0, 0.333333552, 0)
ToggleButton.Size = UDim2.new(0, 27, 0, 15)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.TextSize = 14.000

local enabled = false
function trigger()
enabled = not enabled
pcall(callback,enabled)
play("rbxassetid://6309164078")
if enabled then
    Frame_t.ImageColor3 = theme3
    if toolight then
    Frame_2.ImageColor3 = Color3.fromRGB(26,26,26)
    end
    Frame_2.Position = UDim2.new(0.59, 0, 0.150000006, 0)
else
    Frame_t.ImageColor3 = theme2
    if toolight then
    Frame_2.ImageColor3 = theme3
    end
    Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
end
end

ToggleButton.MouseButton1Click:Connect(trigger)

function switchactions:Set(state)
enabled = state
if enabled then
    Frame_t.ImageColor3 = theme3
    if toolight then
        Frame_2.ImageColor3 = Color3.fromRGB(26,26,26)
        end
    Frame_2.Position = UDim2.new(0.59, 0, 0.150000006, 0)
else
    Frame_t.ImageColor3 = theme2
    if toolight then
        Frame_2.ImageColor3 = theme3
        end
    Frame_2.Position = UDim2.new(0, 3, 0.150000006, 0)
end
pcall(callback,enabled)
end
return switchactions
end

function InsideTab:CreateCheckbox(text,callback)
    local Cheat = Instance.new("TextLabel")
    local MainCheatFrame = Instance.new("ImageLabel")
    local MainFrameCorner = Instance.new("UICorner")
    local InsideCheatFrame = Instance.new("ImageLabel")
    local InsideFrameCorner = Instance.new("UICorner")
    local CheatButton = Instance.new("TextButton")

    Cheat.Name = "Cheat"
    Cheat.Parent = Frame
    Cheat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cheat.BackgroundTransparency = 1.000
    Cheat.Size = UDim2.new(0, 200, 0, 50)
    Cheat.Text = text
    Cheat.Font = Enum.Font.SourceSansSemibold
    Cheat.TextColor3 = Color3.fromRGB(255, 255, 255)
    Cheat.TextSize = 14.000

    MainCheatFrame.Name = "MainCheatFrame"
    MainCheatFrame.Parent = Cheat
    MainCheatFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainCheatFrame.BackgroundTransparency = 1.000
    MainCheatFrame.Position = UDim2.new(1, 0, 0.129999995, 0)
    MainCheatFrame.Size = UDim2.new(0, 18, 0, 18)
    MainCheatFrame.Image = "rbxassetid://3570695787"
    MainCheatFrame.ImageColor3 = theme2
    MainCheatFrame.ScaleType = Enum.ScaleType.Slice
    MainCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    MainCheatFrame.SliceScale = 0.020

    MainFrameCorner.CornerRadius = UDim.new(0, 4)
    MainFrameCorner.Parent = MainCheatFrame

    InsideCheatFrame.Name = "Frame"
    InsideCheatFrame.Parent = MainCheatFrame
    InsideCheatFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    InsideCheatFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InsideCheatFrame.BackgroundTransparency = 1.000
    InsideCheatFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    InsideCheatFrame.Size = UDim2.new(0, 14, 0, 14)
    InsideCheatFrame.Image = "rbxassetid://3570695787"
    InsideCheatFrame.ImageColor3 = theme2
    InsideCheatFrame.ScaleType = Enum.ScaleType.Slice
    InsideCheatFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    InsideCheatFrame.SliceScale = 0.020

    InsideFrameCorner.CornerRadius = UDim.new(0, 3)
    InsideFrameCorner.Parent = InsideCheatFrame

    CheatButton.Parent = MainCheatFrame
    CheatButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CheatButton.BackgroundTransparency = 1.000
    CheatButton.Size = UDim2.new(0, 18, 0, 18)
    CheatButton.Font = Enum.Font.SourceSans
    CheatButton.Text = ""
    CheatButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    CheatButton.TextSize = 14.000
    CheatButton.ZIndex = 2

    local enabledcheat = false
    function triggercheat()
    enabledcheat = not enabledcheat
    pcall(callback,enabledcheat)
    play("rbxassetid://6309164078")
    if enabledcheat then
        InsideCheatFrame.ImageColor3 = theme3
    else
        InsideCheatFrame.ImageColor3 = theme2
    end
    end

    CheatButton.MouseButton1Click:Connect(triggercheat)
end

function InsideTab:CreateButton(text, callback)
    text = text or "New Button"
    callback = callback or function() end
    local Button = Instance.new("TextButton")
    local Button_Roundify_3px = Instance.new("ImageLabel")
    local ButtonCorner = Instance.new("UICorner")

    Button.Name = "Btn"
    Button.Parent = Frame
    Button.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
    Button.BackgroundTransparency = 1.000
    Button.BorderSizePixel = 0
    Button.Position = UDim2.new(-0.00554528646, 0, 0.0607142858, 0)
    Button.Size = UDim2.new(0, 36, 0, 21)
    Button.ZIndex = 2
    Button.Font = Enum.Font.SourceSansSemibold
    Button.Text = text
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 14.000

    Button_Roundify_3px.Name = "Button_Roundify_3px"
    Button_Roundify_3px.Parent = Button
    Button_Roundify_3px.Active = true
    Button_Roundify_3px.AnchorPoint = Vector2.new(0.5, 0.5)
    Button_Roundify_3px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Button_Roundify_3px.BackgroundTransparency = 1.000
    Button_Roundify_3px.Position = UDim2.new(0.5, 0, 0.5, 0)
    Button_Roundify_3px.Selectable = true
    Button_Roundify_3px.Size = UDim2.new(1, 0, 1, 0)
    Button_Roundify_3px.Image = "rbxassetid://3570695787"
    Button_Roundify_3px.ImageColor3 = theme2
    Button_Roundify_3px.ScaleType = Enum.ScaleType.Slice
    Button_Roundify_3px.SliceCenter = Rect.new(100, 100, 100, 100)
    Button_Roundify_3px.SliceScale = 0.030

    ButtonCorner.CornerRadius = UDim.new(0, 5)
    ButtonCorner.Parent = Button_Roundify_3px

    Button.MouseButton1Click:Connect(function()
pcall(callback)
play("rbxassetid://178104975")
    end)
end
return InsideTab
end
return InsideLibrary
end
return library
