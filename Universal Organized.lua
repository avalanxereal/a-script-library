local vars = {
    screenGui = Instance.new("ScreenGui"),
    player = game:GetService("Players").LocalPlayer,
    
    LockButton = Instance.new("ImageButton"),
    btnIcon = Instance.new("ImageLabel"),
    buttonEffect = Instance.new("UICorner"),
    buttonStroke = Instance.new("UIStroke"),
    textButton1 = Instance.new("TextButton"),
    destroyButton = Instance.new("TextButton"),
    textButton2 = Instance.new("TextButton"),
    spectateButton = Instance.new("TextButton"),
    textButton3 = Instance.new("TextButton"),
    textButton4 = Instance.new("TextButton"),
    textButton5 = Instance.new("TextButton"),
    textButton6 = Instance.new("TextButton"),
    textButton7 = Instance.new("TextButton"),
    textButton8 = Instance.new("TextButton"),
    uiListLayout = Instance.new("UIListLayout"),
    Frame2 = Instance.new("ScrollingFrame"),
    selectWeaponFrame = Instance.new("ScrollingFrame"),
    Frame3 = Instance.new("Frame"),
    uiButton = Instance.new("TextButton"),
    voidButton = Instance.new("TextButton"),
    wsButton = Instance.new("TextBox"),
    jpButton = Instance.new("TextBox"),
    noproximityButton = Instance.new("TextButton"),

    defaultJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
    defaultWsPower = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
    
    stickButton = nil,
    thumbButton = nil,
    thumbFrame = nil,
    jumpButton = nil,
    touchGui = nil,
    touchFrame = nil,
    
    countdownTime = 3,
    isActivating = false,
    isToggledUI = false,
    isConfirmed = false,
    countdownActive = false,
    
    Players = game:GetService("Players"),
    Player = game:GetService("Players").LocalPlayer,
    Wait = task.wait,
    connectionCF = nil,
    connectionRoot = nil,
    connectionCharacterAdded = nil,
    connectionTeleportLoop = nil,
    AntiCFrame = false,
    selectedTools = nil,
    loopAttack = nil,
    defaultJpSize = nil,
    defaultJpPos = nil,
    defaultTsSize = nil,
    defaultTsPos = nil,
    defaultControlSize = nil,
    defaultControlPos = nil,
    defaultInnerSize = nil,
    defaultInnerPos = nil,
    connectionpart = nil,
    
    jpTween = nil,
    connectionUI = nil,
    tsTween = nil,
    outerTween = nil,
    stickTween = nil,
}

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
    wait(0.1)
end

local function ClonedService(name)
    local Service = (game.GetService);
	local Reference = (cloneref) or function(reference) return reference end
	return Reference(Service(game, name));
end

local countdown

-- Create the main ScreenGui
vars.screenGui.Parent = game:GetService("CoreGui")
vars.screenGui.Name = "youshalldie"
vars.screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vars.screenGui.ResetOnSpawn = false
vars.screenGui.DisplayOrder = 69

if getgenv().AntiAfkExecuted and vars.screenGui then
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
        Duration = 30;
    })


-- Create the buttons
vars.LockButton.Name = "vars.LockButton"
vars.LockButton.Visible = false
vars.LockButton.Parent = vars.screenGui
vars.LockButton.AnchorPoint = Vector2.new(0.5, 0.5)
vars.LockButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
vars.LockButton.BackgroundTransparency = 0.3
vars.LockButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
vars.LockButton.BorderSizePixel = 0
vars.LockButton.Position = UDim2.new(0.785148501, 0, 0.865914762, 0)
vars.LockButton.Size = UDim2.new(0, 65, 0, 65)
vars.LockButton.ZIndex = 3
vars.LockButton.Image = ""
vars.LockButton.AutoButtonColor = true

vars.btnIcon.Name = "btnIcon"
vars.btnIcon.Parent = vars.LockButton
vars.btnIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vars.btnIcon.BackgroundTransparency = 1
vars.btnIcon.Position = UDim2.new(0.15, 0, 0.15, 0)
vars.btnIcon.Size = UDim2.new(0.7, 0, 0.7, 0)
vars.btnIcon.ZIndex = 3
vars.btnIcon.Image = "rbxasset://textures/ui/mouseLock_off.png"
vars.btnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
vars.btnIcon.ScaleType = Enum.ScaleType.Fit

vars.buttonEffect.Parent = vars.LockButton
vars.buttonEffect.CornerRadius = UDim.new(1, 0)

vars.buttonStroke.Parent = vars.LockButton
vars.buttonStroke.Color = Color3.fromRGB(0, 133, 199)
vars.buttonStroke.Thickness = 2
vars.buttonStroke.Transparency = 0.3

vars.textButton1.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton1.Position = UDim2.new(0, 10, 1, -120) -- Adjusted position
vars.textButton1.Text = "Kill Every NPC"
vars.textButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton1.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton1.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton1.Font = Enum.Font.Gotham
vars.textButton1.TextSize = 14
vars.textButton1.Parent = vars.screenGui

vars.destroyButton.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.destroyButton.Position = UDim2.new(0, 10, 1, -270) -- Adjusted position
vars.destroyButton.Text = "Destroy GUI"
vars.destroyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.destroyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.destroyButton.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.destroyButton.Font = Enum.Font.Gotham
vars.destroyButton.TextSize = 14
vars.destroyButton.Parent = vars.screenGui

vars.textButton2.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton2.Position = UDim2.new(0, 10, 1, -210) -- Position below the first button
vars.textButton2.Text = "Loop Kill Every NPC : OFF"
vars.textButton2.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton2.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton2.Font = Enum.Font.Gotham
vars.textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton2.TextSize = 14
vars.textButton2.Parent = vars.screenGui

vars.textButton3.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton3.Position = UDim2.new(0, 10, 1, -180) -- Position below the second button
vars.textButton3.Text = "Show Weapon List"
vars.textButton3.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton3.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton3.Font = Enum.Font.Gotham
vars.textButton3.TextSize = 14
vars.textButton3.Parent = vars.screenGui

vars.textButton4.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton4.Position = UDim2.new(0, 10, 1, -150) -- Position below the third button
vars.textButton4.Text = "Notify Spawned NPC : OFF"
vars.textButton4.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton4.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton4.Font = Enum.Font.Gotham
vars.textButton4.TextSize = 14
vars.textButton4.Parent = vars.screenGui

vars.textButton5.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton5.Position = UDim2.new(0, 10, 1, -240) -- Adjusted position
vars.textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton5.Text = "Auto Crates : OFF"
vars.textButton5.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton5.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton5.Font = Enum.Font.Gotham
vars.textButton5.TextSize = 14
vars.textButton5.Parent = vars.screenGui

vars.textButton6.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton6.Position = UDim2.new(0, 175, 1, -270) -- Adjusted position
vars.textButton6.Text = "Open NPC List"
vars.textButton6.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton6.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton6.Font = Enum.Font.Gotham
vars.textButton6.TextSize = 14
vars.textButton6.Parent = vars.screenGui

vars.textButton7.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton7.Position = UDim2.new(0, 175, 1, -240) -- Adjusted position
vars.textButton7.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton7.Text = "Show Aimlock"
vars.textButton7.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton7.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton7.Font = Enum.Font.Gotham
vars.textButton7.TextSize = 14
vars.textButton7.Parent = vars.screenGui

vars.textButton8.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
vars.textButton8.Position = UDim2.new(0, 175, 1, -210) -- Adjusted position
vars.textButton8.Text = "Open Player Editor"
vars.textButton8.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.textButton8.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.textButton8.TextColor3 = Color3.new(1, 1, 1) -- White text color
vars.textButton8.Font = Enum.Font.Gotham
vars.textButton8.TextSize = 14
vars.textButton8.Parent = vars.screenGui

vars.Frame2.Parent = vars.screenGui
vars.Frame2.Name = "playereditor"
vars.Frame2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
vars.Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.Frame2.BorderSizePixel = 1
vars.Frame2.Position = UDim2.new(0, 175, 1, -175)
vars.Frame2.Size = UDim2.new(0, 161, 0, 100)
vars.Frame2.ElasticBehavior = "Never"
vars.Frame2.ClipsDescendants = true
vars.Frame2.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
vars.Frame2.CanvasSize = UDim2.new(0, 0, 0, 525)
vars.Frame2.ScrollBarThickness = 1
vars.Frame2.ScrollingDirection = Enum.ScrollingDirection.Y
vars.Frame2.Visible = false

vars.selectWeaponFrame.Parent = vars.screenGui
vars.selectWeaponFrame.Name = "selectweapon"
vars.selectWeaponFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
vars.selectWeaponFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.selectWeaponFrame.BorderSizePixel = 1
vars.selectWeaponFrame.Position = UDim2.new(0, 340, 1, -270)
vars.selectWeaponFrame.Size = UDim2.new(0, 161, 0, 139)
vars.selectWeaponFrame.ElasticBehavior = "Never"
vars.selectWeaponFrame.ClipsDescendants = true
vars.selectWeaponFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
vars.selectWeaponFrame.CanvasSize = UDim2.new(0, 0, 0, 25)
vars.selectWeaponFrame.ScrollBarThickness = 1
vars.selectWeaponFrame.ScrollingDirection = Enum.ScrollingDirection.Y
vars.selectWeaponFrame.Visible = false

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.Parent = vars.Frame2

local uiListLay = Instance.new("UIListLayout")
uiListLay.Parent = vars.selectWeaponFrame
uiListLay.Padding = UDim.new(0, 3)

local toggleOnButton = Instance.new("TextButton")
toggleOnButton.Size = UDim2.new(0, 160, 0, 25)
toggleOnButton.BorderColor3 = Color3.new(0, 0, 0)
toggleOnButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
toggleOnButton.Text = "Auto Attack : OFF"
toggleOnButton.Name = "autoattack"
toggleOnButton.TextSize = 14
toggleOnButton.TextColor3 = Color3.new(255, 255, 255)
toggleOnButton.Font = Enum.Font.Gotham
toggleOnButton.Parent = vars.Frame2

vars.wsButton.Size = UDim2.new(0, 160, 0, 25)
vars.wsButton.BorderColor3 = Color3.new(0, 0, 0)
vars.wsButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.wsButton.Text = "Walkspeed : " .. tostring(vars.defaultWsPower)
vars.wsButton.PlaceholderText = "Set Walkspeed Value"
vars.wsButton.Name = "Walkspeed"
vars.wsButton.TextSize = 14
vars.wsButton.TextColor3 = Color3.new(255, 255, 255)
vars.wsButton.Font = Enum.Font.Gotham
vars.wsButton.Parent = vars.Frame2

vars.jpButton.Size = UDim2.new(0, 160, 0, 25)
vars.jpButton.BorderColor3 = Color3.new(0, 0, 0)
vars.jpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.jpButton.Text = "Jumppower : " .. tostring(vars.defaultJumpPower)
vars.jpButton.PlaceholderText = "Set Jumppower Value"
vars.jpButton.Name = "Jumppower"
vars.jpButton.TextSize = 14
vars.jpButton.TextColor3 = Color3.new(255, 255, 255)
vars.jpButton.Font = Enum.Font.Gotham
vars.jpButton.Parent = vars.Frame2

local noclipButton = Instance.new("TextButton")
noclipButton.Size = UDim2.new(0, 160, 0, 25)
noclipButton.BorderColor3 = Color3.new(0, 0, 0)
noclipButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
noclipButton.Text = "Noclip : OFF"
noclipButton.Name = "Noclip"
noclipButton.TextSize = 14
noclipButton.TextColor3 = Color3.new(255, 255, 255)
noclipButton.Font = Enum.Font.Gotham
noclipButton.Parent = vars.Frame2

local freezeButton = Instance.new("TextButton")
freezeButton.Size = UDim2.new(0, 160, 0, 25)
freezeButton.BorderColor3 = Color3.new(0, 0, 0)
freezeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
freezeButton.Text = "Freeze : OFF"
freezeButton.Name = "freeze"
freezeButton.TextSize = 14
freezeButton.TextColor3 = Color3.new(255, 255, 255)
freezeButton.Font = Enum.Font.Gotham
freezeButton.Parent = vars.Frame2

local freezenpcButton = Instance.new("TextButton")
freezenpcButton.Size = UDim2.new(0, 160, 0, 25)
freezenpcButton.BorderColor3 = Color3.new(0, 0, 0)
freezenpcButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
freezenpcButton.Text = "Freeze NPC : OFF"
freezenpcButton.Name = "freezenpc"
freezenpcButton.TextSize = 14
freezenpcButton.TextColor3 = Color3.new(255, 255, 255)
freezenpcButton.Font = Enum.Font.Gotham
freezenpcButton.Parent = vars.Frame2

local invisButton = Instance.new("TextButton")
invisButton.Size = UDim2.new(0, 160, 0, 25)
invisButton.BorderColor3 = Color3.new(0, 0, 0)
invisButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
invisButton.Text = "Invisible : OFF"
invisButton.Name = "Invis"
invisButton.TextSize = 14
invisButton.TextColor3 = Color3.new(255, 255, 255)
invisButton.Font = Enum.Font.Gotham
invisButton.Parent = vars.Frame2

vars.voidButton.Size = UDim2.new(0, 160, 0, 25)
vars.voidButton.BorderColor3 = Color3.new(0, 0, 0)
vars.voidButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.voidButton.Text = "Antivoid : OFF"
vars.voidButton.Name = "AntiVoid"
vars.voidButton.TextSize = 14
vars.voidButton.TextColor3 = Color3.new(255, 255, 255)
vars.voidButton.Font = Enum.Font.Gotham
vars.voidButton.Parent = vars.Frame2

local antiButton = Instance.new("TextButton")
antiButton.Size = UDim2.new(0, 160, 0, 25)
antiButton.BorderColor3 = Color3.new(0, 0, 0)
antiButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
antiButton.Text = "Anti Fling : OFF"
antiButton.Name = "antifling"
antiButton.TextSize = 14
antiButton.TextColor3 = Color3.new(255, 255, 255)
antiButton.Font = Enum.Font.Gotham
antiButton.Parent = vars.Frame2

local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 160, 0, 25)
flyButton.BorderColor3 = Color3.new(0, 0, 0)
flyButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
flyButton.Text = "Fly : OFF"
flyButton.Name = "fly"
flyButton.TextSize = 14
flyButton.TextColor3 = Color3.new(255, 255, 255)
flyButton.Font = Enum.Font.Gotham
flyButton.Parent = vars.Frame2

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
modeButton.Parent = vars.Frame2

local fallButton = Instance.new("TextButton")
fallButton.Size = UDim2.new(0, 160, 0, 25)
fallButton.BorderColor3 = Color3.new(0, 0, 0)
fallButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
fallButton.Text = "No Fall Damage : OFF"
fallButton.Name = "fall"
fallButton.TextSize = 14
fallButton.TextColor3 = Color3.new(255, 255, 255)
fallButton.Font = Enum.Font.Gotham
fallButton.Parent = vars.Frame2

local looptpButton = Instance.new("TextButton")
looptpButton.Size = UDim2.new(0, 160, 0, 25)
looptpButton.BorderColor3 = Color3.new(0, 0, 0)
looptpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
looptpButton.Text = "Loop Teleport NPC : OFF"
looptpButton.Name = "looptp"
looptpButton.TextSize = 14
looptpButton.TextColor3 = Color3.new(255, 255, 255)
looptpButton.Font = Enum.Font.Gotham
looptpButton.Parent = vars.Frame2

local respawnButton = Instance.new("TextButton")
respawnButton.Size = UDim2.new(0, 160, 0, 25)
respawnButton.BorderColor3 = Color3.new(0, 0, 0)
respawnButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
respawnButton.Text = "Auto Respawn : OFF"
respawnButton.Name = "respawn"
respawnButton.TextSize = 14
respawnButton.TextColor3 = Color3.new(255, 255, 255)
respawnButton.Font = Enum.Font.Gotham
respawnButton.Parent = vars.Frame2

local tpButton = Instance.new("TextButton")
tpButton.Size = UDim2.new(0, 160, 0, 25)
tpButton.BorderColor3 = Color3.new(0, 0, 0)
tpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
tpButton.Text = "Click to Teleport"
tpButton.Name = "clicktotp"
tpButton.TextSize = 14
tpButton.TextColor3 = Color3.new(255, 255, 255)
tpButton.Font = Enum.Font.Gotham
tpButton.Parent = vars.Frame2

local infjumpButton = Instance.new("TextButton")
infjumpButton.Size = UDim2.new(0, 160, 0, 25)
infjumpButton.BorderColor3 = Color3.new(0, 0, 0)
infjumpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
infjumpButton.Text = "Infinite Jump : OFF"
infjumpButton.Name = "InfJump"
infjumpButton.TextSize = 14
infjumpButton.TextColor3 = Color3.new(255, 255, 255)
infjumpButton.Font = Enum.Font.Gotham
infjumpButton.Parent = vars.Frame2

local shiftlockButton = Instance.new("TextButton")
shiftlockButton.Size = UDim2.new(0, 160, 0, 25)
shiftlockButton.BorderColor3 = Color3.new(0, 0, 0)
shiftlockButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
shiftlockButton.Text = "Show Shiftlock"
shiftlockButton.Name = "ShiftlockButton"
shiftlockButton.TextSize = 14
shiftlockButton.TextColor3 = Color3.new(255, 255, 255)
shiftlockButton.Font = Enum.Font.Gotham
shiftlockButton.Parent = vars.Frame2

local espButton = Instance.new("TextButton")
espButton.Size = UDim2.new(0, 160, 0, 25)
espButton.BorderColor3 = Color3.new(0, 0, 0)
espButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
espButton.Text = "Name ESP : OFF"
espButton.Name = "ESP"
espButton.TextSize = 14
espButton.TextColor3 = Color3.new(255, 255, 255)
espButton.Font = Enum.Font.Gotham
espButton.Parent = vars.Frame2

local noCFButton = Instance.new("TextButton")
noCFButton.Size = UDim2.new(0, 160, 0, 25)
noCFButton.BorderColor3 = Color3.new(0, 0, 0)
noCFButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
noCFButton.Text = "Anti CFrame : OFF"
noCFButton.Name = "CFrame"
noCFButton.TextSize = 14
noCFButton.TextColor3 = Color3.new(255, 255, 255)
noCFButton.Font = Enum.Font.Gotham
noCFButton.Parent = vars.Frame2

vars.noproximityButton.Size = UDim2.new(0, 160, 0, 25)
vars.noproximityButton.BorderColor3 = Color3.new(0, 0, 0)
vars.noproximityButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.noproximityButton.Text = "No Proximity Delay"
vars.noproximityButton.Name = "Proximity"
vars.noproximityButton.TextSize = 14
vars.noproximityButton.TextColor3 = Color3.new(255, 255, 255)
vars.noproximityButton.Font = Enum.Font.Gotham
vars.noproximityButton.Parent = vars.Frame2

vars.uiButton.Size = UDim2.new(0, 160, 0, 25)
vars.uiButton.BorderColor3 = Color3.new(0, 0, 0)
vars.uiButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
vars.uiButton.Text = "Bigger Mobile UI : OFF"
vars.uiButton.Name = "Size"
vars.uiButton.TextSize = 14
vars.uiButton.TextColor3 = Color3.new(255, 255, 255)
vars.uiButton.Font = Enum.Font.Gotham
vars.uiButton.Parent = vars.Frame2

-- function
vars.defaultJpSize = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame.JumpButton.Size
vars.defaultJpPos = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame.JumpButton.Position
vars.defaultTsSize = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").Size
vars.defaultTsPos = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").Position
vars.defaultControlSize = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").OuterImage.Size
vars.defaultControlPos = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").OuterImage.Position
vars.defaultInnerSize = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").StickImage.Size
vars.defaultInnerPos = vars.player:WaitForChild("PlayerGui").TouchGui.TouchControlFrame:FindFirstChild("ThumbstickFrame").StickImage.Position
local playerGui = vars.player:WaitForChild("PlayerGui")  

function updateButtonUI()
    vars.uiButton.Text = "Bigger Mobile UI : ON"
    game.StarterGui:SetCore("SendNotification", {
        Title = "WARNING";
        Text = "TOUCH CONTROL CLASSIC ONLY";
        Duration = 3;
    })
    
    vars.touchGui = playerGui:WaitForChild("TouchGui")  
    vars.touchFrame = vars.touchGui:FindFirstChild("TouchControlFrame")  
    vars.jumpButton = vars.touchFrame:FindFirstChild("JumpButton")  
    vars.thumbFrame = vars.touchFrame:FindFirstChild("ThumbstickFrame")  
    vars.thumbButton = vars.thumbFrame:FindFirstChild("OuterImage")  
    vars.stickButton = vars.thumbFrame:FindFirstChild("StickImage")  

      if vars.thumbFrame then  
            vars.thumbFrame.Size = UDim2.new(0, 90, 0, 90) -- Increased size for a more prominent circle  
            vars.thumbFrame.Position = UDim2.new(0, 30, 1, -110)  
        end  
          
      if vars.jumpButton then  
            vars.jumpButton.Size = UDim2.new(0, 85, 0, 85) -- Increased size for a more prominent circle  
            vars.jumpButton.Position = UDim2.new(1, -110, 1, -95)  
        end
    
      if vars.thumbButton then  
            vars.thumbButton.Size = UDim2.new(0, 100, 0, 100)-- Increased size for a more prominent circle  
        end  
          
      if vars.stickButton then  
            vars.stickButton.Size = UDim2.new(0, 45, 0, 45) -- Increased size for a more prominent circle  
        end
end

function toggleSize()
vars.isToggledUI = not vars.isToggledUI
if vars.isToggledUI then
    -- var
 updateButtonUI()
    
    if not vars.connectionUI then
        vars.connectionUI = vars.Player.CharacterAdded:Connect(function()
			    if vars.IsToggledUI then
				    task.spawn(updateButtonUI)
				end
			end)
    end
    
    -- loop position
while vars.isToggledUI do  
local playerGui = vars.player:WaitForChild("PlayerGui")  
    vars.touchGui = playerGui:WaitForChild("TouchGui")  
    vars.touchFrame = vars.touchGui:FindFirstChild("TouchControlFrame")  
    vars.jumpButton = vars.touchFrame:FindFirstChild("JumpButton")  
    vars.thumbFrame = vars.touchFrame:FindFirstChild("ThumbstickFrame")  
    
        if vars.thumbFrame then  
            vars.thumbFrame.Position = UDim2.new(0, 30, 1, -110)  
        end  
          
        if vars.jumpButton then  
            vars.jumpButton.Position = UDim2.new(1, -110, 1, -95)  
        end
    
    task.wait()  
end
else  
    vars.uiButton.Text = "Bigger Mobile UI : OFF"  
    if vars.connectionUI then
        vars.connectionUI:Disconnect()
        vars.connectionUI = nil
    end
    
    if vars.thumbFrame then  
            vars.thumbFrame.Size = vars.defaultTsSize  -- Increased size for a more prominent circle  
            vars.thumbFrame.Position = vars.defaultTsPos  
        end  
          
        if vars.jumpButton then  
            vars.jumpButton.Size = vars.defaultJpSize -- Increased size for a more prominent circle  
            vars.jumpButton.Position = vars.defaultJpPos  
        end  
          
        if vars.thumbButton then  
            vars.thumbButton.Size = vars.defaultControlSize -- Increased size for a more prominent circle  
            vars.thumbButton.Position = vars.defaultControlPos  
        end  
          
        if vars.stickButton then  
            vars.stickButton.Size = vars.defaultInnerSize --cIncreased size for a more prominent circle  
            vars.stickButton.Position = vars.defaultInnerPos
        end  
end
end


function toggleProximity()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    	if v:IsA("ProximityPrompt") then
      		v["HoldDuration"] = 0
	   end
end
    
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
    v["HoldDuration"] = 0
    end)
end

vars.Frame3.Parent = vars.screenGui
vars.Frame3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
vars.Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
vars.Frame3.BorderSizePixel = 0
vars.Frame3.Position = UDim2.new(0.88, 0, 0.05, 0)
vars.Frame3.Size = UDim2.new(0, 80, 0, 40)
vars.Frame3.Active = true
vars.Frame3.Draggable = false
vars.Frame3.Visible = false
vars.Frame3.ZIndex = 1

local TextButton1 = Instance.new("TextButton")
TextButton1.Parent = vars.Frame3
TextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.BackgroundTransparency = 5.000
TextButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.BorderSizePixel = 0
TextButton1.Position = UDim2.new(0, -45, 0, -2)
TextButton1.Size = UDim2.new(0, 170, 0, 44)
TextButton1.Font = Enum.Font.SourceSansSemibold
TextButton1.Text = "Toggle Npclock"
TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.TextSize = 13.000
TextButton1.ZIndex = 1
TextButton1.TextWrapped = true

local UICorner1 = Instance.new("UICorner")
UICorner1.Parent = vars.Frame3

local highlight
local targetBillboard
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local NpclockState = false
local Prediction = 0.16
local HorizontalPrediction = 0.17
local VerticalPrediction = 0.14
local XPrediction = 8.381
local YPrediction = 7.282

function applyTargetVisuals(model)
    -- Cleanup old visuals
    if highlight then highlight:Destroy() end
    if targetBillboard then targetBillboard:Destroy() end

    -- Highlight
    highlight = Instance.new("Highlight")
    highlight.Name = "_CamLockHighlight"
    highlight.FillColor = Color3.fromRGB(0, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(200, 200, 200)
    highlight.OutlineTransparency = 0
    highlight.FillTransparency = 0.5
    highlight.Adornee = model
    highlight.Parent = model

    -- Billboard [TARGET] text
    local hrp = model:FindFirstChild("HumanoidRootPart") or model.PrimaryPart
    if hrp then
        targetBillboard = Instance.new("BillboardGui")
        targetBillboard.Name = "_CamLockBillboard"
        targetBillboard.Size = UDim2.new(0, 100, 0, 40)
        targetBillboard.Adornee = hrp
        targetBillboard.StudsOffset = Vector3.new(0, 3, 0)
        targetBillboard.AlwaysOnTop = true
        targetBillboard.Parent = hrp

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = "[TARGET]"
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextScaled = true
        label.Font = Enum.Font.GothamBold
        label.Parent = targetBillboard
    end
end

function FindNearestEnemy()
    local ClosestDistance, ClosestTarget = math.huge, nil
    local CenterPosition = Vector2.new(
        game:GetService("GuiService"):GetScreenResolution().X / 2,
        game:GetService("GuiService"):GetScreenResolution().Y / 2
    )

    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj:FindFirstChildOfClass("Humanoid") and Players:GetPlayerFromCharacter(obj) == nil then
            local humanoid = obj:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 then
                local targetPos = nil

                local hrp = obj:FindFirstChild("HumanoidRootPart")
                if hrp then
                    targetPos = hrp.Position
                elseif obj.PrimaryPart then
                    targetPos = obj.PrimaryPart.Position
                else
                    pcall(function()
                        targetPos = obj:GetModelCFrame().Position
                    end)
                end

                if targetPos then
                    local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(targetPos)
                    if onScreen then
                        local dist = (CenterPosition - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
                        if dist < ClosestDistance then
                            ClosestDistance = dist
                            ClosestTarget = hrp or obj
                        end
                    end
                end
            end
        end
    end

    return ClosestTarget
end

local enemy = nil
-- Function to aim the camera at the nearest enemy's HumanoidRootPart
RunService.Heartbeat:Connect(function()
    if NpclockState == true then
        if enemy and enemy.Parent then
            local model = enemy.Parent
            local humanoid = model:FindFirstChildOfClass("Humanoid")

            if humanoid and humanoid.Health > 0 then
                -- Still alive, keep locking
                local lookPos = enemy.Position
                pcall(function()
                    lookPos = enemy.Position + (enemy.Velocity or Vector3.zero) * Prediction
                end)
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, lookPos)
            else
                -- Target died, reset camlock
                NpclockState = false
                enemy = nil
                
                TextButton1.Text = "Toggle Npclock"
                TextButton1.TextSize = 13
                if highlight then highlight:Destroy() highlight = nil end
                if targetBillboard then targetBillboard:Destroy() targetBillboard = nil end
            end
        else
            -- Enemy doesn't exist anymore
            NpclockState = false
            enemy = nil
            TextButton1.Text = "Toggle Npclock"
            TextButton1.TextSize = 13
            if highlight then highlight:Destroy() highlight = nil end
            if targetBillboard then targetBillboard:Destroy() targetBillboard = nil end
        end
    end
end)

local state = true
TextButton1.MouseButton1Click:Connect(function()
    state = not state

    if not state then
        NpclockState = true
        enemy = FindNearestEnemy()
        if enemy and enemy.Parent then
            applyTargetVisuals(enemy.Parent)
            TextButton1.Text = "ON"
            TextButton1.TextSize = 20
        end
    else
        TextButton1.Text = "Toggle Npclock"
        TextButton1.TextSize = 13
        NpclockState = false
        enemy = nil

        -- Cleanup visuals
        if highlight then highlight:Destroy() highlight = nil end
        if targetBillboard then targetBillboard:Destroy() targetBillboard = nil end
    end
end)

local tweenService = ClonedService("TweenService")
local hoverInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local clickInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local defaultProps = {
    BackgroundTransparency = 0.3,
    Size = UDim2.new(0, 65, 0, 65)
}

local hoverProps = {
    BackgroundTransparency = 0.1,
    Size = UDim2.new(0, 70, 0, 70)
}

local clickProps = {
    BackgroundTransparency = 0,
    Size = UDim2.new(0, 60, 0, 60)
}

local defaultTween = tweenService:Create(vars.LockButton, hoverInfo, defaultProps)
local hoverTween = tweenService:Create(vars.LockButton, hoverInfo, hoverProps)
local clickTween = tweenService:Create(vars.LockButton, clickInfo, clickProps)

vars.LockButton.MouseEnter:Connect(function()
    hoverTween:Play()
end)

vars.LockButton.MouseLeave:Connect(function()
    defaultTween:Play()
end)

vars.LockButton.MouseButton1Down:Connect(function()
    clickTween:Play()
  end)

vars.LockButton.MouseButton1Up:Connect(function()
    hoverTween:Play()
end)

local V = false

local Frame1 = Instance.new("Frame")
Frame1.Parent = vars.screenGui
Frame1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.76, 0, 0.05, 0)
Frame1.Size = UDim2.new(0, 80, 0, 40)
Frame1.Active = true
Frame1.Draggable = false
Frame1.Visible = false
Frame1.ZIndex = 1

local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
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
UICorner.Parent = Frame1

-- Configuration
local CamlockState = false
local Prediction1 = 0.25
local Locked = true
getgenv().Key = "c"

local enemy1 = nil
local glowEffect = nil
local billboardGui = nil

-- Function to find the nearest enemy
function FindNearestEnemy1()
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
    if enemy1 and (not enemy1.Parent or enemy1.Parent:FindFirstChild("Humanoid").Health <= 0) then
        removeGlow()
        enemy1 = nil
        state1 = true
        CamlockState = false
        TextButton.Text = "Toggle Camlock"
        TextButton.TextSize = 13
    end
end

-- Function to aim the camera at the nearest enemy1's HumanoidRootPart
RunService.Heartbeat:Connect(function()
    if CamlockState and enemy1 then
        resetTarget() -- Check if the enemy is still valid
        if enemy1 then
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.p, enemy1.Position + enemy1.Velocity * Prediction1)
        end
    end
end)

local state1 = true
TextButton.MouseButton1Click:Connect(function()
    state1 = not state1
    if not state1 then
        TextButton.Text = "ON"
        TextButton.TextSize = 20
        CamlockState = true
        enemy1 = FindNearestEnemy1()
        if enemy1 then
            applyGlow(enemy1.Parent) -- Apply glow effect to the enemy
        end
    else
        TextButton.Text = "Toggle Camlock"
        TextButton.TextSize = 13
        CamlockState = false
        removeGlow() -- Remove glow effect
        enemy1 = nil
    end
end)

-- Create the delay TextBox
local delayTextBox = Instance.new("TextBox")
delayTextBox.Size = UDim2.new(0, 160, 0, 30) -- Adjusted size
delayTextBox.Position = UDim2.new(0, 10, 1, -90) -- Position below the fourth button
delayTextBox.Text = "2" -- Default delay
delayTextBox.PlaceholderText = "Set the delay for Loop Kill NPC"
delayTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
delayTextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45) -- Dark background color
delayTextBox.TextColor3 = Color3.new(1, 1, 1) -- White text color
delayTextBox.Font = Enum.Font.Gotham
delayTextBox.TextSize = 14
delayTextBox.Parent = vars.screenGui

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
dropdownFrame.Parent = vars.screenGui

vars.uiListLayout.Parent = dropdownFrame
vars.uiListLayout.Padding = UDim.new(0, 3)

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

-- Slight change in handleNPCSelectionALT()
function handleNPCSelectionALT(npc)  
    local delay = tonumber(delayTextBox.Text)  
  
    function teleportToNPC()
        local char = vars.player.Character  
        local hrp = char and char:FindFirstChild("HumanoidRootPart")  

        if hrp and npc and npc:FindFirstChild("HumanoidRootPart") then  
                hrp.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)  
        end
        
        if vars.connectionTeleportLoop then  
            vars.connectionTeleportLoop:Disconnect()  
        end  
        
        vars.connectionTeleportLoop = game:GetService("RunService").Heartbeat:Connect(function()  
            if not teleportLoopActive then return end  
  
            local char = vars.player.Character  
            local hrp = char and char:FindFirstChild("HumanoidRootPart")  
  
            if not npc or not npc:FindFirstChild("HumanoidRootPart") then  
                npc = nil  
                -- Search for new matching NPC by name  
                for _, descendant in ipairs(workspace:GetDescendants()) do  
                    if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") and descendant.Name == selectedNPC.Name then  
                        npc = descendant  
                        break  
                    end  
                end  
                if not npc then return end  
            end  
  
            if hrp and npc and npc:FindFirstChild("HumanoidRootPart") then  
                hrp.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)  
            end  
        end)  
  
        -- Handle character respawn  
        if vars.connectionCharacterAdded then  
            vars.connectionCharacterAdded:Disconnect()  
        end  
  
        vars.connectionCharacterAdded = vars.player.CharacterAdded:Connect(function()  
            repeat wait() until vars.player.Character and vars.player.Character:FindFirstChild("HumanoidRootPart")  
            teleportToNPC()  
        end)  
    end  
  
    if vars.player.Character and vars.player.Character:FindFirstChild("HumanoidRootPart") then  
        teleportToNPC()  
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
                -- Update selection and teleport vars.player
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
toggleButton.Parent = vars.screenGui
local UICornerfr = Instance.new("UICorner")
UICornerfr.Parent = toggleButton

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
local character = vars.player.Character
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
                local hrp = vars.player.Character and vars.player.Character:FindFirstChild("HumanoidRootPart")
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
                
                local hrp = vars.player.Character and vars.player.Character:FindFirstChild("HumanoidRootPart")
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
local immortalEnabled = false -- Toggle state
local Workspace = game:GetService("Workspace")

local exceptions = {
    ["Button"] = true,
    ["Respawn"] = true
}

local gemStorage = Workspace:FindFirstChild("GemStorage")

local function isInGemStorage(part)
    return gemStorage and part:IsDescendantOf(gemStorage)
end

local function isPlayerCharacterPart(part)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and part:IsDescendantOf(player.Character) then
            return true
        end
    end
    return false
end

-- FIXED: proper grouping for conditions
local function shouldAffect(part)
    return (
        part:IsA("BasePart") -- ONLY BaseParts should be changed
        and not exceptions[part.Name]
        and not isInGemStorage(part)
        and not isPlayerCharacterPart(part)
    )
end

local function disableCanTouch()
    for _, part in ipairs(Workspace:GetDescendants()) do
        if shouldAffect(part) then
            part.CanTouch = false
        end
    end
end

local function enableCanTouch()
    for _, part in ipairs(Workspace:GetDescendants()) do
        if shouldAffect(part) then
            part.CanTouch = true
        end
    end
end

-- Toggle function for Immortal Mode
local function toggleGodMode()
    if immortalEnabled then
        if vars.connectionpart then
            vars.connectionpart:Disconnect()
            vars.connectionpart = nil
        end
        modeButton.Text = "Unkillable : OFF"
        immortalEnabled = false
        enableCanTouch() -- Enable CanTouch again
    else
        vars.connectionpart = Workspace.DescendantAdded:Connect(function(obj)
    if obj:IsA("BasePart") then
        if shouldAffect(obj) then
            obj.CanTouch = false
        else
            obj.CanTouch = true
        end
    end
end)
        modeButton.Text = "Unkillable : ON"
        immortalEnabled = true
        disableCanTouch() -- Disable CanTouch for all parts
    end
end


-- No Cframe
local function GetRoot(Character)
	if not Character then return end
	local Root = Character:FindFirstChild("HumanoidRootPart")
	if Character and Root then
		return Root
	end
end

function enableCF()
	if vars.connectionRoot then
		vars.connectionRoot:Disconnect()
		vars.connectionRoot = nil
	end
	
    local Character = vars.Player.Character or vars.Player.CharacterAdded:Wait()
    local Root = GetRoot(Character)
    
    if not Root then 
	    warn("Error, try again | Character did not fully loaded in")
	    return end

	local Allowed, Old = nil, nil

	if not vars.connectionRoot then
vars.connectionRoot = 	Root:GetPropertyChangedSignal("CFrame"):Connect(function() 
		if vars.AntiCFrame then
			Allowed = true
			Root.CFrame = Old
			vars.Wait()
			Allowed = false
		end
	end)
	end
	
	repeat vars.Wait()
		Old = Root.CFrame
	until not Root or not Root.Parent
end

-- Toggle Logic
function toggleNoCF()
	vars.AntiCFrame = not vars.AntiCFrame
	if vars.AntiCFrame then
		noCFButton.Text = "Anti CFrame : ON"
		task.spawn(enableCF)

		if not vars.connectionCF then
			vars.connectionCF = vars.Player.CharacterAdded:Connect(function()
				if vars.AntiCFrame then
					task.spawn(enableCF)
				end
			end)
		end
	else
		noCFButton.Text = "Anti CFrame : OFF"
		vars.AntiCFrame = false
		if vars.connectionCF then
			vars.connectionCF:Disconnect()
			vars.connectionCF = nil
		end
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

-- Function to make the vars.player invisible
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

-- Function to make the vars.player visible again
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
        -- If currently visible, make the vars.player invisible
        makeInvisible()
    else
        invisButton.Text = "Invisible : OFF"
        -- If currently invisible, make the vars.player visible
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
        -- Check if the model is an NPC by looking for a Humanoid, and exclude the vars.player's character or models with the same name as a vars.player
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


local playerFreezeActive = false -- Variable to track whether the vars.player is frozen or not

local function togglePlayerFreeze()
    playerFreezeActive = not playerFreezeActive -- Toggle the freeze state

    
    local character = vars.player.Character or vars.player.CharacterAdded:Wait()

    -- Loop through all body parts of the vars.player's character
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
        vars.voidButton.Text = "Antivoid : OFF"
    else
        vars.voidButton.Text = "Antivoid : ON"
        enableAntiVoid()
    end

    -- Toggle the boolean state
    isAntiVoidEnabled = not isAntiVoidEnabled
end

-- Define the required services and variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Function to handle vars.player respawn and teleport
local function Teleport()
    spawn(function() -- Use spawn to run this function in a new thread
        local Character = LocalPlayer.Character
        if Character and getgenv().AutoRespawn then
            local Humanoid = Character:WaitForChild("Humanoid")
            local Pos

            -- Capture the vars.player's position when they die
            Humanoid.Died:Connect(function()
                if getgenv().AutoRespawn then
                    Pos = Character:WaitForChild("HumanoidRootPart").CFrame
                end
            end)

            -- Wait for the vars.player to respawn
            LocalPlayer.CharacterAdded:Wait()

            -- Teleport the vars.player to their last known position
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
            for _, plr in pairs(Players:GetPlayers()) do
                if plr ~= speaker and vars.player.Character then
                    for _, v in pairs(vars.player.Character:GetDescendants()) do
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
local monitoring = false
local spawnedNPCs = {}
local connections = {}

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

local function onNPCRemoved(npc)
	if spawnedNPCs[npc.Name] then
		spawnedNPCs[npc.Name] = nil
	end
end

local function startMonitoring()
	if monitoring then return end
	if not game.CoreGui:FindFirstChild("youshalldie") then return end

	monitoring = true

	-- Initial population
	for _, npc in ipairs(npcFolder1:GetDescendants()) do
		onNPCAdded(npc)
	end

	-- Save connections so we can disconnect them later
	table.insert(connections, npcFolder1.DescendantAdded:Connect(onNPCAdded))
	table.insert(connections, npcFolder1.DescendantRemoving:Connect(onNPCRemoved))
end

local function stopMonitoring()
	if not monitoring then return end
	monitoring = false

	for _, conn in ipairs(connections) do
		if conn.Connected then
			conn:Disconnect()
		end
	end
	table.clear(connections)
	table.clear(spawnedNPCs)
end
local loopKill = false
local function toggleLoopKill()
    loopKill = not loopKill
    if loopKill then
        vars.textButton2.Text = "Loop Kill Every NPC : ON"
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
        vars.textButton2.Text = "Loop Kill Every NPC : OFF"
    end
end


local notificationToggle = false

function toggleNotifications()
	notificationToggle = not notificationToggle
	if notificationToggle then
	    vars.textButton4.Text = "Notify Spawned NPC : ON"
	    startMonitoring()
	else
	    vars.textButton4.Text = "Notify Spawned NPC : OFF"
	    stopMonitoring()
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
        vars.textButton5.Text = "Auto Crates : ON"
        
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
        vars.textButton5.Text = "Auto Crates : OFF"
    end
end

local weaponOpen = false

local function createNPC()
    dropdownOpen = not dropdownOpen
    if dropdownOpen then
        vars.textButton6.Text = "Hide NPC List"
        if weaponOpen then
            dropdownFrame.Visible = true
            vars.textButton3.Text = "Show Tools List"
            vars.selectWeaponFrame.Visible = false
            weaponOpen = false
        else
            dropdownFrame.Visible = true
        end
        refreshDropdown()
    else
        vars.textButton6.Text = "Open NPC List"
        dropdownFrame.Visible = false
    end
end

local connectchar = {
    character = vars.player.Character or nil,
    backpack = vars.player:FindFirstChild("Backpack") or vars.player:WaitForChild("Backpack") or nil,
}

-- Always capture character on spawn
vars.player.CharacterAdded:Connect(function(char)
    connectchar.character = char
    connectchar.backpack = game.Players.LocalPlayer:FindFirstChild("Backpack") or game.Players.LocalPlayer:WaitForChild("Backpack")    
    task.wait()
end)

local equippedConnection

function clearDropdown()
	for _, child in pairs(vars.selectWeaponFrame:GetChildren()) do
		if child:IsA("TextButton") then
			child:Destroy()
		end
	end
	vars.selectWeaponFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
end

local loopCoroutine = nil

function equipAndActivate()
	if not vars.selectedTools or not vars.loopAttack then return end

	local function findTool()
		for _, tool in ipairs(connectchar.backpack:GetChildren()) do
			if tool:IsA("Tool") and tool.Name == vars.selectedTools then
				return tool
			end
		end
		for _, tool in ipairs((connectchar.character):GetChildren()) do
			if tool:IsA("Tool") and tool.Name == vars.selectedTools then
				return tool
			end
		end
		return nil
	end

	local function loop()
		while vars.loopAttack and vars.selectedTools do
			local tool = findTool()

			-- Unequip other tools if any
			if connectchar.character then
	for _, item in ipairs(connectchar.character:GetChildren()) do
		if item:IsA("Tool") and item.Name ~= vars.selectedTools then
			item.Parent = connectchar.backpack
		end
	end
end

			if tool then
				if connectchar.character then
	tool.Parent = connectchar.character
end
				pcall(function()
					tool:Activate()
				end)
			end
			task.wait(0.1)
		end
	end

	if loopCoroutine and coroutine.status(loopCoroutine) ~= "dead" then
		-- Avoid spawning duplicates
		return
	end

	loopCoroutine = coroutine.create(loop)
	coroutine.resume(loopCoroutine)
end

local function refreshToolDropdown()
	clearDropdown()

	local tools = (connectchar.backpack):GetChildren()
local ySize = 25
local buttonCount2 = 0    

	for _, tool in ipairs(tools) do
		if tool:IsA("Tool") then
		    local button = Instance.new("TextButton")
			button.Size = UDim2.new(0, 160, 0, 25)
			button.Position = UDim2.new(0, 0, 0, ySize)
			button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			button.BorderColor3 = (tool.Name == vars.selectedTools) and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
			button.Text = tool.Name
			button.Name = tool.Name
			button.TextSize = 14
			button.TextColor3 = Color3.new(1, 1, 1)
			button.Font = Enum.Font.Gotham
			button.Parent = vars.selectWeaponFrame

		    buttonCount2 = buttonCount2 + 1 
		    
			button.MouseButton1Click:Connect(function()
				vars.selectedTools = tool.Name
				for _, btn in ipairs(vars.selectWeaponFrame:GetChildren()) do
					if btn:IsA("TextButton") then
						btn.BorderColor3 = (btn.Name == vars.selectedTools) and Color3.fromRGB(0, 255, 0) or Color3.new(0, 0, 0)
					end
				end
			end)
		end
	end
    local buttonHeight = 26
    local totalHeight = buttonCount2 * buttonHeight
    vars.selectWeaponFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)
end

toggleOnButton.MouseButton1Click:Connect(function()
	vars.loopAttack = not vars.loopAttack

	if vars.loopAttack then
		if not vars.selectedTools then
			game.StarterGui:SetCore("SendNotification", {
				Title = "WARNING";
				Text = "YOU NEED TO SELECT WEAPON FIRST";
				Duration = 3;
			})
			vars.loopAttack = false
			return
		else
			toggleOnButton.Text = "Auto Attack : ON"
			equipAndActivate()

			equippedConnection = vars.player.CharacterAdded:Connect(function()
				equipAndActivate()
			end)
		end
	else
		toggleOnButton.Text = "Auto Attack : OFF"
		vars.loopAttack = false
		if equippedConnection then equippedConnection:Disconnect() end
	end
end)

function toggleAutoEquip()
    weaponOpen = not weaponOpen
    if weaponOpen then
        if dropdownOpen then
            vars.textButton3.Text = "Hide Tools List"
            vars.textButton6.Text = "Open NPC List"
            dropdownFrame.Visible = false
            refreshToolDropdown()
            vars.selectWeaponFrame.Visible = true
            dropdownOpen = false
        else
            refreshToolDropdown()
            vars.textButton3.Text = "Hide Tools List"
            vars.selectWeaponFrame.Visible = true
        end
    else
            vars.textButton3.Text = "Show Tools List"
            vars.selectWeaponFrame.Visible = false
    end
end

local aimOpen = false
local function hideAim()
    aimOpen = not aimOpen
    if aimOpen then
        vars.textButton7.Text = "Hide Aimlock"
        Frame1.Visible = true
        vars.Frame3.Visible = true
    else
        vars.textButton7.Text = "Show Aimlock"
        Frame1.Visible = false
        vars.Frame3.Visible = false
    end
end

local shiftOpen = false
local function hideShift()
    shiftOpen = not shiftOpen
    if shiftOpen then
        shiftlockButton.Text = "Hide Shiftlock"
        vars.LockButton.Visible = true
    else
        shiftlockButton.Text = "Show Shiftlock"
        vars.LockButton.Visible = false
    end
end

local editor = false
local function hideEditor()
    editor = not editor
    if editor then
        vars.textButton8.Text = "Hide Player Editor"
        vars.Frame2.Visible = true
    else
        vars.textButton8.Text = "Open Player Editor"
        vars.Frame2.Visible = false
    end
end

local function toggleButtonsVisibility()
    local visible = toggleButton.Text == "-"
    toggleButton.Text = visible and "+" or "-"
    vars.textButton1.Visible = not visible
    vars.destroyButton.Visible = not visible
    vars.textButton2.Visible = not visible
    vars.textButton3.Visible = not visible
    vars.textButton4.Visible = not visible
    vars.textButton5.Visible = not visible
    vars.textButton6.Visible = not visible
    vars.textButton7.Visible = not visible
    vars.textButton8.Visible = not visible
    vars.textButton6.Text = "Open NPC List"
    vars.textButton3.Text = "Show Tools List"
    vars.textButton8.Text = "Open Player Editor"
    dropdownOpen = false
    weaponOpen = false
    editor = false
    vars.selectWeaponFrame.Visible = false
    vars.Frame2.Visible = false
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

-- Function to create ESP for a vars.player
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

    function removeESP()
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

-- Function to remove ESP for a vars.player
local function removeESPForPlayer(p)
    if espElements[p.UserId] then
        espElements[p.UserId]:Remove()
        espElements[p.UserId] = nil
    end
end

-- Toggle ESP
function toggleESP()
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

-- Handle vars.player added
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

-- Connect vars.player added event
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
    savedWalkSpeed = vars.defaultWsPower,  -- Assuming vars.defaultWsPower is defined elsewhere
    savedJumpPower = vars.defaultJumpPower,  -- Assuming vars.defaultJumpPower is defined elsewhere
    ignoreChanges = false,
    changedjp = false,
    changedws = false
}
local connections = {
    walkSpeed = nil,
    jumpPower = nil
}

-- Function to handle WalkSpeed focus lost
function onLostWs()
    local text = vars.wsButton.Text
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
        vars.wsButton.Text = "Walkspeed : " .. newWalkSpeed

        -- Re-enable listeners after changes
        settings.ignoreChanges = false
    else
        -- Handle invalid input
        settings.ignoreChanges = true
        wait(0.1)
        settings.changedws = false
        settings.savedWalkSpeed = vars.defaultWsPower
        print("Invalid input for WalkSpeed, reverting to default: " .. vars.defaultWsPower)
        
        if humanoid then
            humanoid.WalkSpeed = vars.defaultWsPower
        end
        vars.wsButton.Text = "Walkspeed : " .. tostring(vars.defaultWsPower)
        settings.ignoreChanges = false
    end
end

-- Function to handle JumpPower focus lost
function onLostJp()
    local text = vars.jpButton.Text
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
        vars.jpButton.Text = "JumpPower : " .. newJumpPower

        -- Re-enable listeners after changes
        settings.ignoreChanges = false
    else
        -- Handle invalid input
        settings.ignoreChanges = true
        wait(0.1)
        settings.changedjp = false
        settings.savedJumpPower = vars.defaultJumpPower
        print("Invalid input for JumpPower, reverting to default: " .. vars.defaultJumpPower)
        
        if humanoid then
            humanoid.JumpPower = vars.defaultJumpPower
        end
        vars.jpButton.Text = "JumpPower : " .. tostring(vars.defaultJumpPower)
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
function reapplyValues()
    wait(1)  -- Wait for Roblox to finish resetting default values after respawn
    if humanoid then
        humanoid.WalkSpeed = settings.savedWalkSpeed
        humanoid.JumpPower = settings.savedJumpPower
    end
end

-- Function to set up listeners
function setupListeners()
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
    if vars.player.Character then
    onCharacterAddedFR(vars.player.Character)
end

respawn = vars.player.CharacterAdded:Connect(onCharacterAddedFR)
else
    disconnectListeners()
    if respawn then
        respawn:Disconnect()
    end
end

local Clip = true
function Nocliptoggle()
    Clip = not Clip
    
    if not Clip then
    noclipButton.Text = "Noclip : ON"    
    local Noclipping = nil
    local speaker = game.Players.LocalPlayer
        wait(0.1)
        function NoclipLoop() 
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
function toggleinf()
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

function tpClick()
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

-- Function to reset the button back to its original state
function resetButton()
    vars.destroyButton.Text = "Destroy GUI"
    vars.isConfirmed = false
    vars.countdownActive = false
    if countdown then
        countdown:Disconnect() -- Stop the countdown if it is running
    end
end

function startCountdown()
    vars.isConfirmed = true
    local remainingTime = vars.countdownTime
    vars.destroyButton.Text = "Are you sure? (" .. remainingTime .. ")"

    countdown = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
        if vars.countdownActive then
            remainingTime = remainingTime - deltaTime

            -- Update the button text with the remaining time
            vars.destroyButton.Text = "Are you sure? (" .. math.ceil(remainingTime) .. ")"

            if remainingTime <= 0 then
                -- If the countdown reaches 0, reset the button
                resetButton()
            end
        end
    end)
end

-- Button press function
vars.destroyButton.MouseButton1Click:Connect(function()
    if not vars.isConfirmed then
        -- Start the countdown if not already confirming
        vars.countdownActive = true
        startCountdown()
    else
        -- If confirming and the button is pressed again, destroy the GUI
        vars.screenGui:Destroy()
        disconnectListeners()
        getgenv().AutoRespawn = false
        if vars.connectionRoot then
            vars.connectionRoot:Disconnect()
            vars.connectionRoot = nil
        end
        if vars.connectionCF then
            vars.connectionCF:Disconnect()
            vars.connectionCF = nil
        end
        if vars.teleportConnection then
            vars.teleportConnection:Disconnect()
        end
        if vars.respawnConnection then
            vars.respawnConnection:Disconnect()
        end
        vars.player.CharacterAdded:Disconnect()
        npcFolder1.DescendantAdded:Disconnect()
        npcFolder1.DescendantRemoving:Disconnect()
        getgenv().AntiAfkExecuted = false
    end
end)

local function YDYMLAX_fake_script()
    local script = Instance.new('LocalScript', vars.LockButton)
    local Input = ClonedService("UserInputService")
    local main = script.Parent
    local buttonStroke = main:FindFirstChildOfClass("UIStroke")
    main.MouseButton1Click:Connect(function()
        V = not V
        if V then
            main.btnIcon.ImageColor3 = Color3.fromRGB(0, 170, 255)
            vars.buttonStroke.Color = Color3.fromRGB(0, 170, 255)
            vars.buttonStroke.Thickness = 3
            spawn(function()
                while V do
                    for i = 0.3, 0.7, 0.1 do
                        if not V then break end
                        vars.buttonStroke.Transparency = i
                        wait(0.1)
                    end
                    for i = 0.7, 0.3, -0.1 do
                        if not V then break end
                        vars.buttonStroke.Transparency = i
                        wait(0.1)
                    end
                end
            end)
            ForceShiftLock()
        else
            main.btnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
            vars.buttonStroke.Color = Color3.fromRGB(0, 133, 199)
            vars.buttonStroke.Thickness = 2
            vars.buttonStroke.Transparency = 0.3
            EndForceShiftLock()
        end
    end)
    local g = nil
    local GameSettings = UserSettings():GetService("UserGameSettings")
    local J = nil
    function ForceShiftLock()
        local i, k = pcall(function()
            return GameSettings.RotationType
        end)
        _ = i
        g = k
        J = ClonedService("RunService").RenderStepped:Connect(function()
            pcall(function()
                GameSettings.RotationType = Enum.RotationType.CameraRelative
            end)
        end)
    end
    function EndForceShiftLock()
        if J then
            pcall(function()
                GameSettings.RotationType = g or Enum.RotationType.MovementRelative
            end)
            J:Disconnect()
        end
    end
end

coroutine.wrap(YDYMLAX_fake_script)()

-- Connect event
flyButton.MouseButton1Click:Connect(toggleFly)
freezeButton.MouseButton1Click:Connect(togglePlayerFreeze)
freezenpcButton.MouseButton1Click:Connect(toggleNpcFreeze)
respawnButton.MouseButton1Click:Connect(ToggleRespawn)
modeButton.MouseButton1Click:Connect(toggleGodMode)
invisButton.MouseButton1Click:Connect(toggleVisibility)
looptpButton.MouseButton1Click:Connect(startTeleportLoop)
antiButton.MouseButton1Click:Connect(toggleAntiFling)
vars.voidButton.MouseButton1Click:Connect(toggleAntiVoid)
fallButton.MouseButton1Click:Connect(toggleNoFallDamage)
shiftlockButton.MouseButton1Click:Connect(hideShift)
espButton.MouseButton1Click:Connect(toggleESP)
noCFButton.MouseButton1Click:Connect(toggleNoCF)
tpButton.MouseButton1Click:Connect(tpClick)
infjumpButton.MouseButton1Click:Connect(toggleinf)
noclipButton.MouseButton1Click:Connect(Nocliptoggle)
vars.jpButton.FocusLost:Connect(onLostJp)
vars.wsButton.FocusLost:Connect(onLostWs)
vars.noproximityButton.MouseButton1Click:Connect(toggleProximity)
delayTextBox.FocusLost:Connect(validateDelay)
vars.textButton1.MouseButton1Click:Connect(executeKillScript)
vars.textButton2.MouseButton1Click:Connect(toggleLoopKill)
vars.textButton3.MouseButton1Click:Connect(toggleAutoEquip)
vars.textButton4.MouseButton1Click:Connect(toggleNotifications)
vars.textButton5.MouseButton1Click:Connect(toggleLoopCrate)
vars.textButton6.MouseButton1Click:Connect(createNPC)
vars.textButton7.MouseButton1Click:Connect(hideAim)
vars.textButton8.MouseButton1Click:Connect(hideEditor)
vars.uiButton.MouseButton1Click:Connect(toggleSize)
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
uselesslabelone.Parent = vars.screenGui
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
timerlabel.Parent = vars.screenGui
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
uselesslabeltwo.Parent = vars.screenGui
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
fpslabel.Parent = vars.screenGui
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
uselesslabelthree.Parent = vars.screenGui
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
pinglabel.Parent = vars.screenGui
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