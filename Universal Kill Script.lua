for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
    wait(0.1)
end

-- Create the main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")
screenGui.Name = "youshalldie"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 999999999

if getgenv().AntiAfkExecuted and screenGui then
    getgenv().AntiAfkExecuted = false
    getgenv().zamanbaslaticisi = false
    getgenv().AutoRespawn = false
    local respawnConnection
    local connections = {
        walkSpeed,
        jumpPower
    }
    
    if connections.walkSpeed then
        connections.walkSpeed:Disconnect()
        connections.walkSpeed = nil
    end
    
    if connections.jumpPower then
        connections.jumpPower:Disconnect()
        connections.jumpPower = nil
    end
    
    disconnectListeners()
    game.CoreGui.youshalldie:Destroy()
end

getgenv().AntiAfkExecuted = true
getgenv().AutoRespawn = true

    game.StarterGui:SetCore("SendNotification", {
        Title = "WARNING";
        Text = "DO NOT EXECUTE THE SCRIPT TWICE";
        Duration = 20;
    })

local player = game.Players.LocalPlayer

-- Create the buttons
local textButton1 = Instance.new("TextButton")
textButton1.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton1.Position = UDim2.new(0, 10, 1, -120) -- Adjusted position
textButton1.Text = "Kill Every NPC"
textButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton1.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton1.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton1.Font = Enum.Font.Gotham
textButton1.TextSize = 14
textButton1.Parent = screenGui

local destroyButton = Instance.new("TextButton")
destroyButton.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
destroyButton.Position = UDim2.new(0, 10, 1, -270) -- Adjusted position
destroyButton.Text = "Destroy GUI"
destroyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
destroyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
destroyButton.TextColor3 = Color3.new(1, 1, 1) -- White text color
destroyButton.Font = Enum.Font.Gotham
destroyButton.TextSize = 14
destroyButton.Parent = screenGui

local textButton2 = Instance.new("TextButton")
textButton2.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton2.Position = UDim2.new(0, 10, 1, -210) -- Position below the first button
textButton2.Text = "Loop Kill Every NPC : OFF"
textButton2.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton2.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton2.Font = Enum.Font.Gotham
textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton2.TextSize = 14
textButton2.Parent = screenGui

local textButton3 = Instance.new("TextButton")
textButton3.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton3.Position = UDim2.new(0, 10, 1, -180) -- Position below the second button
textButton3.Text = "Auto Equip Tools : OFF"
textButton3.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton3.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton3.Font = Enum.Font.Gotham
textButton3.TextSize = 14
textButton3.Parent = screenGui

local textButton4 = Instance.new("TextButton")
textButton4.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton4.Position = UDim2.new(0, 10, 1, -150) -- Position below the third button
textButton4.Text = "Loop Remote Script : OFF"
textButton4.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton4.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton4.Font = Enum.Font.Gotham
textButton4.TextSize = 14
textButton4.Parent = screenGui

local textButton5 = Instance.new("TextButton")
textButton5.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton5.Position = UDim2.new(0, 10, 1, -240) -- Adjusted position
textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton5.Text = "Auto Crates : OFF"
textButton5.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton5.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton5.Font = Enum.Font.Gotham
textButton5.TextSize = 14
textButton5.Parent = screenGui

local textButton6 = Instance.new("TextButton")
textButton6.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton6.Position = UDim2.new(0, 175, 1, -270) -- Adjusted position
textButton6.Text = "Open NPC List"
textButton6.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton6.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton6.Font = Enum.Font.Gotham
textButton6.TextSize = 14
textButton6.Parent = screenGui

local textButton7 = Instance.new("TextButton")
textButton7.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton7.Position = UDim2.new(0, 175, 1, -240) -- Adjusted position
textButton7.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton7.Text = "Show Aimlock"
textButton7.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton7.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton7.Font = Enum.Font.Gotham
textButton7.TextSize = 14
textButton7.Parent = screenGui

local textButton8 = Instance.new("TextButton")
textButton8.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
textButton8.Position = UDim2.new(0, 175, 1, -210) -- Adjusted position
textButton8.Text = "Open Player Editor"
textButton8.BorderColor3 = Color3.fromRGB(0, 0, 0)
textButton8.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
textButton8.TextColor3 = Color3.new(1, 1, 1) -- White text color
textButton8.Font = Enum.Font.Gotham
textButton8.TextSize = 14
textButton8.Parent = screenGui

local Frame2 = Instance.new("ScrollingFrame")
Frame2.Parent = screenGui
Frame2.Name = "playereditor"
Frame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.BorderSizePixel = 1
Frame2.Position = UDim2.new(0, 175, 1, -175)
Frame2.Size = UDim2.new(0, 161, 0, 100)
Frame2.ElasticBehavior = "Never"
Frame2.ClipsDescendants = true
Frame2.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
Frame2.CanvasSize = UDim2.new(0, 0, 0, 425)
Frame2.ScrollBarThickness = 1
Frame2.ScrollingDirection = Enum.ScrollingDirection.Y
Frame2.Visible = false

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = Frame2

local defaultJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local defaultWsPower = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

local wsButton = Instance.new("TextBox")
wsButton.Size = UDim2.new(0, 160, 0, 25)
wsButton.BorderColor3 = Color3.new(0, 0, 0)
wsButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
wsButton.Text = "Walkspeed : " .. tostring(defaultWsPower)
wsButton.PlaceholderText = "Set Walkspeed Value"
wsButton.Name = "Walkspeed"
wsButton.TextSize = 14
wsButton.TextColor3 = Color3.new(255, 255, 255)
wsButton.Font = Enum.Font.Gotham
wsButton.Parent = Frame2

local jpButton = Instance.new("TextBox")
jpButton.Size = UDim2.new(0, 160, 0, 25)
jpButton.BorderColor3 = Color3.new(0, 0, 0)
jpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
jpButton.Text = "Jumppower : " .. tostring(defaultJumpPower)
jpButton.PlaceholderText = "Set Jumppower Value"
jpButton.Name = "Jumppower"
jpButton.TextSize = 14
jpButton.TextColor3 = Color3.new(255, 255, 255)
jpButton.Font = Enum.Font.Gotham
jpButton.Parent = Frame2

local noclipButton = Instance.new("TextButton")
noclipButton.Size = UDim2.new(0, 160, 0, 25)
noclipButton.BorderColor3 = Color3.new(0, 0, 0)
noclipButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
noclipButton.Text = "Noclip : OFF"
noclipButton.Name = "Noclip"
noclipButton.TextSize = 14
noclipButton.TextColor3 = Color3.new(255, 255, 255)
noclipButton.Font = Enum.Font.Gotham
noclipButton.Parent = Frame2

local freezeButton = Instance.new("TextButton")
freezeButton.Size = UDim2.new(0, 160, 0, 25)
freezeButton.BorderColor3 = Color3.new(0, 0, 0)
freezeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
freezeButton.Text = "Freeze : OFF"
freezeButton.Name = "freeze"
freezeButton.TextSize = 14
freezeButton.TextColor3 = Color3.new(255, 255, 255)
freezeButton.Font = Enum.Font.Gotham
freezeButton.Parent = Frame2

local freezenpcButton = Instance.new("TextButton")
freezenpcButton.Size = UDim2.new(0, 160, 0, 25)
freezenpcButton.BorderColor3 = Color3.new(0, 0, 0)
freezenpcButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
freezenpcButton.Text = "Freeze NPC : OFF"
freezenpcButton.Name = "freezenpc"
freezenpcButton.TextSize = 14
freezenpcButton.TextColor3 = Color3.new(255, 255, 255)
freezenpcButton.Font = Enum.Font.Gotham
freezenpcButton.Parent = Frame2

local invisButton = Instance.new("TextButton")
invisButton.Size = UDim2.new(0, 160, 0, 25)
invisButton.BorderColor3 = Color3.new(0, 0, 0)
invisButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
invisButton.Text = "Invisible : OFF"
invisButton.Name = "Invis"
invisButton.TextSize = 14
invisButton.TextColor3 = Color3.new(255, 255, 255)
invisButton.Font = Enum.Font.Gotham
invisButton.Parent = Frame2

local voidButton = Instance.new("TextButton")
voidButton.Size = UDim2.new(0, 160, 0, 25)
voidButton.BorderColor3 = Color3.new(0, 0, 0)
voidButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
voidButton.Text = "Antivoid : OFF"
voidButton.Name = "AntiVoid"
voidButton.TextSize = 14
voidButton.TextColor3 = Color3.new(255, 255, 255)
voidButton.Font = Enum.Font.Gotham
voidButton.Parent = Frame2

local antiButton = Instance.new("TextButton")
antiButton.Size = UDim2.new(0, 160, 0, 25)
antiButton.BorderColor3 = Color3.new(0, 0, 0)
antiButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
antiButton.Text = "Anti Fling : OFF"
antiButton.Name = "antifling"
antiButton.TextSize = 14
antiButton.TextColor3 = Color3.new(255, 255, 255)
antiButton.Font = Enum.Font.Gotham
antiButton.Parent = Frame2

local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 160, 0, 25)
flyButton.BorderColor3 = Color3.new(0, 0, 0)
flyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
flyButton.Text = "Fly : OFF"
flyButton.Name = "fly"
flyButton.TextSize = 14
flyButton.TextColor3 = Color3.new(255, 255, 255)
flyButton.Font = Enum.Font.Gotham
flyButton.Parent = Frame2

local upButton = Instance.new("TextButton")
upButton.Size = UDim2.new(0, 35, 0, 25)
upButton.BorderColor3 = Color3.new(0, 0, 0)
upButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Dark background color
upButton.Text = "↑"
upButton.Name = "flyup"
upButton.TextSize = 25
upButton.TextColor3 = Color3.new(255, 255, 255)
upButton.Font = Enum.Font.Gotham
upButton.Parent = flyButton

local downButton = Instance.new("TextButton")
downButton.Size = UDim2.new(0, 35, 0, 25)
downButton.Position = UDim2.new(0.77, 0, 0, 0)
downButton.BorderColor3 = Color3.new(0, 0, 0)
downButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35) -- Dark background color
downButton.Text = "↓"
downButton.Name = "flydown"
downButton.TextSize = 25
downButton.TextColor3 = Color3.new(255, 255, 255)
downButton.Font = Enum.Font.Gotham
downButton.Parent = flyButton

local modeButton = Instance.new("TextButton")
modeButton.Size = UDim2.new(0, 160, 0, 25)
modeButton.BorderColor3 = Color3.new(0, 0, 0)
modeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
modeButton.Text = "Unkillable : OFF"
modeButton.Name = "immortal"
modeButton.TextSize = 14
modeButton.TextColor3 = Color3.new(255, 255, 255)
modeButton.Font = Enum.Font.Gotham
modeButton.Parent = Frame2

local fallButton = Instance.new("TextButton")
fallButton.Size = UDim2.new(0, 160, 0, 25)
fallButton.BorderColor3 = Color3.new(0, 0, 0)
fallButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
fallButton.Text = "No Fall Damage : OFF"
fallButton.Name = "fall"
fallButton.TextSize = 14
fallButton.TextColor3 = Color3.new(255, 255, 255)
fallButton.Font = Enum.Font.Gotham
fallButton.Parent = Frame2

local looptpButton = Instance.new("TextButton")
looptpButton.Size = UDim2.new(0, 160, 0, 25)
looptpButton.BorderColor3 = Color3.new(0, 0, 0)
looptpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
looptpButton.Text = "Loop Teleport NPC : OFF"
looptpButton.Name = "looptp"
looptpButton.TextSize = 14
looptpButton.TextColor3 = Color3.new(255, 255, 255)
looptpButton.Font = Enum.Font.Gotham
looptpButton.Parent = Frame2

local respawnButton = Instance.new("TextButton")
respawnButton.Size = UDim2.new(0, 160, 0, 25)
respawnButton.BorderColor3 = Color3.new(0, 0, 0)
respawnButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
respawnButton.Text = "Auto Respawn : OFF"
respawnButton.Name = "respawn"
respawnButton.TextSize = 14
respawnButton.TextColor3 = Color3.new(255, 255, 255)
respawnButton.Font = Enum.Font.Gotham
respawnButton.Parent = Frame2

local tpButton = Instance.new("TextButton")
tpButton.Size = UDim2.new(0, 160, 0, 25)
tpButton.BorderColor3 = Color3.new(0, 0, 0)
tpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
tpButton.Text = "Click to Teleport"
tpButton.Name = "clicktotp"
tpButton.TextSize = 14
tpButton.TextColor3 = Color3.new(255, 255, 255)
tpButton.Font = Enum.Font.Gotham
tpButton.Parent = Frame2

local infjumpButton = Instance.new("TextButton")
infjumpButton.Size = UDim2.new(0, 160, 0, 25)
infjumpButton.BorderColor3 = Color3.new(0, 0, 0)
infjumpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
infjumpButton.Text = "Infinite Jump : OFF"
infjumpButton.Name = "InfJump"
infjumpButton.TextSize = 14
infjumpButton.TextColor3 = Color3.new(255, 255, 255)
infjumpButton.Font = Enum.Font.Gotham
infjumpButton.Parent = Frame2

local shiftlockButton = Instance.new("TextButton")
shiftlockButton.Size = UDim2.new(0, 160, 0, 25)
shiftlockButton.BorderColor3 = Color3.new(0, 0, 0)
shiftlockButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
shiftlockButton.Text = "Show Shiftlock"
shiftlockButton.Name = "ShiftlockButton"
shiftlockButton.TextSize = 14
shiftlockButton.TextColor3 = Color3.new(255, 255, 255)
shiftlockButton.Font = Enum.Font.Gotham
shiftlockButton.Parent = Frame2

local espButton = Instance.new("TextButton")
espButton.Size = UDim2.new(0, 160, 0, 25)
espButton.BorderColor3 = Color3.new(0, 0, 0)
espButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
espButton.Text = "Name ESP : OFF"
espButton.Name = "ESP"
espButton.TextSize = 14
espButton.TextColor3 = Color3.new(255, 255, 255)
espButton.Font = Enum.Font.Gotham
espButton.Parent = Frame2

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Frame1 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

-- Configuration
local CamlockState = false
local Prediction = 0.25
local Locked = true
getgenv().Key = "c"

local enemy = nil
local glowEffect = nil
local billboardGui = nil

-- Function to find the nearest enemy
function FindNearestEnemy()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    local CenterPosition = Vector2.new(
        game:GetService("GuiService"):GetScreenResolution().X / 2,
        game:GetService("GuiService"):GetScreenResolution().Y / 2
    )

    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character:FindFirstChild("HumanoidRootPart") and Character.Humanoid.Health > 0 then
                local Position, IsVisibleOnViewport = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewport then
                    local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Character.HumanoidRootPart
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer
end

local function applyGlow(character)
    if character then
        -- Create the glow effect
        glowEffect = Instance.new("Highlight")
        glowEffect.FillColor = Color3.fromRGB(0, 0, 0) -- Black glow color
        glowEffect.FillTransparency = 0.5
        glowEffect.OutlineColor = Color3.fromRGB(0, 0, 0) -- Black outline
        glowEffect.OutlineTransparency = 0.2
        glowEffect.Parent = character

        -- Create a BillboardGui to display text above the character's head
        local head = character:FindFirstChild("Head")
        if head then
            billboardGui = Instance.new("BillboardGui")
            billboardGui.Size = UDim2.new(0, 100, 0, 50)
            billboardGui.Adornee = head
            billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- Position above the head
            billboardGui.Parent = head

            -- Create the text label inside the BillboardGui
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = "[TARGET]"
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Red text color
            textLabel.TextScaled = true -- Scales the text to fit
            textLabel.Font = Enum.Font.Gotham -- Choose a bold font
            textLabel.Parent = billboardGui
        end
    end
end

-- Function to remove glow effect
local function removeGlow()
    if glowEffect then
        glowEffect:Destroy()
        glowEffect = nil
    end
    
    if billboardGui then
        billboardGui:Destroy()
        billboardGui = nil
    end
end

-- Function to reset target if enemy dies, despawns, or leaves
local function resetTarget()
    if enemy and (not enemy.Parent or enemy.Parent:FindFirstChild("Humanoid").Health <= 0) then
        removeGlow()
        enemy = nil
        state = true
        CamlockState = false
        TextButton.Text = "Toggle Camlock"
        TextButton.TextSize = 13
    end
end

-- Function to aim the camera at the nearest enemy's HumanoidRootPart
RunService.Heartbeat:Connect(function()
    if CamlockState and enemy then
        resetTarget() -- Check if the enemy is still valid
        if enemy then
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.p, enemy.Position + enemy.Velocity * Prediction)
        end
    end
end)

Mouse.KeyDown:Connect(function(k)
    if k == getgenv().Key then
        Locked = not Locked
        if Locked then
            enemy = FindNearestEnemy()
            CamlockState = true
            if enemy then
                applyGlow(enemy.Parent) -- Apply glow effect to the enemy
                TextButton.Text = "ON"
                TextButton.TextSize = 20
            end
        else
            removeGlow() -- Remove glow effect
            enemy = nil
            CamlockState = false
            state = true
            TextButton.Text = "Toggle Camlock"
            TextButton.TextSize = 13
        end
    end
end)

Frame1.Parent = screenGui
Frame1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.76, 0, 0.05, 0)
Frame1.Size = UDim2.new(0, 80, 0, 40)
Frame1.Active = true
Frame1.Draggable = true
Frame1.Visible = false
Frame1.ZIndex = 1
UICorner.Parent = Frame1

TextButton.Parent = Frame1
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 5.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, -45, 0, -2)
TextButton.Size = UDim2.new(0, 170, 0, 44)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Toggle Camlock"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 13.000
TextButton.ZIndex = 1
TextButton.TextWrapped = true

local state = true
TextButton.MouseButton1Click:Connect(function()
    state = not state
    if not state then
        TextButton.Text = "ON"
        TextButton.TextSize = 20
        CamlockState = true
        enemy = FindNearestEnemy()
        if enemy then
            applyGlow(enemy.Parent) -- Apply glow effect to the enemy
        end
    else
        TextButton.Text = "Toggle Camlock"
        TextButton.TextSize = 13
        CamlockState = false
        removeGlow() -- Remove glow effect
        enemy = nil
    end
end)

-- Function to hide the loading screen after a certain duration
local function HideLoadingScreen()
    LoadingScreen:Destroy()
end

-- Create the delay TextBox
local delayTextBox = Instance.new("TextBox")
delayTextBox.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
delayTextBox.Position = UDim2.new(0, 10, 1, -90) -- Position below the fourth button
delayTextBox.Text = "2" -- Default delay
delayTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
delayTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
delayTextBox.TextColor3 = Color3.new(1, 1, 1) -- White text color
delayTextBox.Font = Enum.Font.Gotham
delayTextBox.TextSize = 14
delayTextBox.Parent = screenGui

local dropdownFrame = Instance.new("ScrollingFrame")
dropdownFrame.Name = "DropdownFrame"
dropdownFrame.BorderColor3 = Color3.new(0, 0, 0)
dropdownFrame.Size = UDim2.new(0, 161, 0, 139) -- Default size 150
dropdownFrame.Position = UDim2.new(0, 340, 1, -270)
dropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
dropdownFrame.BackgroundTransparency = 0
dropdownFrame.Visible = false
dropdownFrame.ElasticBehavior = Enum.ElasticBehavior.Never
dropdownFrame.ClipsDescendants = true
dropdownFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
dropdownFrame.CanvasSize = UDim2.new(0, 0, 0, 0) -- Start with a default CanvasSize of 0
dropdownFrame.ScrollBarThickness = 1
dropdownFrame.ScrollingDirection = Enum.ScrollingDirection.Y
dropdownFrame.Parent = screenGui

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = dropdownFrame
uiListLayout.Padding = UDim.new(0, 3)

local teleportLoopActive = false
local dropdownOpen = false
local errorPrinted = false
local selectedNPCALT = nil
local selectedNPC = nil -- Variable to track the selected NPC

-- Function to update the border color of the buttons based on selection
local function updateButtonStyles()
    for _, child in ipairs(dropdownFrame:GetChildren()) do
        if child:IsA("TextButton") then
            if child.Name == selectedNPCALT then
                child.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Green for selected
            else
                child.BorderColor3 = Color3.new(0, 0, 0) -- Black for not selected
            end
        end
    end
end

local function handleNPCSelectionALT(npc)
    local delay = tonumber(delayTextBox.Text)
    
    -- Function to teleport player to the NPC
    local function teleportToNPC()
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and npc and npc:FindFirstChild("HumanoidRootPart") then
            if teleportLoopActive then
                coroutine.wrap(function()
                    while teleportLoopActive do
                        if player.Character:FindFirstChild("HumanoidRootPart") and npc:FindFirstChild("HumanoidRootPart") then
                            player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
                            task.wait(0.01)
                        else
                            -- Handle missing NPC or player HRP logic
                            selectedNPCALT = nil
                            selectedNPC = nil
                            updateButtonStyles()
                            warn("The selected NPC or player HRP has despawned or does not exist. Waiting for respawn...")
                            
                            -- Wait until the NPC and player HRP respawn
                            while not (npc and npc:FindFirstChild("HumanoidRootPart")) and teleportLoopActive do
                                wait(1) -- Wait for 1 second before re-checking
                                -- Re-check for NPC respawn
                                npc = nil
                                for _, descendant in ipairs(workspace:GetDescendants()) do
                                    if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") and descendant.Name == selectedNPCALT then
                                        npc = descendant
                                        break
                                    end
                                end
                            end

                            -- Wait until player's HRP is available if it's not valid
                            while not player.Character:FindFirstChild("HumanoidRootPart") and teleportLoopActive do
                                wait(1) -- Wait for 1 second before re-checking
                            end

                            -- Check if NPC has respawned
                            if npc and npc:FindFirstChild("HumanoidRootPart") then
                                warn("The selected NPC has respawned.")
                            end
                        end
                        wait(0.1)
                    end
                end)()
            else
                -- If teleport loop is not active, teleport player once
                player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
            end
        else
            -- Handle cases where HRP or NPC is invalid
            selectedNPCALT = nil
            selectedNPC = nil
            updateButtonStyles()
            warn("The selected NPC or player HRP has despawned or does not exist.")
        end
    end

    -- Check if HRP is immediately available
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        teleportToNPC()
    else
        -- Wait for player's HRP to become available
        player.CharacterAdded:Connect(function()
            repeat
                wait(1)
            until player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            teleportToNPC()
        end)
    end
end

local function refreshDropdown()
    -- Clear the existing dropdown buttons
    for _, child in ipairs(dropdownFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    -- Reset the error flag when refreshing the dropdown
    errorPrinted = false

    local buttonCount = 0 -- Track the number of buttons
    local npcNameCounts = {} -- Table to track the counts of NPC names

    -- First pass to count NPCs with the same name
    for _, npc in ipairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") and not game.Players:FindFirstChild(npc.Name) then
            if npcNameCounts[npc.Name] == nil then
                npcNameCounts[npc.Name] = {}
            end
            table.insert(npcNameCounts[npc.Name], npc) -- Store references to NPCs
        end
    end

    -- Second pass to create buttons with markings if needed
    for npcName, npcList in pairs(npcNameCounts) do
        for index, npc in ipairs(npcList) do
            local npcDisplayName = npcName
            if #npcList > 1 then
                -- Add a marking if the NPC name is duplicated
                npcDisplayName = npcName .. " #" .. index
            end

            local npcButton = Instance.new("TextButton")
            npcButton.Size = UDim2.new(0, 160, 0, 25)
            npcButton.BorderSizePixel = 1
            npcButton.BorderColor3 = Color3.new(0, 0, 0)
            npcButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
            npcButton.Text = npcDisplayName
            npcButton.Name = npcDisplayName
            npcButton.TextSize = 14
            npcButton.TextColor3 = Color3.new(255, 255, 255)
            npcButton.Font = Enum.Font.Gotham
            npcButton.Parent = dropdownFrame

            -- Update button styles based on selection
            updateButtonStyles()

            npcButton.MouseButton1Click:Connect(function()
                -- Update selection and teleport player
                selectedNPC = npc
                selectedNPCALT = npcDisplayName
                updateButtonStyles()
                handleNPCSelectionALT(npc)
            end)

            buttonCount = buttonCount + 1 -- Increment the button count
        end
    end

    -- Adjust the CanvasSize based on the number of buttons
    local buttonHeight = 26
    local totalHeight = buttonCount * buttonHeight
    dropdownFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
end

-- Create the toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 30, 0, 30) -- Adjusted size
toggleButton.Position = UDim2.new(0, 10, 0, 10) -- Position to the right of the first button
toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.Text = "-"
toggleButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
toggleButton.TextColor3 = Color3.new(1, 1, 1) -- White text color
toggleButton.Font = Enum.Font.Gotham
toggleButton.TextSize = 30
toggleButton.Draggable = true
toggleButton.Parent = screenGui
local UICornerfr = Instance.new("UICorner")
UICornerfr.Parent = toggleButton

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = screenGui
ImageButton.Visible = false
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.9219, 0, 0.5524, 0)
ImageButton.Size = UDim2.new(0.0636, 0, 0.0661, 0)
ImageButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ImageButton.Image = "http://www.roblox.com/asset/?id=182223762"

-- Combined Shiftlock Script with Monitoring & Reset Logic
local function ShiftlockScript()
    local MobileCameraFramework = {}

    -- Services and Variables
    local players = game:GetService("Players")
    local runservice = game:GetService("RunService")
    local CAS = game:GetService("ContextActionService")
    local uis = game:GetService("UserInputService")
    local player = players.LocalPlayer
    local camera = workspace.CurrentCamera
    local GameSettings = UserSettings().GameSettings
    local isMobile = uis.TouchEnabled
    local button = ImageButton

    button.Visible = false

    local states = {
        OFF = "rbxasset://textures/ui/mouseLock_off@2x.png",
        ON = "rbxasset://textures/ui/mouseLock_on@2x.png"
    }

    local MAX_LENGTH = 900000
    local active = false
    local ENABLED_OFFSET = CFrame.new(1.7, 0, 0)
    local DISABLED_OFFSET = CFrame.new(-1.7, 0, 0)
    local IsShiftLocked = false
    local IsShiftLockMode = true

    -- Functions
    local function UpdateImage(state)
        button.Image = states[state]
    end

    local function UpdateAutoRotate(enabled)
        player.Character.Humanoid.AutoRotate = enabled
    end

    local function GetUpdatedCameraCFrame(root, camera)
        return CFrame.new(
            root.Position,
            Vector3.new(camera.CFrame.LookVector.X * MAX_LENGTH, root.Position.Y, camera.CFrame.LookVector.Z * MAX_LENGTH)
        )
    end

    local function EnableShiftlock()
        local root = player.Character:WaitForChild("HumanoidRootPart")
        UpdateAutoRotate(false)
        UpdateImage("ON")
        root.CFrame = GetUpdatedCameraCFrame(root, camera)
        camera.CFrame = camera.CFrame * ENABLED_OFFSET
    end

    local function DisableShiftlock()
        UpdateAutoRotate(true)
        UpdateImage("OFF")
        camera.CFrame = camera.CFrame * DISABLED_OFFSET
        if active then
            active:Disconnect()
            active = nil
        end
    end

    local function ShiftLock()
        if not active then
            active = runservice.RenderStepped:Connect(function()
                EnableShiftlock()
            end)
        else
            DisableShiftlock()
        end
    end

    -- Monitoring GameSettings and Player Changes
    local function isShiftLockMode()
        return player.DevEnableMouseLock and
               GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch and
               player.DevComputerMovementMode ~= Enum.DevComputerMovementMode.ClickToMove and
               GameSettings.ComputerMovementMode ~= Enum.ComputerMovementMode.ClickToMove and
               player.DevComputerMovementMode ~= Enum.DevComputerMovementMode.Scriptable
    end

    local function monitorSettings()
        GameSettings.Changed:Connect(function(property)
            if property == "ControlMode" then
                if GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch then
                    EnableShiftlock()
                else
                    DisableShiftlock()
                end
            elseif property == "ComputerMovementMode" then
                if GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove then
                    DisableShiftlock()
                else
                    EnableShiftlock()
                end
            end
        end)

        player.Changed:Connect(function(property)
            if property == "DevEnableMouseLock" then
                if player.DevEnableMouseLock then
                    EnableShiftlock()
                else
                    DisableShiftlock()
                end
            elseif property == "DevComputerMovementMode" then
                if player.DevComputerMovementMode == Enum.DevComputerMovementMode.ClickToMove or
                   player.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable then
                    DisableShiftlock()
                else
                    EnableShiftlock()
                end
            end
        end)
    end

    -- Reset ShiftLock on Death or Respawn
    local function resetShiftLockOnDeathOrRespawn()
        player.CharacterAdded:Connect(function(character)
            character:WaitForChild("Humanoid").Died:Connect(function()
                if IsShiftLocked then
                    DisableShiftlock()
                    IsShiftLocked = false
                end
            end)
        end)
    end

    -- Binding ShiftLock Button and Handling Input
    CAS:BindAction("ShiftLOCK", ShiftLock, false, "On")

    button.MouseButton1Click:Connect(function()
        ShiftLock()
    end)

    -- Initialization
    UpdateImage("OFF")
    monitorSettings()
    resetShiftLockOnDeathOrRespawn()

    return MobileCameraFramework
end

coroutine.wrap(ShiftlockScript)()

local function executeKillScript()
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 112412400000)
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 112412400000)

    for _, d in pairs(game.Workspace:GetDescendants()) do
        if d:IsA('Humanoid') and d.Parent:FindFirstChild("HumanoidRootPart") then
            local character = d.Parent
            local isPlayer = game.Players:GetPlayerFromCharacter(character)
            if not isPlayer then
                d.Health = 0
            end
        end
    end
end

local flying = false
local speeds = 3
local player = game:GetService("Players").LocalPlayer
local character = player.Character
local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
local nowe = false
local speaker = game:GetService("Players").LocalPlayer
local chr = game.Players.LocalPlayer.Character 
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid") 


local function toggleFly()
if nowe == true then
    flyButton.Text = "Fly : OFF"
    -- Enable humanoid states
    nowe = false
    flying = false
    local humanoid = speaker.Character.Humanoid
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
    
    -- Change humanoid state to RunningNoPhysics
    humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

else
    -- Disable certain humanoid states
    nowe = true
    flying = true
    flyButton.Text = "Fly : ON"
    for i = 1, speeds do
        spawn(function()
            local hb = game:GetService("RunService").Heartbeat
            tpwalking = true
            local chr = game.Players.LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

            while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                if hum.MoveDirection.Magnitude > 0 then
                    chr:TranslateBy(hum.MoveDirection)
                end
            end
        end)
    end
    
    -- Disable character animations and freeze current ones
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    local Char = game.Players.LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for _, v in next, Hum:GetPlayingAnimationTracks() do
        v:AdjustSpeed(0)
    end
    
    -- Disable humanoid states
    local humanoid = speaker.Character.Humanoid
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
    
    -- Change humanoid state to Swimming
    humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
end

-- Handle R6 or R15 rig type
local humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
if humanoid.RigType == Enum.HumanoidRigType.R6 then
    local plr = game.Players.LocalPlayer
    local torso = plr.Character.Torso
    local deb = true
    flying = true
    local ctrl = {f = 0, b = 0, l = 0, r = 0}
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local maxspeed = 50
    local speed = 3
    local bg = Instance.new("BodyGyro", torso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = torso.CFrame
    local bv = Instance.new("BodyVelocity", torso)
    bv.velocity = Vector3.new(0, 0.1, 0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

    if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
    end

    while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        game:GetService("RunService").RenderStepped:Wait()

        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
            speed = speed + .5 + (speed / maxspeed)
            if speed > maxspeed then
                speed = maxspeed
            end
        elseif speed ~= 0 then
            speed = speed - 1
            if speed < 0 then
                speed = 0
            end
        end

        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) + 
                          ((game.Workspace.CurrentCamera.CoordinateFrame * 
                          CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) - 
                          game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif speed ~= 0 then
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) + 
                          ((game.Workspace.CurrentCamera.CoordinateFrame * 
                          CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) - 
                          game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
        else
            bv.velocity = Vector3.new(0, 0, 0)
        end

        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
    end

    -- Reset control states and destroy body movers
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    tpwalking = false
else
    -- R15 rig version (similar to R6 but applies to UpperTorso)
    local plr = game.Players.LocalPlayer
    local UpperTorso = plr.Character.UpperTorso
    local deb = true
    local ctrl = {f = 0, b = 0, l = 0, r = 0}
    local lastctrl = {f = 0, b = 0, l = 0, r = 0}
    local maxspeed = 50
    local speed = 3
    flying = true
    local bg = Instance.new("BodyGyro", UpperTorso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = UpperTorso.CFrame
    local bv = Instance.new("BodyVelocity", UpperTorso)
    bv.velocity = Vector3.new(0, 0.1, 0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

    if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
    end

    while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        wait()

        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
            speed = speed + .5 + (speed / maxspeed)
            if speed > maxspeed then
                speed = maxspeed
            end
        elseif speed ~= 0 then
            speed = speed - 1
            if speed < 0 then
                speed = 0
            end
        end

        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) + 
                          ((game.Workspace.CurrentCamera.CoordinateFrame * 
                          CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) - 
                          game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif speed ~= 0 then
            bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) + 
                          ((game.Workspace.CurrentCamera.CoordinateFrame * 
                          CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) - 
                          game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
        else
            bv.velocity = Vector3.new(0, 0, 0)
        end

        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
    end

    -- Reset control states and destroy body movers
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    tpwalking = false
end
end


-- Function to send a core notification
local function notifyPlayer(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "NOTIFICATION";
        Text = message;
        Duration = 3;
    })
end

-- Move Up Functionality
local tis
upButton.MouseButton1Down:Connect(function()
    if nowe then -- Only allow movement if flying is true
        tis = upButton.MouseEnter:Connect(function()
            while tis do
                wait()
                local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = hrp.CFrame * CFrame.new(0, 1, 0)
                end
            end
        end)
    else
        notifyPlayer("You need to be in fly mode to move up!")
    end
end)

upButton.MouseLeave:Connect(function()
    if tis then
        tis:Disconnect()
        tis = nil
    end
end)

-- Move Down Functionality
local dis
downButton.MouseButton1Down:Connect(function()
    if flying then -- Only allow movement if flying is true
        dis = downButton.MouseEnter:Connect(function()
            while dis do
                wait()
                
                local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                if hrp then
                    hrp.CFrame = hrp.CFrame * CFrame.new(0, -1, 0)
                end
            end
        end)
    else
        notifyPlayer("You need to be in fly mode to move down!")
    end
end)

downButton.MouseLeave:Connect(function()
    if dis then
        dis:Disconnect()
        dis = nil
    end
end)

-- Resetting fly state and animations on character reset
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    if nowe then
    wait(0.7)
    flying = false
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
    end
end)

-- Define necessary services and variables
local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local immortalEnabled = false -- Toggle state

-- Function to disable CanTouch on all BaseParts
local function disableCanTouch()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanTouch = false
        end
    end
end

-- Function to enable CanTouch on all BaseParts
local function enableCanTouch()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanTouch = true
        end
    end
end

-- Toggle function for Immortal Mode
local function toggleGodMode()
    if immortalEnabled then
        modeButton.Text = "Unkillable : OFF"
        immortalEnabled = false
        enableCanTouch() -- Enable CanTouch again
    else
        modeButton.Text = "Unkillable : ON"
        immortalEnabled = true
        disableCanTouch() -- Disable CanTouch for all parts
    end
end

-- Services definition
local Services = {
    Lighting = game:GetService("Lighting"),
    Players = game:GetService("Players"),
    Workspace = game:GetService("Workspace")
}

-- Define LocalPlayer and variables for the character
local LocalPlayer = Services.Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

-- Define the visibility toggle (starts as visible)
local isVisible = true

-- Define a wait function
local function Wait(seconds)
    wait(seconds)
end

-- Function to make the player invisible
local function makeInvisible()
    -- Check if already invisible by looking for the clone in Lighting
    if Services.Lighting:FindFirstChild(LocalPlayer.Name) then
        return -- If already invisible, do nothing
    end

    -- Clone the character and move the original away
    Character.Archivable = true
    local Original = Character
    local Invisible = Character:Clone()
    local OriginalPosition = Original.HumanoidRootPart.CFrame

    Original.HumanoidRootPart.CFrame = CFrame.new(1000, 1000, 1000)
    Wait(0.1)
    Original.HumanoidRootPart.Anchored = true

    Invisible.HumanoidRootPart.CFrame = OriginalPosition
    Invisible.Name = string.format("%s-ghost", LocalPlayer.Name)

    -- Make the invisible clone semi-transparent
    for _, BodyPart in ipairs(Invisible:GetChildren()) do
        if BodyPart:IsA("BasePart") then
            BodyPart.Transparency = 0.5
        end
    end

    Invisible.Parent = Services.Workspace
    Original.Parent = Services.Lighting
    LocalPlayer.Character = Invisible
    Services.Workspace.CurrentCamera.CameraSubject = Invisible:FindFirstChildOfClass("Humanoid")
    Invisible.Animate.Disabled = true
    Invisible.Animate.Disabled = false
end

-- Function to make the player visible again
local function makeVisible()
    -- Find the original character in Lighting
    local Original = Services.Lighting:FindFirstChild(LocalPlayer.Name)
    local Invisible = LocalPlayer.Character

    if Original and Invisible then
        local InvisiblePosition = Invisible.HumanoidRootPart.CFrame

        -- Restore the original character
        LocalPlayer.Character = Original
        Original.Parent = Services.Workspace
        Original.HumanoidRootPart.Anchored = false
        Original.HumanoidRootPart.CFrame = InvisiblePosition

        -- Wait briefly and update the camera
        Wait(0.1)
        Services.Workspace.CurrentCamera.CameraSubject = Original:FindFirstChildOfClass("Humanoid")

        -- Destroy the invisible clone
        Invisible:Destroy()
    end
end

-- Function to toggle visibility
local function toggleVisibility()
    if isVisible then
        invisButton.Text = "Invisible : ON"
        -- If currently visible, make the player invisible
        makeInvisible()
    else
        invisButton.Text = "Invisible : OFF"
        -- If currently invisible, make the player visible
        makeVisible()
    end

    -- Toggle the boolean
    isVisible = not isVisible
end

local npcFreezeActive = false -- Variable to track whether the NPC is frozen or not
local npcConnections = {} -- Table to store connections to NPCs

local function toggleNpcFreeze()
    npcFreezeActive = not npcFreezeActive -- Toggle the freeze state

    if npcFreezeActive then
        freezenpcButton.Text = "Freeze NPC : ON"
        
        local function freezeNpc()
        for _, npc in ipairs(game.Workspace:GetDescendants()) do
        -- Check if the model is an NPC by looking for a Humanoid, and exclude the player's character or models with the same name as a player
        local isPlayerModel = game.Players:GetPlayerFromCharacter(npc) ~= nil
        local nameMatchesPlayer = game.Players:FindFirstChild(npc.Name) ~= nil
        
        if npc:IsA("Model") and npc:FindFirstChild("Humanoid") and not isPlayerModel and not nameMatchesPlayer then
            if npc:FindFirstChild("HumanoidRootPart") then
                npc.HumanoidRootPart.Anchored = npcFreezeActive -- Anchor or unanchor the HumanoidRootPart
            elseif npc:FindFirstChild("Torso") then
                npc.Torso.Anchored = npcFreezeActive -- Anchor or unanchor the Torso
            end
        end
        end
            
                -- Freeze the NPC on toggle
                freezeNpc()

                -- Set up a listener for respawn or revival
                local humanoid = npc:FindFirstChild("Humanoid")
                if humanoid and not npcConnections[npc] then
                    local diedConnection = humanoid.Died:Connect(function()
                        repeat
                            wait(1)
                        until npc:FindFirstChild("HumanoidRootPart") or npc:FindFirstChild("Torso")
                        freezeNpc()
                    end)

                    npcConnections[npc] = diedConnection
                end
        end
    else
        freezenpcButton.Text = "Freeze NPC : OFF"
        -- Unanchor all NPCs when freeze is deactivated
        for _, npc in ipairs(workspace:GetDescendants()) do
            local isPlayerModel = game.Players:GetPlayerFromCharacter(npc) ~= nil
            local nameMatchesPlayer = game.Players:FindFirstChild(npc.Name) ~= nil

            if npc:IsA("Model") and npc:FindFirstChild("Humanoid") and not isPlayerModel and not nameMatchesPlayer then
                if npc:FindFirstChild("HumanoidRootPart") then
                    npc.HumanoidRootPart.Anchored = false
                elseif npc:FindFirstChild("Torso") then
                    npc.Torso.Anchored = false
                end

                -- Disconnect any connections and clear the table
                if npcConnections[npc] then
                    npcConnections[npc]:Disconnect()
                    npcConnections[npc] = nil
                end
            end
        end
    end
end


local playerFreezeActive = false -- Variable to track whether the player is frozen or not

local function togglePlayerFreeze()
    playerFreezeActive = not playerFreezeActive -- Toggle the freeze state

    
    local character = player.Character or player.CharacterAdded:Wait()

    -- Loop through all body parts of the player's character
    for _, bodyPart in ipairs(character:GetChildren()) do
        if bodyPart:IsA("BasePart") then
            bodyPart.Anchored = playerFreezeActive -- Anchor or unanchor the body part
        end
    end

    if playerFreezeActive then
        freezeButton.Text = "Freeze : ON"
    else
        freezeButton.Text = "Freeze : OFF"
    end
end

-- Define a boolean for the toggle
local isAntiVoidEnabled = false

-- Function to enable AntiVoid (set a very low destroy height)
local function enableAntiVoid()
    workspace.FallenPartsDestroyHeight = -9e9 -- Set a very low value to avoid void destruction
end

-- Function to disable AntiVoid (set a reasonable destroy height)
local function disableAntiVoid()
    workspace.FallenPartsDestroyHeight = -500 -- Default or reasonable value for void destruction
end

-- Function to toggle AntiVoid
local function toggleAntiVoid()
    if isAntiVoidEnabled then
        disableAntiVoid()
        voidButton.Text = "Antivoid : OFF"
    else
        voidButton.Text = "Antivoid : ON"
        enableAntiVoid()
    end

    -- Toggle the boolean state
    isAntiVoidEnabled = not isAntiVoidEnabled
end

-- Define the required services and variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Function to handle player respawn and teleport
local function Teleport()
    spawn(function() -- Use spawn to run this function in a new thread
        local Character = LocalPlayer.Character
        if Character and getgenv().AutoRespawn then
            local Humanoid = Character:WaitForChild("Humanoid")
            local Pos

            -- Capture the player's position when they die
            Humanoid.Died:Connect(function()
                if getgenv().AutoRespawn then
                    Pos = Character:WaitForChild("HumanoidRootPart").CFrame
                end
            end)

            -- Wait for the player to respawn
            LocalPlayer.CharacterAdded:Wait()

            -- Teleport the player to their last known position
            local Root = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            Root.CFrame = Pos or Root.CFrame
        end
    end)
end


-- Function to toggle the auto-respawn functionality
local function ToggleRespawn()
    getgenv().AutoRespawn = not getgenv().AutoRespawn
    
    if getgenv().AutoRespawn then
        -- If auto-respawn is enabled, reinitialize the respawn behavior
        respawnButton.Text = "Auto Respawn : ON"
        Teleport()
        LocalPlayer.CharacterAdded:Connect(Teleport)
    else
        respawnButton.Text = "Auto Respawn : OFF"
    end
end    
local runsvc = game:GetService("RunService")
local heartbeat = runsvc.Heartbeat
local rstepped = runsvc.RenderStepped
local lp = game.Players.LocalPlayer
local novel = Vector3.zero
local noFallDamageEnabled = false -- Boolean to toggle no fall damage

-- Function to enable/disable no fall damage
local function toggleNoFallDamage()
    noFallDamageEnabled = not noFallDamageEnabled

    if noFallDamageEnabled then
        fallButton.Text = "No Fall Damage : ON"
    else
        fallButton.Text = "No Fall Damage : OFF"
    end
end

-- Function to apply no fall damage
local function nofalldamage(chr)
    local success, root = pcall(function()
        return chr:WaitForChild("HumanoidRootPart", 5) -- Timeout of 5 seconds to wait for HumanoidRootPart
    end)

    if not success or not root then
        warn("HumanoidRootPart not found, cannot apply No Fall Damage.")
        return
    end

    local con
    con = heartbeat:Connect(function()
        -- Disconnect the event if noFallDamage is disabled or the character no longer exists
        if not noFallDamageEnabled or not root.Parent then
            con:Disconnect()
            return
        end

        -- Temporarily set the velocity to zero to prevent fall damage
        local oldvel = root.AssemblyLinearVelocity
        root.AssemblyLinearVelocity = novel

        -- Wait for the next frame and restore the original velocity
        rstepped:Wait()
        root.AssemblyLinearVelocity = oldvel
    end)
end

-- Apply no fall damage to the current character and listen for new characters
lp.CharacterAdded:Connect(function(character)
    if noFallDamageEnabled then
        nofalldamage(character)
    end
end)

-- Apply to the current character if one exists
if lp.Character then
    nofalldamage(lp.Character)
end

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local speaker = Players.LocalPlayer
local antiFlingConnection = nil -- Store the connection to the RunService

local isAntiFlingEnabled = false -- Boolean to toggle Anti-Fling

-- Function to toggle Anti-Fling
local function toggleAntiFling()
    isAntiFlingEnabled = not isAntiFlingEnabled

    if isAntiFlingEnabled then
        antiButton.Text = "Anti Fling : ON"
        print("Anti-Fling Enabled")
        antiFlingConnection = RunService.Stepped:Connect(function()
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= speaker and player.Character then
                    for _, v in pairs(player.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false -- Disable collisions for other players' parts
                        end
                    end
                end
            end
        end)
    else
        antiButton.Text = "Anti Fling : OFF"
        print("Anti-Fling Disabled")
        if antiFlingConnection then
            antiFlingConnection:Disconnect() -- Disconnect the connection to stop Anti-Fling
            antiFlingConnection = nil
        end
    end
end

-- Variable to track the loop teleport
-- Teleport Loop Function
local function startTeleportLoop()
    teleportLoopActive = not teleportLoopActive
    
    if teleportLoopActive then
        looptpButton.Text = "Loop Teleport NPC : ON"
        if selectedNPC then
            handleNPCSelectionALT(selectedNPC)
        end
    else
        looptpButton.Text = "Loop Teleport NPC : OFF"
    end
    
end

local npcFolder1 = game:GetService("Workspace")
local monitoring = true
local spawnedNPCs = {}

local function notifyNewNPC(npcName)
    game.StarterGui:SetCore("SendNotification", {
        Title = "NOTIFICATION",
        Text = npcName .. " has spawned!",
        Duration = 5,
    })
end

local function onNPCAdded(npc)
    if npc:IsA("Model") and npc:FindFirstChild("HumanoidRootPart") and not game.Players:FindFirstChild(npc.Name) then
        if not spawnedNPCs[npc.Name] then
            notifyNewNPC(npc.Name)
            spawnedNPCs[npc.Name] = true
        end
    end
end

local function startMonitoring()
    if not game.CoreGui:FindFirstChild("youshalldie") then
        monitoring = false
        return
    end
    
    -- Initial population of spawned NPCs
    for _, npc in ipairs(npcFolder1:GetDescendants()) do
        onNPCAdded(npc)
    end

    -- Set up event listeners
    npcFolder1.DescendantAdded:Connect(onNPCAdded)
    npcFolder1.DescendantRemoving:Connect(function(npc)
        if spawnedNPCs[npc.Name] then
            spawnedNPCs[npc.Name] = nil
        end
    end)
end

spawn(startMonitoring)

local loopKill = false
local function toggleLoopKill()
    loopKill = not loopKill
    if loopKill then
        textButton2.Text = "Loop Kill Every NPC : ON"
        while loopKill do
            executeKillScript()
            local delay = tonumber(delayTextBox.Text)
            if not delay or delay <= 0 then
                delay = 2 -- Default delay if input is invalid
                delayTextBox.Text = tostring(delay)
            end
            wait(delay)
        end
    else
        textButton2.Text = "Loop Kill Every NPC : OFF"
    end
end

local autoEquip = false
local lastTools = {}

local function store()
    
    local backpack = player:FindFirstChildOfClass("Backpack")

    if backpack then
        for _, tool in ipairs(backpack:GetChildren()) do
            if tool:IsA("Tool") then
                table.insert(lastTools, tool.Name)
            end
        end
    end
end

store()

local function toggleAutoEquip()
    autoEquip = not autoEquip
    
    local backpack = player:FindFirstChildOfClass("Backpack")
    
    -- Capture the last tools in the backpack before toggling
    
    if autoEquip then
        textButton3.Text = "Auto Equip Tools : ON"
        while autoEquip do
            if backpack and not player.Character:FindFirstChildOfClass("Tool") then
                for _, tool in pairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") and not table.find(lastTools, tool.Name) then
                        tool.Parent = player.Character
                        local args = {
                            [1] = "Item",
                            [2] = "Keep"
                        }
                        game:GetService("ReplicatedStorage").RemoteEvent.InventoryEvent:FireServer(unpack(args))
                        wait(0.1)
                        break
                    end
                end
            end
            wait(0.5)
        end
    else
        textButton3.Text = "Auto Equip Tools : OFF"
    end
end

local loopRemote = false
local function toggleLoopRemote()
    loopRemote = not loopRemote

    if loopRemote then
        textButton4.Text = "Loop Remote Script : ON"
        while loopRemote do
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local equippedTool = character:FindFirstChildOfClass("Tool") -- Get currently equipped tool

            if equippedTool then
                -- Reset foundRemotes for the new tool
                local foundRemotes = {
                    X = nil,
                    Z = nil,
                    C = nil,
                    V = nil
                }

                -- Search for RemoteEvents across the tool's descendants
                for _, descendant in ipairs(equippedTool:GetDescendants()) do
                    if descendant:IsA("RemoteEvent") then
                        if descendant.Name == "X" then
                            foundRemotes.X = descendant
                        elseif descendant.Name == "Z" then
                            foundRemotes.Z = descendant
                        elseif descendant.Name == "C" then
                            foundRemotes.C = descendant
                        elseif descendant.Name == "V" then
                            foundRemotes.V = descendant
                        end
                    end
                end

                -- Fire the RemoteEvents one by one with a 1-second delay between each
                if foundRemotes.Z then
                    foundRemotes.Z:FireServer()
                    wait(0.5) -- Wait 1 second before firing the next
                else
                    warn("Skill Z RemoteEvent not found in tool: " .. equippedTool.Name)
                end

                if foundRemotes.X then
                    foundRemotes.X:FireServer()
                    wait(0.5) -- Wait 1 second before firing the next
                else
                    warn("Skill X RemoteEvent not found in tool: " .. equippedTool.Name)
                end

                if foundRemotes.C then
                    foundRemotes.C:FireServer()
                    wait(0.5) -- Wait 1 second before firing the next
                else
                    warn("Skill C RemoteEvent not found in tool: " .. equippedTool.Name)
                end

                if foundRemotes.V then
                    foundRemotes.V:FireServer()
                else
                    warn("Skill V RemoteEvent not found in tool: " .. equippedTool.Name)
                end
            else
                warn("No tool is currently equipped")
            end

            -- Handle delay input for the loop
            local delay = tonumber(delayTextBox.Text)
            if not delay or delay <= 0 then
                delay = 2 -- Default delay if input is invalid
                delayTextBox.Text = tostring(delay)
            end

            wait(delay) -- Wait after all remotes are fired before starting the next loop
        end
    else
        textButton4.Text = "Loop Remote Script : OFF"
    end
end

local loopCrateReal = false
local CollectLoop = false
local errorPrinted = false

local function toggleLoopCrate()
    loopCrateReal = not loopCrateReal
    CollectLoop = not CollectLoop
    errorPrinted = false  -- Reset the flag when toggling
    
    if loopCrateReal then
        textButton5.Text = "Auto Crates : ON"
        
        while CollectLoop do
            wait(0.1)
            
            for i, v in pairs(game:GetService("Workspace").Map.spawnPoints.Box:GetChildren()) do
                if (v:IsA("Model") or v:IsA("BasePart")) and v:FindFirstChild("Box") then
                    local box = v:FindFirstChild("Box")
                    
                    if box and box:FindFirstChild("Base") and box.Base:FindFirstChild("ProximityPrompt") then
                        local success, err = pcall(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = box.Base.CFrame * CFrame.new(0, 2, 0)
                            wait(1)
                            fireproximityprompt(box.Base.ProximityPrompt)
                            wait(0.5)
                        end)
                        
                        if not success and not errorPrinted then
                            warn("Failed to interact with the box: ", err)
                            errorPrinted = true  -- Set the flag to true after printing the error
                        end
                    end
                end
            end
        end
    else
        textButton5.Text = "Auto Crates : OFF"
    end
end

local function createNPC()
    dropdownOpen = not dropdownOpen
    if dropdownOpen then
        textButton6.Text = "Hide NPC List"
        dropdownFrame.Visible = true
        refreshDropdown()
    else
        textButton6.Text = "Open NPC List"
        dropdownFrame.Visible = false
    end
end

local aimOpen = false
local function hideAim()
    aimOpen = not aimOpen
    if aimOpen then
        textButton7.Text = "Hide Aimlock"
        Frame1.Visible = true
    else
        textButton7.Text = "Show Aimlock"
        Frame1.Visible = false
    end
end

local shiftOpen = false
local function hideShift()
    shiftOpen = not shiftOpen
    if shiftOpen then
        shiftlockButton.Text = "Hide Shiftlock"
        ImageButton.Visible = true
    else
        shiftlockButton.Text = "Show Shiftlock"
        ImageButton.Visible = false
    end
end

local editor = false
local function hideEditor()
    editor = not editor
    if editor then
        textButton8.Text = "Hide Player Editor"
        Frame2.Visible = true
    else
        textButton8.Text = "Open Player Editor"
        Frame2.Visible = false
    end
end

local function toggleButtonsVisibility()
    local visible = toggleButton.Text == "-"
    toggleButton.Text = visible and "+" or "-"
    textButton1.Visible = not visible
    destroyButton.Visible = not visible
    textButton2.Visible = not visible
    textButton3.Visible = not visible
    textButton4.Visible = not visible
    textButton5.Visible = not visible
    textButton6.Visible = not visible
    textButton7.Visible = not visible
    textButton8.Visible = not visible
    textButton6.Text = "Open NPC List"
    textButton8.Text = "Open Player Editor"
    dropdownOpen = false
    editor = false
    Frame2.Visible = false
    dropdownFrame.Visible = false
    delayTextBox.Visible = not visible
end

local function validateDelay()
    local delay = tonumber(delayTextBox.Text)
    if not delay or delay <= 0 then
        delayTextBox.Text = "2" -- Default delay if input is invalid
    end
end


-- Services
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")
local inputService = game:GetService("UserInputService")

-- ESP State
local espEnabled = false
local espElements = {} -- Store references to ESP elements

-- Function to create ESP for a player
local function createESP(p, cr)
    if not espEnabled then return end -- Prevent ESP creation if it's toggled off
    
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("Head")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = false
    text.Font = 3
    text.Size = 16.16
    text.Color = Color3.new(170, 170, 170)

    local connection
    local connection2
    local connection3

    local function removeESP()
        text.Visible = false
        text:Remove()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
        if connection3 then
            connection3:Disconnect()
            connection3 = nil
        end
    end

    connection2 = cr.AncestryChanged:Connect(function(_, parent)
        if not parent then
            removeESP()
        end
    end)

    connection3 = h.HealthChanged:Connect(function(v)
        if v <= 0 or h:GetState() == Enum.HumanoidStateType.Dead then
            removeESP()
        end
    end)

    connection = rs.RenderStepped:Connect(function()
        if not espEnabled then
            removeESP() -- Ensure the ESP is removed if disabled
            return
        end

        local hrp_pos, hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y - 27)
            text.Text = "[ " .. p.Name .. " ]"
            text.Visible = true
        else
            text.Visible = false
        end
        wait(0.073)
    end)

    espElements[p.UserId] = text -- Store the ESP element
end

-- Function to remove ESP for a player
local function removeESPForPlayer(p)
    if espElements[p.UserId] then
        espElements[p.UserId]:Remove()
        espElements[p.UserId] = nil
    end
end

-- Toggle ESP
local function toggleESP()
    espEnabled = not espEnabled
    if espEnabled then
        espButton.Text = "Name ESP : ON"
        -- Create ESP for all players
        for i, p in next, ps:GetPlayers() do
            if p ~= lp then
                if p.Character then
                    createESP(p, p.Character)
                end
                p.CharacterAdded:Connect(function(cr)
                    createESP(p, cr)
                end)
            end
        end
    else
        -- Remove ESP for all players
        espButton.Text = "Name ESP : OFF"
        for i, p in next, ps:GetPlayers() do
            if p ~= lp then
                removeESPForPlayer(p)
            end
        end
    end
end

-- Handle player added
local function playerAdded(p)
    if p.Character then
        if espEnabled then
            createESP(p, p.Character)
        end
    end
    p.CharacterAdded:Connect(function(cr)
        if espEnabled then
            createESP(p, cr)
        end
    end)
end

-- Connect player added event
for i, p in next, ps:GetPlayers() do
    if p ~= lp then
        playerAdded(p)
    end
end

-- connect events
ps.PlayerAdded:Connect(playerAdded)

-- Variables
local humanoid
local settings = {
    savedWalkSpeed = defaultWsPower,  -- Assuming defaultWsPower is defined elsewhere
    savedJumpPower = defaultJumpPower,  -- Assuming defaultJumpPower is defined elsewhere
    ignoreChanges = false,
    changedjp = false,
    changedws = false
}
local connections = {
    walkSpeed = nil,
    jumpPower = nil
}

-- Function to handle WalkSpeed focus lost
local function onLostWs()
    local text = wsButton.Text
    if tonumber(text) then
        -- Disable listeners during intentional changes
        settings.ignoreChanges = true

        local newWalkSpeed = tonumber(text)
        settings.savedWalkSpeed = tonumber(text)
        print("Setting new WalkSpeed: " .. newWalkSpeed)
        
        if humanoid then
            humanoid.WalkSpeed = newWalkSpeed
        end
        settings.changedws = true
        wait(0.1)
        wsButton.Text = "Walkspeed : " .. newWalkSpeed

        -- Re-enable listeners after changes
        settings.ignoreChanges = false
    else
        -- Handle invalid input
        settings.ignoreChanges = true
        wait(0.1)
        settings.changedws = false
        settings.savedWalkSpeed = defaultWsPower
        print("Invalid input for WalkSpeed, reverting to default: " .. defaultWsPower)
        
        if humanoid then
            humanoid.WalkSpeed = defaultWsPower
        end
        wsButton.Text = "Walkspeed : " .. tostring(defaultWsPower)
        settings.ignoreChanges = false
    end
end

-- Function to handle JumpPower focus lost
local function onLostJp()
    local text = jpButton.Text
    if tonumber(text) then
        -- Disable listeners during intentional changes
        settings.ignoreChanges = true

        local newJumpPower = tonumber(text)
        settings.savedJumpPower = tonumber(text)
        print("Setting new JumpPower: " .. newJumpPower)
        
        if humanoid then
            humanoid.JumpPower = newJumpPower
        end
        wait(0.1)
        settings.changedjp = true
        jpButton.Text = "JumpPower : " .. newJumpPower

        -- Re-enable listeners after changes
        settings.ignoreChanges = false
    else
        -- Handle invalid input
        settings.ignoreChanges = true
        wait(0.1)
        settings.changedjp = false
        settings.savedJumpPower = defaultJumpPower
        print("Invalid input for JumpPower, reverting to default: " .. defaultJumpPower)
        
        if humanoid then
            humanoid.JumpPower = defaultJumpPower
        end
        jpButton.Text = "JumpPower : " .. tostring(defaultJumpPower)
        settings.ignoreChanges = false
    end
end

-- Function to get humanoid safely, using WaitForChild to avoid timing issues
local function getHumanoid(character)
    local success, result = pcall(function()
        return character:WaitForChild("Humanoid", 10)  -- Wait up to 10 seconds for the Humanoid to load
    end)
        
    if success then
        humanoid = result
    else
        humanoid = nil  -- Ensure humanoid is nil if it failed
    end
end

-- Function to disconnect listeners
function disconnectListeners()
    if connections.walkSpeed then
        connections.walkSpeed:Disconnect()
        connections.walkSpeed = nil
    end
    if connections.jumpPower then
        connections.jumpPower:Disconnect()
        connections.jumpPower = nil
    end
end

-- Function to reapply WalkSpeed and JumpPower after respawn
local function reapplyValues()
    wait(1)  -- Wait for Roblox to finish resetting default values after respawn
    if humanoid then
        humanoid.WalkSpeed = settings.savedWalkSpeed
        humanoid.JumpPower = settings.savedJumpPower
    end
end

-- Function to set up listeners
local function setupListeners()
    -- First, disconnect any existing listeners
    disconnectListeners()

    -- WalkSpeed Change Listener
    connections.walkSpeed = humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if not settings.ignoreChanges and settings.changedws then
            if humanoid.WalkSpeed ~= settings.savedWalkSpeed then
                humanoid.WalkSpeed = settings.savedWalkSpeed
            end
        end
    end)

    -- JumpPower Change Listener
    connections.jumpPower = humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        if not settings.ignoreChanges and settings.changedjp then
            if humanoid.JumpPower ~= settings.savedJumpPower then
                humanoid.JumpPower = settings.savedJumpPower
            end
        end
    end)
end

-- Function to handle character added or respawned
local function onCharacterAddedFR(character)
    -- Try to get humanoid and wait if necessary
    getHumanoid(character)
    
    if humanoid then
        -- Reapply saved WalkSpeed and JumpPower values after humanoid is available
        
        settings.ignoreChanges = true -- Temporarily ignore changes while applying saved values
        humanoid.WalkSpeed = settings.savedWalkSpeed
        humanoid.JumpPower = settings.savedJumpPower
        
        wait(0.5)  -- Slightly longer wait to ensure changes are applied
        settings.ignoreChanges = false -- Re-enable change detection after applying values
        
        -- Set up listeners after humanoid is loaded
        setupListeners()

        -- Reapply values after respawn to handle Roblox resetting them
        reapplyValues()
    else
        warn("Humanoid could not be found; skipping WalkSpeed and JumpPower setup.")
    end
end

-- If the character is already present (e.g., when joining the game), initialize immediately
local respawn
if getgenv().AntiAfkExecuted then
    if player.Character then
    onCharacterAddedFR(player.Character)
end

respawn = player.CharacterAdded:Connect(onCharacterAddedFR)
else
    disconnectListeners()
    if respawn then
        respawn:Disconnect()
    end
end

local Clip = true
local function Nocliptoggle()
    Clip = not Clip
    
    if not Clip then
    noclipButton.Text = "Noclip : ON"    
    local Noclipping = nil
    local speaker = game.Players.LocalPlayer
        wait(0.1)
        local function NoclipLoop() 
            if Clip == false and speaker.Character then 
                for _, child in pairs(speaker.Character:GetDescendants()) do 
                    if child:IsA("BasePart") and child.CanCollide == true then 
                        child.CanCollide = false 
                    end 
                end 
            end 
        end 

        Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
    else
        noclipButton.Text = "Noclip : OFF"
        if Noclipping then 
            Noclipping:Disconnect() 
        end 
        Clip = true
    end
end

local inf = false
local infenabled = false
local function toggleinf()
    inf = not inf
    if inf then
        infenabled = true
        infjumpButton.Text = "Infinite Jump : ON"
        game:GetService("UserInputService").JumpRequest:connect(function()
            if infenabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    else
        infjumpButton.Text = "Infinite Jump : OFF"
        infenabled = false
    end
end

local function tpClick()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Teleport Tool"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end


local countdownTime = 3
local isConfirming = false
local countdownActive = false
local countdown

-- Function to reset the button back to its original state
local function resetButton()
    destroyButton.Text = "Destroy GUI"
    isConfirming = false
    countdownActive = false
    if countdown then
        countdown:Disconnect() -- Stop the countdown if it is running
    end
end

local function startCountdown()
    isConfirming = true
    local remainingTime = countdownTime
    destroyButton.Text = "Are you sure? (" .. remainingTime .. ")"

    countdown = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
        if countdownActive then
            remainingTime = remainingTime - deltaTime

            -- Update the button text with the remaining time
            destroyButton.Text = "Are you sure? (" .. math.ceil(remainingTime) .. ")"

            if remainingTime <= 0 then
                -- If the countdown reaches 0, reset the button
                resetButton()
            end
        end
    end)
end

-- Button press function
destroyButton.MouseButton1Click:Connect(function()
    if not isConfirming then
        -- Start the countdown if not already confirming
        countdownActive = true
        startCountdown()
    else
        -- If confirming and the button is pressed again, destroy the GUI
        screenGui:Destroy()
        disconnectListeners()
        getgenv().AutoRespawn = false
        player.CharacterAdded:Disconnect()
        npcFolder1.DescendantAdded:Disconnect()
        npcFolder1.DescendantRemoving:Disconnect()
        getgenv().AntiAfkExecuted = false
    end
end)
    
-- Connect event
flyButton.MouseButton1Click:Connect(toggleFly)
freezeButton.MouseButton1Click:Connect(togglePlayerFreeze)
freezenpcButton.MouseButton1Click:Connect(toggleNpcFreeze)
respawnButton.MouseButton1Click:Connect(ToggleRespawn)
modeButton.MouseButton1Click:Connect(toggleGodMode)
invisButton.MouseButton1Click:Connect(toggleVisibility)
looptpButton.MouseButton1Click:Connect(startTeleportLoop)
antiButton.MouseButton1Click:Connect(toggleAntiFling)
voidButton.MouseButton1Click:Connect(toggleAntiVoid)
fallButton.MouseButton1Click:Connect(toggleNoFallDamage)
shiftlockButton.MouseButton1Click:Connect(hideShift)
espButton.MouseButton1Click:Connect(toggleESP)
tpButton.MouseButton1Click:Connect(tpClick)
infjumpButton.MouseButton1Click:Connect(toggleinf)
noclipButton.MouseButton1Click:Connect(Nocliptoggle)
jpButton.FocusLost:Connect(onLostJp)
wsButton.FocusLost:Connect(onLostWs)
delayTextBox.FocusLost:Connect(validateDelay)
textButton1.MouseButton1Click:Connect(executeKillScript)
textButton2.MouseButton1Click:Connect(toggleLoopKill)
textButton3.MouseButton1Click:Connect(toggleAutoEquip)
textButton4.MouseButton1Click:Connect(toggleLoopRemote)
textButton5.MouseButton1Click:Connect(toggleLoopCrate)
textButton6.MouseButton1Click:Connect(createNPC)
textButton7.MouseButton1Click:Connect(hideAim)
textButton8.MouseButton1Click:Connect(hideEditor)
toggleButton.MouseButton1Click:Connect(toggleButtonsVisibility)

    
-- Create the GUI components
local uselesslabelone = Instance.new("TextLabel")
local timerlabel = Instance.new("TextLabel")
local uselesslabeltwo = Instance.new("TextLabel")
local fpslabel = Instance.new("TextLabel")
local uselesslabelthree = Instance.new("TextLabel")
local pinglabel = Instance.new("TextLabel")

-- Useless labels (placeholders)
uselesslabelone.Name = "uselesslabelone"
uselesslabelone.Parent = screenGui
uselesslabelone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelone.BackgroundTransparency = 1.000
uselesslabelone.Position = UDim2.new(0.485, 0, 1, -22)
uselesslabelone.Size = UDim2.new(0, 95, 0, 24)
uselesslabelone.Font = Enum.Font.Arcade
uselesslabelone.Text = "UNIVERSAL KILL SCRIPT BY: AVALANXE#6878"
uselesslabelone.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelone.TextTransparency = 0.5
uselesslabelone.TextSize = 13
uselesslabelone.ZIndex = 0

timerlabel.Name = "timerlabel"
timerlabel.Parent = screenGui
timerlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
timerlabel.BackgroundTransparency = 1.000
timerlabel.Position = UDim2.new(0.25, 0, 1, -22)
timerlabel.Size = UDim2.new(0, 60, 0, 24)
timerlabel.Font = Enum.Font.Arcade
timerlabel.Text = "0:0:0"
timerlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timerlabel.TextSize = 13
timerlabel.TextTransparency = 0.5
timerlabel.ZIndex = 0

uselesslabeltwo.Name = "uselesslabeltwo"
uselesslabeltwo.Parent = screenGui
uselesslabeltwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.BackgroundTransparency = 1.000
uselesslabeltwo.Position = UDim2.new(0.013, 0, 1, -22)
uselesslabeltwo.Size = UDim2.new(0, 29, 0, 24)
uselesslabeltwo.Font = Enum.Font.Arcade
uselesslabeltwo.Text = "PING: "
uselesslabeltwo.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabeltwo.TextSize = 13
uselesslabeltwo.TextTransparency = 0.5
uselesslabeltwo.ZIndex = 0

fpslabel.Name = "fpslabel"
fpslabel.Parent = screenGui
fpslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.BackgroundTransparency = 1.000
fpslabel.Position = UDim2.new(1, -35, 1, -22)
fpslabel.Size = UDim2.new(0, 55, 0, 24)
fpslabel.Font = Enum.Font.Arcade
fpslabel.Text = "hmph"
fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpslabel.TextSize = 13
fpslabel.TextTransparency = 0.5
fpslabel.ZIndex = 0

uselesslabelthree.Name = "uselesslabelthree"
uselesslabelthree.Parent = screenGui
uselesslabelthree.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.BackgroundTransparency = 1.000
uselesslabelthree.Position = UDim2.new(1, -43, 1, -22)
uselesslabelthree.Size = UDim2.new(0, 26, 0, 24)
uselesslabelthree.Font = Enum.Font.Arcade
uselesslabelthree.Text = "FPS: "
uselesslabelthree.TextColor3 = Color3.fromRGB(255, 255, 255)
uselesslabelthree.TextSize = 13
uselesslabelthree.TextTransparency = 0.5
uselesslabelthree.ZIndex = 0

pinglabel.Name = "pinglabel"
pinglabel.Parent = screenGui
pinglabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.BackgroundTransparency = 1.000
pinglabel.Position = UDim2.new(0.038, 0, 1, -22)
pinglabel.Size = UDim2.new(0, 55, 0, 24)
pinglabel.Font = Enum.Font.Arcade
pinglabel.Text = "wawa"
pinglabel.TextColor3 = Color3.fromRGB(255, 255, 255)
pinglabel.TextSize = 13
pinglabel.TextWrapped = true
pinglabel.TextTransparency = 0.5
pinglabel.ZIndex = 0

-- Anti-AFK functionality
local virtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
end)

-- FPS label update function
local fpsLabel = fpslabel
local RunService = game:GetService("RunService")
local sec
local FPS = {}

local function updateFPS()
    local fr = tick()
    for i = #FPS, 1, -1 do
        FPS[i + 1] = (FPS[i] >= fr - 1) and FPS[i] or nil
    end
    FPS[1] = fr
    local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
    fps = math.floor(fps)
    fpsLabel.Text = tostring(fps)

    -- Change text color based on FPS value
    if fps < 15 then
        fpsLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red color
    else
        fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White color
    end
end

sec = tick()
RunService.RenderStepped:Connect(updateFPS)

-- Ping label update function
spawn(function()
    repeat
        wait(1)
        local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
        ping = math.floor(ping)
        pinglabel.Text = tostring(ping)

        -- Change text color based on Ping value
        if ping > 200 then
            pinglabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red color
        else
            pinglabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White color
        end
    until pinglabel == nil
end)

-- Timer functionality
local seconds = 0
local minutes = 0
local hours = 0
getgenv().zamanbaslaticisi = true

while true do
    if getgenv().zamanbaslaticisi then
        seconds = seconds + 1
        wait(1)
    end

    if seconds >= 60 then
        seconds = 0
        minutes = minutes + 1
    end

    if minutes >= 60 then
        minutes = 0
        hours = hours + 1
    end

    timerlabel.Text = string.format("%d:%d:%d", hours, minutes, seconds)
end