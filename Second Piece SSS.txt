getgenv().Configs = {
   ["Key"] = "8336cfea-8062-414a-a4c3-0346096a653e"
}

spawn(function()
 if Configs["Key"] == "8336cfea-8062-414a-a4c3-0346096a653e" then
 if game.PlaceId == 15049111150 then
 if game.CoreGui:FindFirstChild("ThunderScreen") then
    game.CoreGui:FindFirstChild("ThunderScreen"):Destroy()
end

local ThunderScreen = Instance.new("ScreenGui")
local ThunderToggleUI = Instance.new("TextButton")
local ThunderCornerUI = Instance.new("UICorner")
local ThunderImageUI = Instance.new("ImageLabel")

        ThunderScreen.Name = "ThunderScreen"
        ThunderScreen.Parent = game.CoreGui
        ThunderScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        ThunderToggleUI.Name = "SSS HUB"
        ThunderToggleUI.Parent = ThunderScreen
        ThunderToggleUI.BackgroundColor3 = Color3.fromRGB(31,31,31)
        ThunderToggleUI.BorderSizePixel = 0
        ThunderToggleUI.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        ThunderToggleUI.Size = UDim2.new(0, 50, 0, 50)
        ThunderToggleUI.Font = Enum.Font.SourceSans
        ThunderToggleUI.Text = ""
        ThunderToggleUI.TextColor3 = Color3.fromRGB(0, 0, 0)
        ThunderToggleUI.TextSize = 14.000
        ThunderToggleUI.Draggable = true
        ThunderToggleUI.MouseButton1Click:Connect(function()
        game.CoreGui:FindFirstChild("Testui").Enabled = not game.CoreGui:FindFirstChild("Testui").Enabled
        end)

        ThunderCornerUI.Name = "ThunderCornerUI"
        ThunderCornerUI.Parent = ThunderToggleUI

        ThunderImageUI.Name = "MODILEMAGE"
        ThunderImageUI.Parent = ThunderToggleUI
        ThunderImageUI.BackgroundColor3 = Color3.fromRGB(192,192,192)
        ThunderImageUI.BackgroundTransparency = 1.000
        ThunderImageUI.BorderSizePixel = 0
        ThunderImageUI.Position = UDim2.new(0.0, 0, 0.0, 0)
        ThunderImageUI.Size = UDim2.new(0, 50, 0, 50)
        ThunderImageUI.Image = "http://www.roblox.com/asset/?id=15909395058"
        
do  local ui =  game:GetService("CoreGui"):FindFirstChild("Testui")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}
local PresetColor = Color3.fromRGB(66, 134, 255)
local CloseBind = Enum.KeyCode.RightControl

coroutine.wrap(
  function()
    while wait() do
      Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
      Red.HueSelectionPosition = Red.HueSelectionPosition + 1

      if Red.RainbowColorValue >= 1 then
        Red.RainbowColorValue = 0
      end

      if Red.HueSelectionPosition == 160 then
        Red.HueSelectionPosition = 0
      end
    end
  end
)()

local Testui = Instance.new("ScreenGui")
Testui.Name = "Testui"
Testui.Parent = game.CoreGui
Testui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local function MakeDraggable(topbarobject, object)
  local Dragging = nil
  local DragInput = nil
  local DragStart = nil
  local StartPosition = nil

  local function Update(input)
    local Delta = input.Position - DragStart
    local pos =
      UDim2.new(
        StartPosition.X.Scale,
        StartPosition.X.Offset + Delta.X,
        StartPosition.Y.Scale,
        StartPosition.Y.Offset + Delta.Y
      )
    local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
    Tween:Play()
  end

  topbarobject.InputBegan:Connect(
    function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Dragging = true
        DragStart = input.Position
        StartPosition = object.Position

        input.Changed:Connect(
          function()
            if input.UserInputState == Enum.UserInputState.End then
              Dragging = false
            end
          end
        )
      end
    end
  )

  topbarobject.InputChanged:Connect(
    function(input)
      if
        input.UserInputType == Enum.UserInputType.MouseMovement or
        input.UserInputType == Enum.UserInputType.Touch
      then
        DragInput = input
      end
    end
  )

  UserInputService.InputChanged:Connect(
    function(input)
      if input == DragInput and Dragging then
        Update(input)
      end
    end
  )
end

local function Tween(instance, properties,style,wa)
  if style == nil or "" then
    return Back
  end
  tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local ui = {}

function ui:W1n(text,text2,text2Pos,toclose)

  CloseBind = toclose or Enum.KeyCode.RightControl

  if text2Pos == nil then
    text2Pos = 0.35
  end

  local fs = false
  local MainSceen = Instance.new("Frame")
  MainSceen.Name = "MainSceen"
  MainSceen.Parent = Testui
  MainSceen.AnchorPoint = Vector2.new(0.5, 0.5)
  MainSceen.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
  MainSceen.BorderSizePixel = 0
  MainSceen.ClipsDescendants = true
  MainSceen.Position = UDim2.new(0.5, 0, 0.5, 0)
  MainSceen.Size = UDim2.new(0, 550, 0, 300)

  local Main_UiConner = Instance.new("UICorner")
  Main_UiConner.Name = "Main_UiConner"
  Main_UiConner.CornerRadius = UDim.new(0, 8)
  Main_UiConner.Parent = MainSceen

  local Main_UiStroke = Instance.new("UIStroke")

  Main_UiStroke.Thickness = 2
  Main_UiStroke.Name = ""
  Main_UiStroke.Parent = MainSceen
  Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
  Main_UiStroke.Color = Color3.fromRGB(30,30,30)
  Main_UiStroke.Transparency = 0

  local ClickFrame = Instance.new("Frame")

  ClickFrame.Name = "ClickFrame"
  ClickFrame.Parent = MainSceen
  ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
  ClickFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ClickFrame.BackgroundTransparency = 1.000
  ClickFrame.ClipsDescendants = true
  ClickFrame.Position = UDim2.new(0.5, 0, 0.0543823242, 0)
  ClickFrame.Size = UDim2.new(0, 550, 0, 30)

  MakeDraggable(ClickFrame,MainSceen)

  local NameReal = Instance.new("TextLabel")

  NameReal.Name = "NameReal"
  NameReal.Parent = MainSceen
  NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
  NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  NameReal.BackgroundTransparency = 1.000
  NameReal.Position = UDim2.new(0.145454541, 0, 0.0610294119, 0)
  NameReal.Size = UDim2.new(0, 136, 0, 34)
  NameReal.Font = Enum.Font.GothamSemibold
  NameReal.TextColor3 = Color3.fromRGB(255, 255, 255)
  NameReal.TextSize = 13.000
  NameReal.TextTransparency = 0.590
  NameReal.Text = tostring(text)
  NameReal.TextXAlignment = Enum.TextXAlignment.Left

  local NameReal2 = Instance.new("TextLabel")

  NameReal2.Name = "NameReal"
  NameReal2.Parent = MainSceen
  NameReal2.Font = Enum.Font.GothamSemibold
  NameReal2.TextColor3 = Color3.fromRGB(255, 23, 46)
  NameReal2.TextSize = 13.000
  NameReal2.TextTransparency = 0
  NameReal2.TextXAlignment = Enum.TextXAlignment.Left
  NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
  NameReal2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
  NameReal2.BackgroundTransparency = 1.000
  NameReal2.Text = tostring(text2)
  NameReal2.Position = UDim2.new(text2Pos, 0, 0.0610294119, 0)
  NameReal2.Size = UDim2.new(0, 136, 0, 34)

  local MainSceen2 = Instance.new("Frame")

  MainSceen2.Name = "MainSceen2"
  MainSceen2.Parent = MainSceen
  MainSceen2.AnchorPoint = Vector2.new(0.5, 0.5)
  MainSceen2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
  MainSceen2.BorderSizePixel = 0
  MainSceen2.ClipsDescendants = true
  MainSceen2.Position = UDim2.new(0.5, 0, 0.550735235, 0)
  MainSceen2.Size = UDim2.new(0, 530, 0, 252)

  local Main_UiConner2 = Instance.new("UICorner")
  Main_UiConner2.CornerRadius = UDim.new(0, 8)
  Main_UiConner2.Name = "Main_UiConner2"
  Main_UiConner2.Parent = MainSceen2

  local Main_Ui2Stroke = Instance.new("UIStroke")

  Main_Ui2Stroke.Thickness = 1
  Main_Ui2Stroke.Name = ""
  Main_Ui2Stroke.Parent = MainSceen2
  Main_Ui2Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  Main_Ui2Stroke.LineJoinMode = Enum.LineJoinMode.Round
  Main_Ui2Stroke.Color = Color3.fromRGB(50,50,50)
  Main_Ui2Stroke.Transparency = 0

  local ScolTapBarFrame = Instance.new("Frame")

  ScolTapBarFrame.Name = "ScolTapBarFrame"
  ScolTapBarFrame.Parent = MainSceen2
  ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
  ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScolTapBarFrame.BackgroundTransparency = 1.000
  ScolTapBarFrame.BorderSizePixel = 0
  ScolTapBarFrame.ClipsDescendants = true
  ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.0700000003, 0)
  ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)

  local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

  ScrollingFrame_Menubar.Name = "ScrollingFrame_Menubar"
  ScrollingFrame_Menubar.Parent = ScolTapBarFrame
  ScrollingFrame_Menubar.Active = true
  ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScrollingFrame_Menubar.BackgroundTransparency = 1.000
  ScrollingFrame_Menubar.BorderSizePixel = 0
  ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
  ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
  ScrollingFrame_Menubar.ScrollBarThickness = 3

  local UIListLayout_Menubar = Instance.new("UIListLayout")

  UIListLayout_Menubar.Name = "UIListLayout_Menubar"
  UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
  UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
  UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
  UIListLayout_Menubar.Padding = UDim.new(0, 10)

  local UIPadding_Menubar = Instance.new("UIPadding")

  UIPadding_Menubar.Name = "UIPadding_Menubar"
  UIPadding_Menubar.Parent = ScrollingFrame_Menubar
  UIPadding_Menubar.PaddingTop = UDim.new(0, 2)

  local PageOrders = -1

  local Container_Page = Instance.new("Frame",MainSceen2)
  Container_Page.Name = "Container_Page"
  Container_Page.Parent = MainSceen2
  Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)
  Container_Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Container_Page.BackgroundTransparency = 1.000
  Container_Page.Position = UDim2.new(0.499056607, 0, 0.55, 0)
  Container_Page.Size = UDim2.new(0, 511, 0, 200)

  local pagesFolder = Instance.new("Folder")

  pagesFolder.Name = "pagesFolder"
  pagesFolder.Parent = Container_Page

  local UIPage = Instance.new("UIPageLayout",pagesFolder)

  UIPage.Name = "UIPage"
  UIPage.Parent = pagesFolder
  UIPage.SortOrder = Enum.SortOrder.LayoutOrder
  UIPage.EasingDirection = Enum.EasingDirection.InOut
  UIPage.EasingStyle = Enum.EasingStyle.Back
  UIPage.Padding = UDim.new(0, 15)
  UIPage.TweenTime = 0.500

  local uitop = {}

  local NotiFrame = Instance.new("Frame")
  NotiFrame.Name = "NotiFrame"
  NotiFrame.Parent = Testui
  NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
  NotiFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
  NotiFrame.BorderSizePixel = 0
  NotiFrame.Position =  UDim2.new(1, -150, 1, 50)
  NotiFrame.Size = UDim2.new(0, 250, 0, 500)
  NotiFrame.ClipsDescendants = true
  NotiFrame.BackgroundTransparency = 1


  local Notilistlayout = Instance.new("UIListLayout")
  Notilistlayout.Parent = NotiFrame
  Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
  Notilistlayout.Padding = UDim.new(0, 30)


  function ui:Notification(titel,text,delays)
    local TitleFrame = Instance.new("Frame")
    TitleFrame.Name = "TitleFrame"
    TitleFrame.Parent = NotiFrame
    TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    TitleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
    TitleFrame.BorderSizePixel = 0
    TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
    TitleFrame.Size = UDim2.new(0, 0, 0, 0)
    TitleFrame.ClipsDescendants = true
    TitleFrame.BackgroundTransparency = 0

    local ConnerTitile = Instance.new("UICorner")

    ConnerTitile.CornerRadius = UDim.new(0, 4)
    ConnerTitile.Name = ""
    ConnerTitile.Parent = TitleFrame

    TitleFrame:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Back", 0.3, true)

    local imagenoti = Instance.new("ImageLabel")

    imagenoti.Parent = TitleFrame
    imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imagenoti.BackgroundTransparency = 1.000
    imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
    imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
    imagenoti.Size = UDim2.new(0, 50, 0, 50)
    --  imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=7578496318&width=0&height=0&format=png"

    local txdlid = Instance.new("TextLabel")

    txdlid.Parent = TitleFrame
    txdlid.Name = "TextLabel_Tap"
    txdlid.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
    txdlid.Size =UDim2.new(0, 160, 0,25 )
    txdlid.Font = Enum.Font.GothamBold
    txdlid.Text = titel
    txdlid.TextColor3 = Color3.fromRGB(0, 2000, 255)
    txdlid.TextSize = 13.000
    txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
    txdlid.Position = UDim2.new(0.37, 0, 0.3, 0)
    -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
    txdlid.TextXAlignment = Enum.TextXAlignment.Left
    txdlid.BackgroundTransparency = 1

    local LableFrame = Instance.new("Frame")
    LableFrame.Name = "LableFrame"
    LableFrame.Parent = TitleFrame
    LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    LableFrame.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
    LableFrame.BorderSizePixel = 0
    LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
    LableFrame.Size = UDim2.new(0, 260, 0,25 )
    LableFrame.ClipsDescendants = true
    LableFrame.BackgroundTransparency = 1

    local TextNoti = Instance.new("TextLabel")

    TextNoti.Parent = LableFrame
    TextNoti.Name = "TextLabel_Tap"
    TextNoti.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
    TextNoti.Size =UDim2.new(0, 260, 0,25 )
    TextNoti.Font = Enum.Font.Gotham
    TextNoti.Text = text
    TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextNoti.TextSize = 11.000
    TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
    TextNoti.Position = UDim2.new(0.7, 0, 0.5, 0)
    -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
    TextNoti.TextXAlignment = Enum.TextXAlignment.Left
    TextNoti.BackgroundTransparency = 1

    repeat wait() until TitleFrame.Size == UDim2.new(0, 250-10, 0, 70)

    local Time = Instance.new("Frame")
    Time.Name = "Time"
    Time.Parent = TitleFrame
    --Time.AnchorPoint = Vector2.new(0.5, 0.5)
    Time.BackgroundColor3 =  Color3.fromRGB(255, 23, 46)
    Time.BorderSizePixel = 0
    Time.Position =  UDim2.new(0, 0, 0.,0)
    Time.Size = UDim2.new(0, 0,0,0)
    Time.ClipsDescendants = false
    Time.BackgroundTransparency = 0

    local ConnerTitile_Time = Instance.new("UICorner")

    ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
    ConnerTitile_Time.Name = ""
    ConnerTitile_Time.Parent = Time

    Time:TweenSizeAndPosition(UDim2.new(0, 250-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Back", 0.3, true)
    repeat wait() until Time.Size == UDim2.new(0, 250-10, 0, 3)

    TweenService:Create(
      Time,
      TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
      {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
    ):Play()
    delay(tonumber(delays),function()
      TweenService:Create(
        TitleFrame,
        TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
        {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
      ):Play()
      wait(0.3)
      TitleFrame:Destroy()
    end
    )
  end

  local uitoggled = false
  UserInputService.InputBegan:Connect(function(io, p)
    if io.KeyCode == CloseBind then
      if uitoggled == false then
        tween:Create(MainSceen,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
        tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 0}):Play()
        uitoggled = true
        wait(.5)
        ui:Notification("UI Toggle","Has Been Close",2.5)
      else
        MainSceen:TweenSize(UDim2.new(0, 550, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .4, true)
        tween:Create(Main_UiStroke,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Thickness = 2}):Play()
        uitoggled = false
        wait(.5)
        ui:Notification("UI Toggle","Has Been Open",2.5)
      end
    end
  end)

  function uitop:Tap(text)
    PageOrders = PageOrders + 1
    local name = tostring(text) or tostring(math.random(1,5000))

    local Frame_Tap = Instance.new("Frame")
    Frame_Tap.Name = text.."Server"
    Frame_Tap.Parent = ScrollingFrame_Menubar
    Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_Tap.BackgroundTransparency = 1.000
    Frame_Tap.Position = UDim2.new(0, 0, 0.272727281, 0)
    Frame_Tap.Size = UDim2.new(0, 90, 0, 16)

    local TextLabel_Tap = Instance.new("TextLabel")
    TextLabel_Tap.Name = "TextLabel_Tap"
    TextLabel_Tap.Parent = Frame_Tap
    TextLabel_Tap.Active = true
    TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_Tap.BorderSizePixel = 0
    TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.800000012, 0)
    TextLabel_Tap.Font = Enum.Font.SourceSans
    TextLabel_Tap.Text = ""
    TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_Tap.TextSize = 14.000

    local TextButton_Tap = Instance.new("TextButton")

    TextButton_Tap.Name = "TextButton_Tap"
    TextButton_Tap.Parent = Frame_Tap
    TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Tap.BackgroundTransparency = 1.000
    TextButton_Tap.Position = UDim2.new(0.0480000004, 0, 0.449999988, 0)
    TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
    TextButton_Tap.Font = Enum.Font.Gotham
    TextButton_Tap.Text = tostring(text)
    TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
    TextButton_Tap.TextSize = 12.000

    local MainPage = Instance.new("Frame")

    MainPage.Name = name.."_MainPage"
    MainPage.Parent = pagesFolder
    MainPage.Active = true
    MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainPage.BackgroundTransparency = 1
    MainPage.ClipsDescendants = true
    MainPage.Position = UDim2.new(0.0039138943, 0, 0, 0)
    MainPage.Size = UDim2.new(0, 516, 0, 200)
    MainPage.LayoutOrder = PageOrders

    TextButton_Tap.MouseButton1Click:connect(function()
      if MainPage.Name == text.."_MainPage" then
        UIPage:JumpToIndex(MainPage.LayoutOrder)

      end
      for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
        if v:IsA("Frame") then
          TweenService:Create(
            v.TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)}
          ):Play()
        end

        TweenService:Create(
          TextButton_Tap,
          TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
          {TextColor3 = Color3.fromRGB(255, 23, 46)}
        ):Play()
      end
    end)

    if fs == false then
      -- TweenService:Create(
      --     TextLabel_Tap,
      --     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
      --     {Size = UDim2.new(0, 70, 0, 2)}
      -- ):Play()
      TweenService:Create(
        TextButton_Tap,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {TextColor3 = Color3.fromRGB(255, 23, 46)}
      ):Play()

      MainPage.Visible = true
      Frame_Tap.Name  = text .. "Server"
      fs  = true
    end

    local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")
    ScrollingFrame_Pagefrist.Name = "ScrollingFrame_Pagefrist"
    ScrollingFrame_Pagefrist.Parent = MainPage
    ScrollingFrame_Pagefrist.Active = true
    ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    ScrollingFrame_Pagefrist.BorderSizePixel = 0
    ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 200)
    ScrollingFrame_Pagefrist.ScrollBarThickness = 4

    local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
    local UIPadding_Pagefrist = Instance.new("UIPadding")

    UIGridLayout_Pagefrist.Name = "UIGridLayout_Pagefrist"
    UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
    UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
    UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 178)

    UIPadding_Pagefrist.Name = "UIPadding_Pagefrist"
    UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
    UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
    UIPadding_Pagefrist.PaddingTop = UDim.new(0, 10)

    local uipage = {}

    function uipage:newpage()
      local Pageframe = Instance.new("Frame")
      Pageframe.Name = "Pageframe"
      Pageframe.Parent = ScrollingFrame_Pagefrist
      Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
      Pageframe.BorderColor3 = Color3.fromRGB(15, 15, 15)
      Pageframe.Position = UDim2.new(0, 0, -1.12658226, 0)
      Pageframe.Size = UDim2.new(0, 240, 0, 328)

      local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")
      ScrollingFrame_Pageframe.Name = "ScrollingFrame_Pageframe"
      ScrollingFrame_Pageframe.Parent = Pageframe
      ScrollingFrame_Pageframe.Active = true
      ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
      ScrollingFrame_Pageframe.BackgroundTransparency = 1.000
      ScrollingFrame_Pageframe.BorderColor3 = Color3.fromRGB(27, 42, 53)
      ScrollingFrame_Pageframe.BorderSizePixel = 0
      ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 178)
      ScrollingFrame_Pageframe.ScrollBarThickness = 3
      ScrollingFrame_Pageframe.ClipsDescendants = true

      local UIPadding_Pageframe = Instance.new("UIPadding")
      local UIListLayout_Pageframe = Instance.new("UIListLayout")

      UIPadding_Pageframe.Name = "UIPadding_Pageframe"
      UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
      UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
      UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)

      UIListLayout_Pageframe.Name = "UIListLayout_Pageframe"
      UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
      UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
      UIListLayout_Pageframe.Padding = UDim.new(0, 7)

      local Pageframe_UICorner = Instance.new("UICorner")

      Pageframe_UICorner.Name = "Pageframe_UICorner"
      Pageframe_UICorner.Parent = Pageframe
      Pageframe_UICorner.CornerRadius = UDim.new(0, 8)

      local Pageframe_UIStroke = Instance.new("UIStroke")

      Pageframe_UIStroke.Thickness = 1
      Pageframe_UIStroke.Name = ""
      Pageframe_UIStroke.Parent = Pageframe
      Pageframe_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
      Pageframe_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
      Pageframe_UIStroke.Color = Color3.fromRGB(0,0,0)
      Pageframe_UIStroke.Transparency = 0

      UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
        ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
      end)

      UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
        ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
      end)

      game:GetService("RunService").Stepped:Connect(function ()
        pcall(function ()
          ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
          ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
          ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 20)
        end)
      end)

      local ui4 = {}

      function ui4:Toggle(text,config,callback)
        local Toggle = Instance.new("Frame")

        Toggle.Name = "Toggle"
        Toggle.Parent = ScrollingFrame_Pageframe
        Toggle.Active = true
        Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 1
        Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
        Toggle.Size = UDim2.new(0, 250, 0, 35)

        local TextButton_Toggle = Instance.new("TextButton")
        TextButton_Toggle.Name = "TextButton_Toggle"
        TextButton_Toggle.Parent = Toggle
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BackgroundTransparency = 1.000
        TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 14.000

        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle.Parent = TextButton_Toggle
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
        TextButton_2_Toggle.AutoButtonColor = false
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 14.000

        local Main_UiStroke = Instance.new("UIStroke")

        Main_UiStroke.Thickness = 1
        Main_UiStroke.Name = ""
        Main_UiStroke.Parent = TextButton_2_Toggle
        Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke.Transparency = 0

        local TextButton_2_Toggle2 = Instance.new("TextButton")

        TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle2.Parent = TextButton_2_Toggle
        TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
        TextButton_2_Toggle2.BorderSizePixel = 0
        TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
        TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
        TextButton_2_Toggle2.AutoButtonColor = false
        TextButton_2_Toggle2.Font = Enum.Font.SourceSans
        TextButton_2_Toggle2.Text = " "
        TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle2.TextSize = 14.000

        local UICorner2 = Instance.new("UICorner")

        UICorner2.CornerRadius = UDim.new(0, 6)
        UICorner2.Parent = TextButton_2_Toggle2

        local Main_UiStroke2 = Instance.new("UIStroke")

        Main_UiStroke2.Thickness = 1
        Main_UiStroke2.Name = ""
        Main_UiStroke2.Parent = TextButton_2_Toggle2
        Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2.Transparency = 0

        local UICorner = Instance.new("UICorner")

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = TextButton_2_Toggle

        local ImageButton = Instance.new("ImageButton")

        ImageButton.Parent = TextButton_2_Toggle
        ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        ImageButton.BackgroundTransparency = 0
        ImageButton.BorderSizePixel = 0
        ImageButton.AutoButtonColor = false
        ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageButton.Size = UDim2.new(0, 0, 0, 0)

        local UICorner6 = Instance.new("UICorner")

        UICorner6.CornerRadius = UDim.new(0, 6)
        UICorner6.Parent = ImageButton

        local TextLabel_Toggle = Instance.new("TextLabel")

        TextLabel_Toggle.Name = "TextLabel_Toggle"
        TextLabel_Toggle.Parent = Toggle
        TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.BackgroundTransparency = 1
        TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
        TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
        TextLabel_Toggle.Font = Enum.Font.Gotham
        TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.TextSize = 12.000
        TextLabel_Toggle.Text = text
        TextLabel_Toggle.TextWrapped = true
        TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

        local Main_UiStroke2TextLabel_Toggle = Instance.new("UIStroke")

        Main_UiStroke2TextLabel_Toggle.Thickness = 1
        Main_UiStroke2TextLabel_Toggle.Name = ""
        Main_UiStroke2TextLabel_Toggle.Parent = TextLabel_Toggle
        Main_UiStroke2TextLabel_Toggle.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        Main_UiStroke2TextLabel_Toggle.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2TextLabel_Toggle.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2TextLabel_Toggle.Transparency = 0

        TextButton_Toggle.MouseEnter:Connect(function()
          TweenService:Create(
            TextLabel_Toggle,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextButton_2_Toggle2,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        TextButton_Toggle.MouseLeave:Connect(function()
          TweenService:Create(
            TextLabel_Toggle,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextButton_2_Toggle2,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)
        local check = {toogle = false ; loacker = true ; togfunction = {

        };}

        TextButton_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        TextButton_2_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        TextButton_2_Toggle2.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        ImageButton.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        if config == true then
          TweenService:Create(
            ImageButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          wait(0.1)
          TweenService:Create(
            ImageButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          check.toogle = true
          callback(check.toogle)
        end
        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.BorderSizePixel = 0
        lockerframe.Size = UDim2.new(0, 300, 0, 35)
        lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
        lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

        local LockerImageLabel = Instance.new("ImageLabel")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1.000
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"

        function check.togfunction:lock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 0.7}
          ):Play()
          wait(0.5)
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 25, 0, 25)}
          ):Play()

          check.loacker  = false
        end
        function check.togfunction:unlock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 1}
          ):Play()
          wait(0.5)
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 0, 0, 0)}
          ):Play()
          check.loacker  = true
        end
        return  check.togfunction
      end
      function ui4:ToggleS(text,config,callback)
        local Toggle = Instance.new("Frame")

        Toggle.Name = "Toggle"
        Toggle.Parent = ScrollingFrame_Pageframe
        Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 1.000
        Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
        Toggle.Size = UDim2.new(0, 210, 0, 30)

        local Toggle_2_Toggle_UIStroke = Instance.new("UIStroke")

        Toggle_2_Toggle_UIStroke.Thickness = 1
        Toggle_2_Toggle_UIStroke.Name = ""
        Toggle_2_Toggle_UIStroke.Parent = Toggle
        Toggle_2_Toggle_UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Toggle_2_Toggle_UIStroke.LineJoinMode = Enum.LineJoinMode.Round
        Toggle_2_Toggle_UIStroke.Color = Color3.fromRGB(255, 46, 46)
        Toggle_2_Toggle_UIStroke.Transparency = 0

        local Toggle_Pageframe_Uiconner = Instance.new("UICorner")

        Toggle_Pageframe_Uiconner.CornerRadius = UDim.new(0, 4)
        Toggle_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
        Toggle_Pageframe_Uiconner.Parent = Toggle

        local TextButton_Toggle = Instance.new("TextButton")

        TextButton_Toggle.Name = "TextButton_Toggle"
        TextButton_Toggle.Parent = Toggle
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BackgroundTransparency = 1.000
        TextButton_Toggle.Size = UDim2.new(0, 210, 0, 30)
        TextButton_Toggle.AutoButtonColor = false
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 14.000

        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle.Parent = TextButton_Toggle
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.Position = UDim2.new(0.87, 0, 0.5, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 43, 0, 19)
        TextButton_2_Toggle.AutoButtonColor = false
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 14.000

        local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner.Name = "TextButton_Pageframe_Uiconner"
        TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

        local TextButton_3_Toggle = Instance.new("TextButton")

        TextButton_3_Toggle.Name = "TextButton_3_Toggle"
        TextButton_3_Toggle.Parent = TextButton_2_Toggle
        TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_3_Toggle.BorderSizePixel = 0
        TextButton_3_Toggle.Position = UDim2.new(0, 10, 0.5, 0)
        TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
        TextButton_3_Toggle.AutoButtonColor = false
        TextButton_3_Toggle.Font = Enum.Font.SourceSans
        TextButton_3_Toggle.Text = " "
        TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_3_Toggle.TextSize = 14.000

        local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner2.Name = "TextButton_Pageframe_Uiconner2"
        TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

        local TextLabel_Toggle = Instance.new("TextLabel")

        TextLabel_Toggle.Name = "TextLabel_Toggle"
        TextLabel_Toggle.Parent = Toggle
        TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.BackgroundTransparency = 1
        TextLabel_Toggle.ClipsDescendants = true
        TextLabel_Toggle.Position = UDim2.new(0.35, 0, 0.5, 0)
        TextLabel_Toggle.Size = UDim2.new(0, 155, 0, 31)
        TextLabel_Toggle.Font = Enum.Font.GothamSemibold
        TextLabel_Toggle.Text = text
        TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.TextSize = 11.000
        TextLabel_Toggle.TextWrapped = true
        TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Center

        local check = {toogle = false ; loacker = true ; togfunction = {

        };}

        TextButton_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              TextButton_3_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              Toggle_2_Toggle_UIStroke,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_2_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
          elseif  check.loacker ==  true then
            TweenService:Create(
              Toggle_2_Toggle_UIStroke,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_3_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_2_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        TextButton_3_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              TextButton_3_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              Toggle_2_Toggle_UIStroke,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_2_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
          elseif  check.loacker ==  true then
            TweenService:Create(
              Toggle_2_Toggle_UIStroke,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Color =  Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_3_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 46, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextButton_2_Toggle,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0, 10, 0.5, 0), "Out", "Quad", 0.1, true)
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        if config == true then
          TweenService:Create(
            TextButton_3_Toggle,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            Toggle_2_Toggle_UIStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color =  Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextButton_2_Toggle,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 17, 0, 17), UDim2.new(0.76, 0, 0.5, 0), "Out", "Quad", 0.1, true)
          check.toogle = true
          callback(check.toogle)
        end
        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.BorderSizePixel = 0
        lockerframe.Size = UDim2.new(0, 245, 0, 35)
        lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
        lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

        local LockerImageLabel = Instance.new("ImageLabel")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1.000
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "http://www.roblox.com/asset/?id=3926305904"
        LockerImageLabel.ImageRectOffset = Vector2.new(404, 364)
        LockerImageLabel.ImageRectSize = Vector2.new(36, 36)
        LockerImageLabel.ImageColor3 = Color3.fromRGB(255,25,25)

        function check.togfunction:lock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 0.7}
          ):Play()
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 25, 0, 25)}
          ):Play()

          check.loacker  = false
        end
        function check.togfunction:unlock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 1}
          ):Play()
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 0, 0, 0)}
          ):Play()
          check.loacker  = true
        end
        return  check.togfunction
      end
      function ui4:ToggleDesc(text,text2,config,callback)
        local Toggle = Instance.new("Frame")

        Toggle.Name = "Toggle"
        Toggle.Parent = ScrollingFrame_Pageframe
        Toggle.Active = true
        Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 1
        Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
        Toggle.Size = UDim2.new(0, 250, 0, 35)

        local TextButton_Toggle = Instance.new("TextButton")
        TextButton_Toggle.Name = "TextButton_Toggle"
        TextButton_Toggle.Parent = Toggle
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BackgroundTransparency = 1.000
        TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 14.000

        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle.Parent = TextButton_Toggle
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 0.5, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
        TextButton_2_Toggle.AutoButtonColor = false
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 14.000

        local Main_UiStroke = Instance.new("UIStroke")

        Main_UiStroke.Thickness = 1
        Main_UiStroke.Name = ""
        Main_UiStroke.Parent = TextButton_2_Toggle
        Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke.Transparency = 0

        local TextButton_2_Toggle2 = Instance.new("TextButton")

        TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle2.Parent = TextButton_2_Toggle
        TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
        TextButton_2_Toggle2.BorderSizePixel = 0
        TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
        TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
        TextButton_2_Toggle2.AutoButtonColor = false
        TextButton_2_Toggle2.Font = Enum.Font.SourceSans
        TextButton_2_Toggle2.Text = " "
        TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle2.TextSize = 14.000

        local UICorner2 = Instance.new("UICorner")

        UICorner2.CornerRadius = UDim.new(0, 6)
        UICorner2.Parent = TextButton_2_Toggle2

        local Main_UiStroke2 = Instance.new("UIStroke")

        Main_UiStroke2.Thickness = 1
        Main_UiStroke2.Name = ""
        Main_UiStroke2.Parent = TextButton_2_Toggle2
        Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2.Transparency = 0

        local UICorner = Instance.new("UICorner")

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = TextButton_2_Toggle

        local ImageButton = Instance.new("ImageButton")

        ImageButton.Parent = TextButton_2_Toggle
        ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        ImageButton.BackgroundTransparency = 0
        ImageButton.BorderSizePixel = 0
        ImageButton.AutoButtonColor = false
        ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageButton.Size = UDim2.new(0, 0, 0, 0)

        local UICorner6 = Instance.new("UICorner")

        UICorner6.CornerRadius = UDim.new(0, 6)
        UICorner6.Parent = ImageButton

        local TextLabel_Toggle = Instance.new("TextLabel")

        TextLabel_Toggle.Name = "TextLabel_Toggle"
        TextLabel_Toggle.Parent = Toggle
        TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.BackgroundTransparency = 1
        TextLabel_Toggle.Position = UDim2.new(0.55, 0, 0.5, 0)
        TextLabel_Toggle.Size = UDim2.new(0, 200, 0, 25)
        TextLabel_Toggle.Font = Enum.Font.Gotham
        TextLabel_Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel_Toggle.TextSize = 12.000
        TextLabel_Toggle.Text = text
        TextLabel_Toggle.TextWrapped = true
        TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

        local Main_UiStroke2 = Instance.new("UIStroke")

        Main_UiStroke2.Thickness = 1
        Main_UiStroke2.Name = ""
        Main_UiStroke2.Parent = TextLabel_Toggle
        Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2.Transparency = 0

        local DescButton2 = Instance.new("ImageButton")

        DescButton2.Parent = Toggle
        DescButton2.AnchorPoint = Vector2.new(0.5, 0.5)
        DescButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DescButton2.BackgroundTransparency = 1.000
        DescButton2.Position = UDim2.new(0.82, 0, 0.5, 0)
        DescButton2.Size = UDim2.new(0, 21, 0, 21)
        DescButton2.Image = "rbxassetid://3926305904"
        DescButton2.ImageRectOffset = Vector2.new(4, 804)
        DescButton2.ImageRectSize = Vector2.new(36, 36)
        DescButton2.ImageColor3 = Color3.fromRGB(255, 255, 255)

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Parent = ScrollingFrame_Pageframe
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BackgroundTransparency = 1
        ScolDown.BorderSizePixel = 0
        ScolDown.Position = UDim2.new(0, 0, 0, 0)
        ScolDown.Size = UDim2.new(0, 245, 0, 0)
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
        ScolDown.ScrollBarThickness = 0

        local DescButton3 = Instance.new("ImageButton")

        DescButton3.Parent = ScolDown
        DescButton3.AnchorPoint = Vector2.new(0.5, 0.5)
        DescButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DescButton3.BackgroundTransparency = 1.000
        DescButton3.Position = UDim2.new(0.02, 0, 0.5, 0)
        DescButton3.Size = UDim2.new(0, 21, 0, 21)
        DescButton3.Image = "rbxassetid://3926307971"
        DescButton3.Rotation = 90
        DescButton3.ImageRectOffset = Vector2.new(324, 524)
        DescButton3.ImageRectSize = Vector2.new(36, 36)
        DescButton3.ImageColor3 = Color3.fromRGB(255, 255, 255)
        DescButton3.ImageTransparency = 1

        local DropFrame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")

        --Properties:

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScolDown
        DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        DropFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
        DropFrame.BackgroundTransparency = 1
        DropFrame.BorderSizePixel = 0
        DropFrame.Position = UDim2.new(0, 105, 0, 15)
        DropFrame.Size = UDim2.new(0, 0, 0, 25)

        local Main_UiStroke3 = Instance.new("UIStroke")

        Main_UiStroke3.Thickness = 0
        Main_UiStroke3.Name = ""
        Main_UiStroke3.Parent = DropFrame
        Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke3.Transparency = 0

        local TextLabel_Toggle2 = Instance.new("TextLabel")

        TextLabel_Toggle2.Name = "TextLabel_Toggle"
        TextLabel_Toggle2.Parent = DropFrame
        TextLabel_Toggle2.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
        TextLabel_Toggle2.BackgroundTransparency = 1
        TextLabel_Toggle2.Position = UDim2.new(0, 4, 0.025, 0)
        TextLabel_Toggle2.Size = UDim2.new(0, 175, 0, 25)
        TextLabel_Toggle2.Font = Enum.Font.GothamSemibold
        TextLabel_Toggle2.TextColor3 = Color3.fromRGB(255, 23, 46)
        TextLabel_Toggle2.TextSize = 10
        TextLabel_Toggle2.TextTransparency = 1
        TextLabel_Toggle2.Text = text2
        TextLabel_Toggle2.TextWrapped = true
        TextLabel_Toggle2.BorderSizePixel = 0
        TextLabel_Toggle2.TextXAlignment = Enum.TextXAlignment.Left

        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = DropFrame

        local Desccheck = false

        local check = {toogle = false ; loacker = true ; togfunction = {

        };}

        DescButton2.MouseButton1Click:Connect(function()
          if Desccheck == false and check.loacker == true then
            TweenService:Create(
              DescButton2,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {ImageColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              ScolDown,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 500, 0, 35)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until ScolDown.Size == UDim2.new(0, 500, 0, 35)
            TweenService:Create(
              DescButton3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {ImageTransparency = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until DescButton3.ImageTransparency == 0
            TweenService:Create(
              DescButton3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Rotation = 270} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until DescButton3.Rotation == 270
            TweenService:Create(
              Main_UiStroke3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Thickness = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until Main_UiStroke3.Thickness == 1
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 175, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextLabel_Toggle2,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextTransparency = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              DescButton2,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              TextLabel_Toggle2,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextTransparency = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until TextLabel_Toggle2.TextTransparency == 1
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until DropFrame.Size == UDim2.new(0, 0, 0, 25)
            TweenService:Create(
              Main_UiStroke3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Thickness = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until Main_UiStroke3.Thickness == 0
            TweenService:Create(
              DescButton3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Rotation = 90} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until DescButton3.Rotation == 90
            TweenService:Create(
              DescButton3,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {ImageTransparency = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            repeat wait() until DescButton3.ImageTransparency == 1
            TweenService:Create(
              ScolDown,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 245, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            Desccheck = not Desccheck
          end
        end)

        TextButton_Toggle.MouseEnter:Connect(function()
          TweenService:Create(
            TextLabel_Toggle,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155,155,155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextButton_2_Toggle2,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        TextButton_Toggle.MouseLeave:Connect(function()
          TweenService:Create(
            TextLabel_Toggle,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextButton_2_Toggle2,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(7,7,7)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        TextButton_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        TextButton_2_Toggle.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        TextButton_2_Toggle2.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        ImageButton.MouseButton1Click:Connect(function()
          if check.toogle == false and check.loacker == true  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          elseif  check.loacker ==  true then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
          end
        end)

        if config == true then
          TweenService:Create(
            ImageButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          wait(0.1)
          TweenService:Create(
            ImageButton,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          check.toogle = true
          callback(check.toogle)
        end
        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.BorderSizePixel = 0
        lockerframe.Size = UDim2.new(0, 300, 0, 35)
        lockerframe.Position = UDim2.new(0.50, 0, 0.5, 0)
        lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

        local LockerImageLabel = Instance.new("ImageLabel")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1.000
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.45, 0, 0.5, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "http://www.roblox.com/asset/?id=6031082533"

        function check.togfunction:lock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 0.7}
          ):Play()
          wait(0.5)
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 25, 0, 25)}
          ):Play()

          check.loacker  = false
        end
        function check.togfunction:unlock()
          TweenService:Create(
            lockerframe,
            TweenInfo.new(.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,0.1),
            {BackgroundTransparency = 1}
          ):Play()
          wait(0.5)
          TweenService:Create(
            LockerImageLabel,
            TweenInfo.new(.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out,0.1),
            {Size = UDim2.new(0, 0, 0, 0)}
          ):Play()
          check.loacker  = true
        end
        return  check.togfunction
      end
      function ui4:Button(text,callback)
        local Button = Instance.new("Frame")
        local Btn = Instance.new("TextButton")
        local BtnName = Instance.new("TextLabel")
        local UICorner_12 = Instance.new("UICorner")

        Button.Name = "Button"
        Button.Parent = ScrollingFrame_Pageframe
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.000
        Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Button.Size = UDim2.new(0, 210, 0, 25)

        Btn.Name = "Btn"
        Btn.Parent = Button
        Btn.BackgroundColor3 = Color3.fromRGB(10,10,10)
        Btn.BackgroundTransparency = 0
        Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Btn.BorderSizePixel = 0
        Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
        Btn.Size = UDim2.new(0, 210, 0, 25)
        Btn.Text = ""
        Btn.AutoButtonColor = false

        BtnName.Name = "BtnName"
        BtnName.Parent = Btn
        BtnName.BackgroundTransparency = 1.000
        BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BtnName.BorderSizePixel = 0
        BtnName.Size = UDim2.new(0, 0, 0, 0)
        BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
        BtnName.Font = Enum.Font.Gotham
        BtnName.Text = "  ".. text
        BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
        BtnName.TextSize = 11.000
        BtnName.TextXAlignment = Enum.TextXAlignment.Center

        local Main_UiStroke3 = Instance.new("UIStroke")

        Main_UiStroke3.Thickness = 1
        Main_UiStroke3.Name = ""
        Main_UiStroke3.Parent = Btn
        Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke3.Transparency = 0

        UICorner_12.CornerRadius = UDim.new(0, 4)
        UICorner_12.Parent = Btn

        Btn.MouseEnter:Connect(function()
          TweenService:Create(
            Main_UiStroke3,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        Btn.MouseLeave:Connect(function()
          TweenService:Create(
            Main_UiStroke3,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        Btn.MouseButton1Click:Connect(function()
          BtnName.TextSize = 0
          TweenService:Create(
            BtnName,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 11} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          pcall(callback)
        end)
      end
      function ui4:Button2(text,callback)
        local Button = Instance.new("Frame")
        local Btn = Instance.new("TextButton")
        local BtnName = Instance.new("TextLabel")
        local UICorner_12 = Instance.new("UICorner")

        Button.Name = "Button"
        Button.Parent = ScrollingFrame_Pageframe
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.000
        Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Button.Size = UDim2.new(0, 210, 0, 25)

        Btn.Name = "Btn"
        Btn.Parent = Button
        Btn.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        Btn.BackgroundTransparency = 0
        Btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Btn.BorderSizePixel = 0
        Btn.Position = UDim2.new(0, 0, -0.00100000005, 0)
        Btn.Size = UDim2.new(0, 210, 0, 25)
        Btn.Text = ""
        Btn.AutoButtonColor = false

        BtnName.Name = "BtnName"
        BtnName.Parent = Btn
        BtnName.BackgroundTransparency = 1.000
        BtnName.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BtnName.BorderSizePixel = 0
        BtnName.Size = UDim2.new(0, 0, 0, 0)
        BtnName.Position = UDim2.new(0.5, 0, 0.5, 0)
        BtnName.Font = Enum.Font.Gotham
        BtnName.Text = "  ".. text
        BtnName.TextColor3 = Color3.fromRGB(255, 255, 255)
        BtnName.TextSize = 11.000
        BtnName.TextXAlignment = Enum.TextXAlignment.Center

        local Main_UiStroke3 = Instance.new("UIStroke")

        Main_UiStroke3.Thickness = 1
        Main_UiStroke3.Name = ""
        Main_UiStroke3.Parent = Btn
        Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke3.Transparency = 0

        UICorner_12.CornerRadius = UDim.new(0, 4)
        UICorner_12.Parent = Btn

        Btn.MouseEnter:Connect(function()
          TweenService:Create(
            Main_UiStroke3,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        Btn.MouseLeave:Connect(function()
          TweenService:Create(
            Main_UiStroke3,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        Btn.MouseButton1Click:Connect(function()
          BtnName.TextSize = 0
          TweenService:Create(
            BtnName,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 11} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          pcall(callback)
        end)
      end
      function ui4:Line()
        local LineFrame = Instance.new("Frame")

        LineFrame.Name = "LineFrame"
        LineFrame.Parent = ScrollingFrame_Pageframe
        LineFrame.BackgroundColor3 =  Color3.fromRGB(0, 0, 0)
        LineFrame.BorderSizePixel = 0
        LineFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
        LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        LineFrame.Size = UDim2.new(0, 335, 0, 1)
        LineFrame.BackgroundTransparency  = 0
        LineFrame.ClipsDescendants = true

        local LineFrame_BindConner = Instance.new("UICorner")

        LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
        LineFrame_BindConner.Name = ""
        LineFrame_BindConner.Parent = LineFrame
      end
      function ui4:Blank(count)
        if count == nil then
          count = 0.01
        end
        local BlankFrame = Instance.new("Frame")


        BlankFrame.Name = "Mainframenoti"
        BlankFrame.Parent = ScrollingFrame_Pageframe
        BlankFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
        BlankFrame.BackgroundTransparency = 1
        BlankFrame.BorderSizePixel = 0
        BlankFrame.ClipsDescendants = false
        BlankFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        BlankFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
        BlankFrame.Size = UDim2.new(0, 213, 0, count)
      end
      function ui4:Title(text)
        local tiframe = Instance.new("Frame")

        tiframe.Name = "tiframe"
        tiframe.Parent = ScrollingFrame_Pageframe
        tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tiframe.BackgroundTransparency = 1
        tiframe.BorderSizePixel = 0
        tiframe.ClipsDescendants = true
        tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
        tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
        tiframe.Size = UDim2.new(0, 210, 0, 20)

        local  lineframe3 = Instance.new("TextLabel")

        lineframe3.Parent = tiframe
        lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        lineframe3.BackgroundTransparency = 1
        lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)
        lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
        lineframe3.BorderSizePixel = 0
        lineframe3.Size = UDim2.new(0, 210, 0, 20)
        lineframe3.Font = Enum.Font.GothamSemibold
        lineframe3.Text = tostring(text)
        lineframe3.TextColor3 = Color3.fromRGB(255, 23, 46)
        lineframe3.TextSize = 13.000
        lineframe3.TextWrapped = true
      end
      function ui4:Label(text)

        local labelfuc = {}

        local Button = Instance.new("Frame")

        Button.Name = "Button"
        Button.Parent = ScrollingFrame_Pageframe
        Button.BackgroundColor3 = Color3.fromRGB(42,42,42)
        Button.BackgroundTransparency = 1
        Button.BorderSizePixel = 0
        Button.Size = UDim2.new(0, 210, 0, 25)

        local ButtonCorner = Instance.new("UICorner")

        ButtonCorner.CornerRadius = UDim.new(0, 4)
        ButtonCorner.Parent = Button

        local  Labelxd = Instance.new("TextLabel")

        Labelxd.Parent = Button
        Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Labelxd.BackgroundTransparency = 1
        Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
        Labelxd.Position = UDim2.new(0.5, 0, 0.5, 0)
        Labelxd.BorderSizePixel = 0
        Labelxd.Size = UDim2.new(0, 210, 0, 13)
        Labelxd.Font = Enum.Font.Gotham
        Labelxd.Text = tostring(text)
        Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
        Labelxd.TextSize = 12.000
        Labelxd.TextTransparency = 0.5
        Labelxd.TextXAlignment = Enum.TextXAlignment.Left
        Labelxd.TextWrapped = true

        function  labelfuc:Change(text2)
          Labelxd.Text = tostring(text2)
        end
        return  labelfuc
      end
      function ui4:Slider(text,floor,min,max,de,lol,callback)

        local sliderfunc = {}
        local SliderFrame = Instance.new("Frame")

        SliderFrame.Name = "SliderFrame"
        SliderFrame.Parent = ScrollingFrame_Pageframe
        SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        SliderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        SliderFrame.BackgroundTransparency = 1
        SliderFrame.ClipsDescendants = true
        SliderFrame.Position = UDim2.new(0.5, 0, 0.457317084, 0)
        SliderFrame.Size = UDim2.new(0, 210, 0, 47)

        local Main_UiStroke2 = Instance.new("UIStroke")

        Main_UiStroke2.Thickness = 1
        Main_UiStroke2.Name = ""
        Main_UiStroke2.Parent = SliderFrame
        Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2.Transparency = 0

        local SliderFrame_UICorner = Instance.new("UICorner")
        SliderFrame_UICorner.Name = "SliderFrame_UICorner"
        SliderFrame_UICorner.Parent = SliderFrame
        SliderFrame_UICorner.CornerRadius = UDim.new(0, 4)

        local LabelNameSlider = Instance.new("TextLabel")

        LabelNameSlider.Name = "LabelNameSlider"
        LabelNameSlider.Parent = SliderFrame
        LabelNameSlider.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelNameSlider.BackgroundTransparency = 1.000
        LabelNameSlider.BorderSizePixel = 0
        LabelNameSlider.Position = UDim2.new(0.3, 0, 0.285106242, 0)
        LabelNameSlider.Size = UDim2.new(0, 114, 0, 20)
        LabelNameSlider.Font = Enum.Font.Gotham
        LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelNameSlider.Text = tostring(text)
        LabelNameSlider.TextSize = 11.000
        LabelNameSlider.TextWrapped = true
        LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

        local Main_UiStroke2LabelNameSlider = Instance.new("UIStroke")

        Main_UiStroke2LabelNameSlider.Thickness = 1
        Main_UiStroke2LabelNameSlider.Name = ""
        Main_UiStroke2LabelNameSlider.Parent = LabelNameSlider
        Main_UiStroke2LabelNameSlider.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        Main_UiStroke2LabelNameSlider.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2LabelNameSlider.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2LabelNameSlider.Transparency = 0

        local ShowValueFrame = Instance.new("Frame")

        ShowValueFrame.Name = "ShowValueFrame"
        ShowValueFrame.Parent = SliderFrame
        ShowValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        ShowValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
        ShowValueFrame.BorderSizePixel = 0
        ShowValueFrame.Position = UDim2.new(0.85, 0, 0.285106391, 0)
        ShowValueFrame.Size = UDim2.new(0, 50, 0, 15)

        local Main_UiStroke3 = Instance.new("UIStroke")

        Main_UiStroke3.Thickness = 1
        Main_UiStroke3.Name = ""
        Main_UiStroke3.Parent = ShowValueFrame
        Main_UiStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke3.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke3.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke3.Transparency = 0

        local ShowValueFrameUICorner = Instance.new("UICorner")
        ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
        ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
        ShowValueFrameUICorner.Parent = ShowValueFrame

        local DefaultValue = Instance.new("ImageButton")

        DefaultValue.Name = "Imatog"
        DefaultValue.Parent = SliderFrame
        DefaultValue.BackgroundTransparency = 1.000
        DefaultValue.BorderSizePixel = 0
        DefaultValue.Position = UDim2.new(0.45, 0, 0.15, 0)
        DefaultValue.Size = UDim2.new(0, 15, 0, 15)
        DefaultValue.Image = "rbxassetid://7072721335"
        DefaultValue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

        local Addvalue = Instance.new("ImageButton")

        Addvalue.Name = "Imatog"
        Addvalue.Parent = SliderFrame
        Addvalue.BackgroundTransparency = 1.000
        Addvalue.BorderSizePixel = 0
        Addvalue.Position = UDim2.new(0.55, 0, 0.15, 0)
        Addvalue.Size = UDim2.new(0, 15, 0, 15)
        Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
        Addvalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

        local Deletevalue = Instance.new("ImageButton")

        Deletevalue.Name = "Imatog"
        Deletevalue.Parent = SliderFrame
        Deletevalue.BackgroundTransparency = 1.000
        Deletevalue.BorderSizePixel = 0
        Deletevalue.Position = UDim2.new(0.65, 0, 0.15, 0)
        Deletevalue.Size = UDim2.new(0, 15, 0, 15)
        Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
        Deletevalue.ImageColor3 =  Color3.fromRGB(255, 23, 46)

        local CustomValue = Instance.new("TextBox")

        CustomValue.Name = "CustomValue"
        CustomValue.Parent = ShowValueFrame
        CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
        CustomValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
        CustomValue.BackgroundTransparency = 1.000
        CustomValue.ClipsDescendants = true
        CustomValue.Position = UDim2.new(0.501112819, 0, 0.5, 0)
        CustomValue.Size = UDim2.new(0, 50, 0, 26)
        CustomValue.Font = Enum.Font.Gotham
        CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
        CustomValue.Text = ""
        CustomValue.TextSize = 11
        CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
        if floor == true then
          CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
        else
          CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
        end

        local ValueFrame = Instance.new("Frame")

        ValueFrame.Name = "ValueFrame"
        ValueFrame.Parent = SliderFrame
        ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        ValueFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
        ValueFrame.BorderSizePixel = 0
        ValueFrame.Position = UDim2.new(0.499824077, 0, 0.800000012, 0)
        ValueFrame.Size = UDim2.new(0, 195, 0, 5)

        local Main_UiStroke = Instance.new("UIStroke")

        Main_UiStroke.Thickness = 1
        Main_UiStroke.Name = ""
        Main_UiStroke.Parent = ValueFrame
        Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke.Transparency = 0

        local ValueFrameUICorner = Instance.new("UICorner")
        ValueFrameUICorner.CornerRadius = UDim.new(0, 4)
        ValueFrameUICorner.Name = "ShowValueFrameUICorner"
        ValueFrameUICorner.Parent = ValueFrame

        local PartValue = Instance.new("Frame")

        PartValue.Name = "PartValue"
        PartValue.Parent = ValueFrame
        PartValue.Active = true
        PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
        PartValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
        PartValue.BackgroundTransparency = 1.000
        PartValue.Position = UDim2.new(0.498982757, 0, 0.300000012, 0)
        PartValue.Size = UDim2.new(0, 195, 0, 5)

        local MainValue = Instance.new("Frame")

        MainValue.Name = "MainValue"
        MainValue.Parent = PartValue
        MainValue.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        MainValue.Position = UDim2.new(0.00101725257, 0, 0.200000003, 0)
        MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
        MainValue.BorderSizePixel = 0

        local MainValueUICorner = Instance.new("UICorner")
        MainValueUICorner.CornerRadius = UDim.new(0, 4)
        MainValueUICorner.Name = "a"
        MainValueUICorner.Parent = MainValue

        local ConneValue = Instance.new("Frame")

        ConneValue.Name = "ConneValue"
        ConneValue.Parent = PartValue
        ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
        ConneValue.BackgroundColor3 = Color3.fromRGB(10,10,10)
        ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.6,0, 0)
        ConneValue.Size = UDim2.new(0, 0, 0, 0)
        ConneValue.BorderSizePixel = 0

        local UICorner = Instance.new("UICorner")

        UICorner.CornerRadius = UDim.new(0, 300)
        UICorner.Parent = ConneValue
        local function move(input)
          local pos =
            UDim2.new(
              math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
              0,
              0.6,
              0
            )
          local pos1 =
            UDim2.new(
              math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
              0,
              0,
              5
            )

          MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

          ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
          if floor == true then
            local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
            CustomValue.Text = tostring(value)
            callback(value)
          else
            local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
            CustomValue.Text = tostring(value)
            callback(value)
          end



        end
        local dragging = false
        ConneValue.InputBegan:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = true

            end
          end
        )
        ConneValue.InputEnded:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = false

            end
          end
        )
        SliderFrame.InputBegan:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = true

            end
          end
        )
        SliderFrame.InputEnded:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = false

            end
          end
        )


        ValueFrame.InputBegan:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = true

            end
          end
        )
        ValueFrame.InputEnded:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              dragging = false

            end
          end
        )
        game:GetService("UserInputService").InputChanged:Connect(function(input)
          if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            move(input)
          end
        end)

        CustomValue.FocusLost:Connect(function()
          if CustomValue.Text == "" then
            CustomValue.Text  = de
          end
          if  tonumber(CustomValue.Text) > max then
            CustomValue.Text  = max
          end
          MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
          ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
          if floor == true then
            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
          else
            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
          end
          pcall(callback, CustomValue.Text)
        end)
        Addvalue.MouseButton1Click:Connect(function ()
          if CustomValue.Text == "" then
            CustomValue.Text  = de
          end
          pcall(function()
            CustomValue.Text  = CustomValue.Text  - tonumber(lol)
          end)
          if  tonumber(CustomValue.Text) > max then
            CustomValue.Text  = max
          end
          if  tonumber(CustomValue.Text) < min then
            CustomValue.Text  = min
          end
          MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
          ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
          if floor == true then
            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
          else
            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
          end
          callback({
            ["s"] =  CustomValue.Text;
          })
          --   callback({ tonumber(CustomValue.Text),check2.toogle2})
          --  pcall(callback, CustomValue.Text)
        end)

        Deletevalue.MouseButton1Click:Connect(function ()
          if CustomValue.Text == "" then
            CustomValue.Text  = de
          end
          pcall(function()
            CustomValue.Text  = CustomValue.Text  + tonumber(lol)
          end)
          if  tonumber(CustomValue.Text) > max then
            CustomValue.Text  = max
          end
          if  tonumber(CustomValue.Text) < min then
            CustomValue.Text  = min
          end
          MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
          ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
          if floor == true then
            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
          else
            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
          end
          callback({
            ["s"] =  CustomValue.Text;
          })
          --callback({ tonumber(CustomValue.Text),check2.toogle2})
          --  pcall(callback, CustomValue.Text)
        end)
        DefaultValue.MouseButton1Click:Connect(function()
          if CustomValue.Text == "" then
            CustomValue.Text  = de
          end
          pcall(function()
            CustomValue.Text  = tonumber(de)
          end)
          if  tonumber(CustomValue.Text) > max then
            CustomValue.Text  = max
          end
          if  tonumber(CustomValue.Text) < min then
            CustomValue.Text  = min
          end
          MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
          ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)

          if floor == true then
            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
          else
            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
          end
          callback({
            ["s"] =  CustomValue.Text;
          })
        end)

        function sliderfunc:Update(value)
          MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
          CustomValue.Text = value

          pcall(function()
            callback(value)
          end)
        end
        return sliderfunc
      end
      function ui4:Dropdown(text,option,callback)
        local DropFrame = Instance.new("Frame")

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScrollingFrame_Pageframe
        DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        DropFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
        DropFrame.BorderSizePixel = 0
        DropFrame.ClipsDescendants = true
        DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropFrame.Size = UDim2.new(0, 210, 0, 30)

        local Main_UiStroke = Instance.new("UIStroke")

        Main_UiStroke.Thickness = 1
        Main_UiStroke.Name = ""
        Main_UiStroke.Parent = DropFrame
        Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke.Transparency = 0

        local ConnerDropFrame = Instance.new("UICorner")

        ConnerDropFrame.CornerRadius = UDim.new(0, 4)
        ConnerDropFrame.Name = "ConnerDropFrame"
        ConnerDropFrame.Parent = DropFrame

        local LabelFrameDrop = Instance.new("TextLabel")

        LabelFrameDrop.Name = "LabelFrameDrop"
        LabelFrameDrop.Parent = DropFrame
        LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelFrameDrop.BackgroundTransparency = 1.000
        LabelFrameDrop.Position = UDim2.new(0.0328638479, 0, 0, 0)
        LabelFrameDrop.Size = UDim2.new(0, 195, 0, 30)
        LabelFrameDrop.Font = Enum.Font.Gotham
        LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelFrameDrop.TextSize = 11.000
        LabelFrameDrop.TextWrapped = true
        LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left
        LabelFrameDrop.Text = tostring(text).." :"

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Parent = LabelFrameDrop
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BackgroundTransparency = 1
        ScolDown.BorderSizePixel = 0
        ScolDown.Position = UDim2.new(0, 0, 1, 0)
        ScolDown.Size = UDim2.new(0, 195, 0, 115)
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)
        ScolDown.ScrollBarThickness = 3

        local UIListLayoutlist = Instance.new("UIListLayout")
        local UIPaddinglist = Instance.new("UIPadding")

        UIListLayoutlist.Name = "UIListLayoutlist"
        UIListLayoutlist.Parent = ScolDown
        UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayoutlist.Padding = UDim.new(0, 5)

        UIPaddinglist.Name = "UIPaddinglist"
        UIPaddinglist.Parent = ScolDown
        UIPaddinglist.PaddingLeft = UDim.new(0, 12)
        UIPaddinglist.PaddingTop = UDim.new(0, 5)

        local ButtonDrop = Instance.new("TextButton")

        ButtonDrop.Name = "ButtonDrop"
        ButtonDrop.Parent = DropFrame
        ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonDrop.BackgroundTransparency = 1.000
        ButtonDrop.ClipsDescendants = true
        ButtonDrop.Size = UDim2.new(0, 335, 0, 30)
        ButtonDrop.AutoButtonColor = false
        ButtonDrop.Font = Enum.Font.SourceSans
        ButtonDrop.Text = ""
        ButtonDrop.TextColor3 = Color3.fromRGB(0, 0, 0)
        ButtonDrop.TextSize = 14.000
        ButtonDrop.TextWrapped = true

        local dog = false

        local FrameSize = 75
        local cout = 0
        for i , v in pairs(option) do
          cout =cout + 1
          if cout == 1 then
            FrameSize = 75
          elseif cout == 2 then
            FrameSize = 110
          elseif cout >= 3 then
            FrameSize = 150
          end

          local ListFrame = Instance.new("Frame")

          ListFrame.Name = "ListFrame"
          ListFrame.Parent = ScolDown
          ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
          ListFrame.BackgroundColor3 = Color3.fromRGB(67,67,67)
          ListFrame.BackgroundTransparency = 1
          ListFrame.ClipsDescendants = true
          ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
          ListFrame.Size = UDim2.new(0, 175, 0, 30)

          local TextLabel_TapDro2p = Instance.new("TextLabel")

          TextLabel_TapDro2p.Name = "TextLabel_TapDro2p"
          TextLabel_TapDro2p.Parent = ListFrame
          TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
          TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(249, 53, 139)
          TextLabel_TapDro2p.BackgroundTransparency = 1.000
          TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
          TextLabel_TapDro2p.Size = UDim2.new(0, 205, 0, 30)
          TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
          TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
          TextLabel_TapDro2p.TextSize = 11
          TextLabel_TapDro2p.Text = tostring(v)

          local ButtonDrop2 = Instance.new("TextButton")

          ButtonDrop2.Name = "ButtonDrop2"
          ButtonDrop2.Parent = ListFrame
          ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          ButtonDrop2.BackgroundTransparency = 1
          ButtonDrop2.BorderSizePixel = 0
          ButtonDrop2.ClipsDescendants = true
          ButtonDrop2.Position = UDim2.new(-0.0666666701, 0, 0, 0)
          ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
          ButtonDrop2.AutoButtonColor = false
          ButtonDrop2.Text = ""
          ButtonDrop2.Font = Enum.Font.SourceSans
          ButtonDrop2.TextColor3 = Color3.fromRGB(0, 0, 0)
          ButtonDrop2.TextSize = 14.000
          ButtonDrop2.TextWrapped = true

          ButtonDrop2.MouseEnter:Connect(function ()
            TweenService:Create(
              TextLabel_TapDro2p,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end)

          ButtonDrop2.MouseLeave:Connect(function ()
            TweenService:Create(
              TextLabel_TapDro2p,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end)

          ButtonDrop2.MouseButton1Click:Connect(function()
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            LabelFrameDrop.Text =  text.." : "..tostring(v)
            callback(v)
            dog = not dog
          end)
          ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end

        DropFrame.MouseEnter:Connect(function()
          TweenService:Create(
            Main_UiStroke,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelFrameDrop,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        DropFrame.MouseLeave:Connect(function()
          TweenService:Create(
            Main_UiStroke,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelFrameDrop,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        ButtonDrop.MouseButton1Click:Connect(function()
          if dog == false then
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
          else
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
          end
          dog = not dog
        end)
        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

        local dropfunc = {}

        function dropfunc:Clear()
          LabelFrameDrop.Text = tostring(text).." :"
          TweenService:Create(
            DropFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          dog = not dog
          for i, v in next, ScolDown:GetChildren() do
            if v:IsA("Frame") then
              v:Destroy()
            end
          end

          function dropfunc:Add(t)

            local ListFrame = Instance.new("Frame")

            ListFrame.Name = "ListFrame"
            ListFrame.Parent = ScolDown
            ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- Color3.fromRGB(249, 53, 139)
            ListFrame.BorderSizePixel = 0
            ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ListFrame.Size = UDim2.new(0, 175, 0, 30) -- UDim2.new(0, 213, 0, 35)
            ListFrame.BackgroundTransparency  = 1
            ListFrame.ClipsDescendants = true

            local TextLabel_TapDro2p = Instance.new("TextLabel")

            TextLabel_TapDro2p.Parent = ListFrame
            TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
            TextLabel_TapDro2p.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
            TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextLabel_TapDro2p.Size =  UDim2.new(0, 205, 0, 30)
            TextLabel_TapDro2p.Font = Enum.Font.GothamSemibold
            TextLabel_TapDro2p.Text = tostring(t)
            TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDro2p.TextSize = 11.000
            TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_TapDro2p.BackgroundTransparency = 1
            TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

            local ButtonDrop2 = Instance.new("TextButton")

            ButtonDrop2.Parent = ListFrame
            ButtonDrop2.Name = "ButtonDrop2"
            ButtonDrop2.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
            ButtonDrop2.Size = UDim2.new(0, 205, 0, 30)
            ButtonDrop2.Font = Enum.Font.SourceSansSemibold
            ButtonDrop2.Text = ""
            ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop2.TextSize = 13.000
            --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
            ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop2.BackgroundTransparency = 1
            ButtonDrop2.TextWrapped = true
            ButtonDrop2.AutoButtonColor = false
            ButtonDrop2.ClipsDescendants = true

            ButtonDrop2.MouseEnter:Connect(function ()
              TweenService:Create(
                TextLabel_TapDro2p,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
              ):Play()
            end)

            ButtonDrop2.MouseLeave:Connect(function ()
              TweenService:Create(
                TextLabel_TapDro2p,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
              ):Play()
            end)

            ButtonDrop2.MouseButton1Click:Connect(function()
              TweenService:Create(
                DropFrame,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 210, 0, 30)} -- UDim2.new(0, 128, 0, 25)
              ):Play()
              callback(t)
              dog = not dog
            end)
          end
          ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        return dropfunc
      end
      function ui4:Textbox(text,text2,callback)
        local TextFrame = Instance.new("Frame")

        TextFrame.Name = "TextFrame"
        TextFrame.Parent = ScrollingFrame_Pageframe
        TextFrame.Active = true
        TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        TextFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextFrame.BackgroundTransparency = 1.000
        TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextFrame.Size = UDim2.new(0, 213, 0, 70)

        local LabelNameSliderxd = Instance.new("TextLabel")

        LabelNameSliderxd.Name = "LabelNameSliderxd"
        LabelNameSliderxd.Parent = TextFrame
        LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelNameSliderxd.BackgroundTransparency = 1.000
        LabelNameSliderxd.BorderSizePixel = 0
        LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.200000003, 0)
        LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
        LabelNameSliderxd.Font = Enum.Font.Gotham
        LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
        LabelNameSliderxd.TextSize = 12.000
        LabelNameSliderxd.Text = tostring(text)

        local ConerTextBox = Instance.new("UICorner")

        ConerTextBox.CornerRadius = UDim.new(0, 4)
        ConerTextBox.Name = "ConerTextBox"
        ConerTextBox.Parent = TextFrame

        local FrameBox = Instance.new("Frame")

        FrameBox.Name = "FrameBox"
        FrameBox.Parent = TextFrame
        FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
        FrameBox.BackgroundColor3 = Color3.fromRGB(10,10,10)
        FrameBox.BorderSizePixel = 0
        FrameBox.ClipsDescendants = true
        FrameBox.Position = UDim2.new(0.5, 0, 0.649999976, 0)
        FrameBox.Size = UDim2.new(0, 213, 0, 30)

        local ConerTextBox2 = Instance.new("UICorner")

        --Properties:

        ConerTextBox2.CornerRadius = UDim.new(0, 4)
        ConerTextBox2.Name = "ConerTextBox2"
        ConerTextBox2.Parent = FrameBox

        local TextBox2Stroke = Instance.new("UIStroke")

        TextBox2Stroke.Thickness = 1
        TextBox2Stroke.Name = ""
        TextBox2Stroke.Parent = FrameBox
        TextBox2Stroke.LineJoinMode = Enum.LineJoinMode.Round
        TextBox2Stroke.Color = Color3.fromRGB(255, 23, 46)
        TextBox2Stroke.Transparency = 0.7

        local TextFrame2 = Instance.new("TextBox")

        TextFrame2.Name = "TextFrame2"
        TextFrame2.Parent = FrameBox
        TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
        TextFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextFrame2.BackgroundTransparency = 1.000
        TextFrame2.BorderSizePixel = 0
        TextFrame2.ClipsDescendants = true
        TextFrame2.Position = UDim2.new(0.499413133, 0, 0.5, 0)
        TextFrame2.Size = UDim2.new(0, 212, 0, 35)
        TextFrame2.Font = Enum.Font.GothamSemibold
        TextFrame2.PlaceholderText = text2
        TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
        TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextFrame2.TextSize = 11.000

        TextFrame.MouseEnter:Connect(function()
          TweenService:Create(
            TextFrame2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextFrame2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelNameSliderxd,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextBox2Stroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        TextFrame.MouseLeave:Connect(function()
          TweenService:Create(
            FrameBox,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(10,10,10)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextFrame2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextBox2Stroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelNameSliderxd,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextFrame2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end)

        TextFrame2.FocusLost:Connect(function ()
          if #TextFrame2.Text > 0 then
            pcall(callback,TextFrame2.Text)
          end
        end)
      end
      function ui4:Color(text,preset,callback)
        local Pixker = Instance.new("Frame")

        Pixker.Name = "Pixker"
        Pixker.Parent = ScrollingFrame_Pageframe
        Pixker.BackgroundColor3 = Color3.fromRGB(10,10,10)
        Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
        Pixker.Size = UDim2.new(0, 210, 0, 33)
        Pixker.BackgroundTransparency = 0
        Pixker.BorderSizePixel = 0
        Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
        Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
        Pixker.ClipsDescendants = true


        local BoxColorCorner2 = Instance.new("UICorner")

        BoxColorCorner2.CornerRadius = UDim.new(0, 4)
        BoxColorCorner2.Name = "BoxColorCorner"
        BoxColorCorner2.Parent = Pixker

        local FrameStroke = Instance.new("UIStroke")

        FrameStroke.Thickness = 1
        FrameStroke.Name = ""
        FrameStroke.Parent = Pixker
        FrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        FrameStroke.Color = Color3.fromRGB(0, 0, 0)
        FrameStroke.Transparency = 0


        local TextFrameColor = Instance.new("TextLabel")

        TextFrameColor.Parent = Pixker
        TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextFrameColor.BorderSizePixel = 0
        TextFrameColor.Size = UDim2.new(0, 375, 0, 34)
        TextFrameColor.Font = Enum.Font.SourceSans
        TextFrameColor.Text = "  "
        TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextFrameColor.TextSize = 14.000
        TextFrameColor.BackgroundTransparency = 1
        TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

        local TextReal = Instance.new("TextLabel")

        TextReal.Parent = TextFrameColor
        TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextReal.BorderSizePixel = 0
        TextReal.Size = UDim2.new(0, 140, 0, 34)
        TextReal.Font = Enum.Font.Gotham
        TextReal.Text = text
        TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
        TextReal.TextSize = 11.000
        TextReal.BackgroundTransparency = 1
        TextReal.Position = UDim2.new(0.03, 0, 0., 0)
        TextReal.TextXAlignment = Enum.TextXAlignment.Left

        local BoxColor = Instance.new("Frame")

        BoxColor.Name = "BoxColor"
        BoxColor.Parent = TextFrameColor
        BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BoxColor.Position = UDim2.new(0.5, 0, 0.5, 0)
        BoxColor.Size = UDim2.new(0, 35, 0, 19)
        BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

        local FrameStrokea = Instance.new("UIStroke")

        FrameStrokea.Thickness = 1
        FrameStrokea.Name = ""
        FrameStrokea.Parent = BoxColor
        FrameStrokea.LineJoinMode = Enum.LineJoinMode.Round
        FrameStrokea.Color = Color3.fromRGB(0, 0, 0)
        FrameStrokea.Transparency = 0.7

        local BoxColorCorner = Instance.new("UICorner")

        BoxColorCorner.CornerRadius = UDim.new(0, 4)
        BoxColorCorner.Name = "BoxColorCorner"
        BoxColorCorner.Parent = BoxColor

        local TextButton_Dropdown = Instance.new("TextButton")


        TextButton_Dropdown.Parent = TextFrameColor
        TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        TextButton_Dropdown.BorderSizePixel = 0
        TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
        TextButton_Dropdown.Size = UDim2.new(0, 375, 0, 33)
        TextButton_Dropdown.Font = Enum.Font.SourceSans
        TextButton_Dropdown.Text = "  "
        TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Dropdown.TextSize = 14.000
        TextButton_Dropdown.AutoButtonColor = false
        --TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
        TextButton_Dropdown.BackgroundTransparency = 1



        Pixker.MouseEnter:Connect(function()
          TweenService:Create(
            FrameStroke,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(255, 23, 46)}
          ):Play()
          TweenService:Create(
            TextReal,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 23, 46)}
          ):Play()

        end)
        Pixker.MouseLeave:Connect(function()
          TweenService:Create(
            FrameStroke,
            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Color = Color3.fromRGB(0, 0, 0)}
          ):Play()
          TweenService:Create(
            TextReal,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155,155, 155)}
          ):Play()
        end)
        -- Rainbow Toggle
        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle.Parent = TextFrameColor
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(5,5,5)
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.Position = UDim2.new(0.0807512328, 0, 1.9, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 21, 0, 21)
        TextButton_2_Toggle.AutoButtonColor = false
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 14.000

        local Main_UiStroke = Instance.new("UIStroke")

        Main_UiStroke.Thickness = 1
        Main_UiStroke.Name = ""
        Main_UiStroke.Parent = TextButton_2_Toggle
        Main_UiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke.Transparency = 0

        local TextButton_2_Toggle2 = Instance.new("TextButton")

        TextButton_2_Toggle2.Name = "TextButton_2_Toggle"
        TextButton_2_Toggle2.Parent = TextButton_2_Toggle
        TextButton_2_Toggle2.BackgroundColor3 = Color3.fromRGB(7,7,7)
        TextButton_2_Toggle2.BorderSizePixel = 0
        TextButton_2_Toggle2.Position = UDim2.new(0, 2, 0, 2)
        TextButton_2_Toggle2.Size = UDim2.new(0, 17, 0, 17)
        TextButton_2_Toggle2.AutoButtonColor = false
        TextButton_2_Toggle2.Font = Enum.Font.SourceSans
        TextButton_2_Toggle2.Text = " "
        TextButton_2_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle2.TextSize = 14.000

        local UICorner2 = Instance.new("UICorner")

        UICorner2.CornerRadius = UDim.new(0, 6)
        UICorner2.Parent = TextButton_2_Toggle2

        local Main_UiStroke2 = Instance.new("UIStroke")

        Main_UiStroke2.Thickness = 1
        Main_UiStroke2.Name = ""
        Main_UiStroke2.Parent = TextButton_2_Toggle2
        Main_UiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        Main_UiStroke2.LineJoinMode = Enum.LineJoinMode.Round
        Main_UiStroke2.Color = Color3.fromRGB(0, 0, 0)
        Main_UiStroke2.Transparency = 0

        local UICorner = Instance.new("UICorner")

        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = TextButton_2_Toggle

        local ImageButton = Instance.new("ImageButton")

        ImageButton.Parent = TextButton_2_Toggle
        ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        ImageButton.BackgroundTransparency = 0
        ImageButton.BorderSizePixel = 0
        ImageButton.AutoButtonColor = false
        ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
        ImageButton.Size = UDim2.new(0, 0, 0, 0)

        local UICorner6 = Instance.new("UICorner")

        UICorner6.CornerRadius = UDim.new(0, 6)
        UICorner6.Parent = ImageButton

        local TextButton_3_Toggle2 = Instance.new("TextLabel")

        TextButton_3_Toggle2.Parent = TextButton_2_Toggle
        TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
        TextButton_3_Toggle2.BorderColor3 = Color3.fromRGB(249, 53, 139)
        TextButton_3_Toggle2.BorderSizePixel = 0
        TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle2.Position = UDim2.new(2.5, 0, 0.5, 0)
        TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
        TextButton_3_Toggle2.Font = Enum.Font.Gotham
        TextButton_3_Toggle2.Text = "Rainbow"
        TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle2.TextSize = 11.000
        TextButton_3_Toggle2.BackgroundTransparency = 1

        local OMF = Instance.new("TextButton")

        OMF.Parent = TextButton_2_Toggle
        OMF.BackgroundTransparency = 1
        OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OMF.BorderSizePixel = 0
        OMF.Size = UDim2.new(0, 100, 0, 20)
        OMF.AutoButtonColor = false
        OMF.Font = Enum.Font.SourceSans
        OMF.Text = " "
        OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
        OMF.TextSize = 12.000
        OMF.AnchorPoint = Vector2.new(0.5, 0.5)
        OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

        local Color =  Instance.new("ImageLabel")

        Color.Name = "Color"
        Color.Parent = TextFrameColor
        Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
        Color.Position = UDim2.new(0.03,0,4,0)
        Color.Size = UDim2.new(0, 195, 0, 40)
        Color.ZIndex = 0
        Color.BorderSizePixel = 0
        Color.Image = "rbxassetid://4155801252"

        local ColorFucj = Instance.new("UICorner")

        ColorFucj.CornerRadius = UDim.new(0, 4)
        ColorFucj.Name = ""
        ColorFucj.Parent = Color

        local ColorSelection =  Instance.new("ImageLabel")

        ColorSelection.Name = "ColorSelection"
        ColorSelection.Parent = Color
        ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ColorSelection.BackgroundTransparency = 1.000
        ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        ColorSelection.Size = UDim2.new(0, 18, 0, 18)
        ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        ColorSelection.ScaleType = Enum.ScaleType.Fit
        ColorSelection.Visible = true

        local Hue =  Instance.new("ImageLabel")

        Hue.Name = "Hue2"
        Hue.Parent = TextFrameColor
        Hue.Position = UDim2.new(0.03,0,3,0)
        Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hue.Size = UDim2.new(0, 195, 0, 25)
        Hue.ZIndex = 0
        Hue.BorderSizePixel = 0

        local ColorFucj2 = Instance.new("UICorner")

        ColorFucj2.CornerRadius = UDim.new(0, 4)
        ColorFucj2.Name = ""
        ColorFucj2.Parent = Hue

        local HueGradient = Instance.new("UIGradient")

        HueGradient.Color = ColorSequence.new {
          ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
          ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
          ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
          ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
          ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
          ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
          ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
        }
        HueGradient.Rotation = 0
        HueGradient.Name = "HueGradient"
        HueGradient.Parent = Hue

        local HueSelection =  Instance.new("ImageLabel")

        HueSelection.Name = "HueSelection"
        HueSelection.Parent = Hue
        HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HueSelection.BackgroundTransparency = 1.000
        HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        HueSelection.Size = UDim2.new(0, 18, 0, 18)
        HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        HueSelection.ScaleType = Enum.ScaleType.Fit
        HueSelection.Visible = true


        local BTN_XD = Instance.new("TextButton")

        BTN_XD.Parent = TextFrameColor
        BTN_XD.BackgroundColor3 = Color3.fromRGB(10,10,10)
        BTN_XD.BorderColor3 = Color3.fromRGB(10,10,10)
        BTN_XD.BorderSizePixel = 0
        BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
        BTN_XD.Position = UDim2.new(0.4, 0, 1.9, 0)
        BTN_XD.Size = UDim2.new(0, 50, 0, 25)
        BTN_XD.Font = Enum.Font.GothamSemibold
        BTN_XD.Text = "Confirm"
        BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.TextSize = 11.000
        BTN_XD.AutoButtonColor = false

        local BTN_XD_COnner = Instance.new("UICorner")

        BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
        BTN_XD_COnner.Name = ""
        BTN_XD_COnner.Parent = BTN_XD



        local BTN_XDStroke = Instance.new("UIStroke")

        BTN_XDStroke.Thickness = 1
        BTN_XDStroke.Name = ""
        BTN_XDStroke.Parent = BTN_XD
        BTN_XDStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        BTN_XDStroke.LineJoinMode = Enum.LineJoinMode.Round
        BTN_XDStroke.Color = Color3.fromRGB(255, 23, 46)
        BTN_XDStroke.Transparency = 0.7


        local UwU = false

        OMF.MouseButton1Click:Connect(function()
          if UwU == false  then
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 21, 0, 21)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          else
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 25, 0, 25)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
              ImageButton,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end
          UwU = not UwU
        end)

        OMF.MouseButton1Down:Connect(function()
          RainbowColorPicker = not RainbowColorPicker

          if ColorInput then
            ColorInput:Disconnect()
          end

          if HueInput then
            HueInput:Disconnect()
          end

          if RainbowColorPicker then


            OldToggleColor = BoxColor.BackgroundColor3
            OldColor = Color.BackgroundColor3
            OldColorSelectionPosition = ColorSelection.Position
            OldHueSelectionPosition = HueSelection.Position

            while RainbowColorPicker do
              BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
              Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

              ColorSelection.Position = UDim2.new(1, 0, 0, 0)
              HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

              pcall(callback, BoxColor.BackgroundColor3)
              wait()
            end
          elseif not RainbowColorPicker then

            BoxColor.BackgroundColor3 = OldToggleColor
            Color.BackgroundColor3 = OldColor

            ColorSelection.Position = OldColorSelectionPosition
            HueSelection.Position = OldHueSelectionPosition

            pcall(callback, BoxColor.BackgroundColor3)
          end
        end
        )
        ImageButton.MouseButton1Down:Connect(
          function()
            RainbowColorPicker = not RainbowColorPicker

            if ColorInput then
              ColorInput:Disconnect()
            end

            if HueInput then
              HueInput:Disconnect()
            end

            if RainbowColorPicker then


              OldToggleColor = BoxColor.BackgroundColor3
              OldColor = Color.BackgroundColor3
              OldColorSelectionPosition = ColorSelection.Position
              OldHueSelectionPosition = HueSelection.Position

              while RainbowColorPicker do
                BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

                pcall(callback, BoxColor.BackgroundColor3)
                wait()
              end
            elseif not RainbowColorPicker then

              BoxColor.BackgroundColor3 = OldToggleColor
              Color.BackgroundColor3 = OldColor

              ColorSelection.Position = OldColorSelectionPosition
              HueSelection.Position = OldHueSelectionPosition

              pcall(callback, BoxColor.BackgroundColor3)
            end
          end
        )


        local function UpdateColorPicker(nope)
          BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
          Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

          pcall(callback, BoxColor.BackgroundColor3)
        end
        ColorH =
          1 -
          (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
            Hue.AbsoluteSize.Y)
        ColorS =
          (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
            Color.AbsoluteSize.X)
        ColorV =
          1 -
          (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
            Color.AbsoluteSize.Y)

        BoxColor.BackgroundColor3 = preset
        Color.BackgroundColor3 = preset
        pcall(callback, BoxColor.BackgroundColor3)

        local RainbowColorPicker = false

        Color.InputBegan:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              if RainbowColorPicker then
                return
              end

              if ColorInput then
                ColorInput:Disconnect()
              end

              ColorInput =
                RunService.RenderStepped:Connect(
                  function()
                  local ColorX =
                    (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                      Color.AbsoluteSize.X)
                  local ColorY =
                    (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                      Color.AbsoluteSize.Y)

                  ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                  ColorS = ColorX
                  ColorV = 1 - ColorY

                  UpdateColorPicker(true)
                end
                )
            end
          end
        )


        Color.InputEnded:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              if ColorInput then
                ColorInput:Disconnect()
              end
            end
          end
        )

        Hue.InputBegan:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              if RainbowColorPicker then
                return
              end

              if HueInput then
                HueInput:Disconnect()
              end

              HueInput =
                RunService.RenderStepped:Connect(
                  function()
                  local HueY =
                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                      Hue.AbsoluteSize.Y)
                  local HueX =
                    (math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
                      Hue.AbsoluteSize.X)

                  HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
                  ColorH = 1 - HueY

                  UpdateColorPicker(true)
                end
                )
            end
          end
        )

        Hue.InputEnded:Connect(
          function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
              if HueInput then
                HueInput:Disconnect()
              end
            end
          end
        )
        local sk = false
        TextButton_Dropdown.MouseButton1Click:Connect(function()
          if sk == false then
            TweenService:Create(
              Pixker,
              TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, 180)}
            ):Play()
          else
            TweenService:Create(
              Pixker,
              TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, 33)}
            ):Play()
          end
          sk = not sk
        end
        )
        BTN_XD.MouseButton1Click:Connect(
          function()
            TweenService:Create(
              Pixker,
              TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 210, 0, 33)}
            ):Play()
            sk = not sk
          end)
      end
      function ui4:MultiDropdown(text,use,option,callback)

        local location = option.location or self.flags
        local flag = not use and option.flag or ""
        local callback = callback or function() end
        local list = option.list or {}
        local default = list.default or list[1].Name

        if not use then
          location[flag] = default
        end


        local DropFrame = Instance.new("Frame")

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScrollingFrame_Pageframe
        DropFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)-- Color3.fromRGB(249, 53, 139)
        DropFrame.BorderSizePixel = 0
        DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
        DropFrame.BackgroundTransparency  = 0
        DropFrame.ClipsDescendants = true

        local ConnerDropFrame = Instance.new("UICorner")

        ConnerDropFrame.CornerRadius = UDim.new(0, 4)
        ConnerDropFrame.Name = ""
        ConnerDropFrame.Parent = DropFrame

        local DropFrameStroke = Instance.new("UIStroke")

        DropFrameStroke.Thickness = 1
        DropFrameStroke.Name = ""
        DropFrameStroke.Parent = DropFrame
        DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        DropFrameStroke.Color = Color3.fromRGB(255, 23, 46)
        DropFrameStroke.Transparency = 0.7





        local LabelFrameDrop = Instance.new("TextLabel")

        LabelFrameDrop.Parent = DropFrame
        LabelFrameDrop.Name = "LabelFrameDrop"
        LabelFrameDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
        LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
        LabelFrameDrop.Font = Enum.Font.SourceSansSemibold
        LabelFrameDrop.Text = ""
        LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelFrameDrop.TextSize = 14.000
        --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelFrameDrop.BackgroundTransparency = 1
        LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


        local TextLabel_TapDrop = Instance.new("TextLabel")

        TextLabel_TapDrop.Parent = LabelFrameDrop
        TextLabel_TapDrop.Name = "TextLabel_TapDrop"
        TextLabel_TapDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
        TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
        TextLabel_TapDrop.Font = Enum.Font.SourceSansSemibold
        TextLabel_TapDrop.Text = tostring(text)
        TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextLabel_TapDrop.TextSize = 14.000
        --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_TapDrop.BackgroundTransparency = 1
        TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


        local DropArbt_listimage = Instance.new("ImageButton")

        DropArbt_listimage.Parent = LabelFrameDrop
        DropArbt_listimage.BackgroundTransparency = 1.000
        DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
        DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
        DropArbt_listimage.BorderSizePixel = 0
        DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
        DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
        DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
        ScolDown.Parent = LabelFrameDrop
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BorderSizePixel = 0
        ScolDown.Size = UDim2.new(0, 205, 0, 115)
        ScolDown.ScrollBarThickness = 3
        ScolDown.ClipsDescendants = true
        ScolDown.BackgroundTransparency = 1
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

        local UIListLayoutlist = Instance.new("UIListLayout")
        local UIPaddinglist = Instance.new("UIPadding")

        UIListLayoutlist.Name = "UIListLayoutlist"
        UIListLayoutlist.Parent = ScolDown
        UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayoutlist.Padding = UDim.new(0, 5)

        UIPaddinglist.Name = "UIPaddinglist"
        UIPaddinglist.Parent = ScolDown
        UIPaddinglist.PaddingTop = UDim.new(0, 5)
        UIPaddinglist.PaddingLeft = UDim.new(0, 12)

        local ButtonDrop = Instance.new("TextButton")

        ButtonDrop.Parent = DropFrame
        ButtonDrop.Name = "ButtonDrop"
        ButtonDrop.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
        ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
        ButtonDrop.Font = Enum.Font.SourceSansSemibold
        ButtonDrop.Text = ""
        ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        ButtonDrop.TextSize = 13.000
        --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
        ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
        ButtonDrop.BackgroundTransparency = 1
        ButtonDrop.TextWrapped = true
        ButtonDrop.AutoButtonColor = false
        ButtonDrop.ClipsDescendants = true

        local dog = false

        local FrameSize = 75
        local cout = 0
        for i , v in pairs(list) do
          cout =cout + 1
          if cout == 1 then
            FrameSize = 75
          elseif cout == 2 then
            FrameSize = 110
          elseif cout >= 3 then
            FrameSize = 150
          end

          local listtog = Instance.new("Frame")

          listtog.Name = "listtog"
          listtog.Parent = ScolDown
          listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
          listtog.BackgroundTransparency =1
          listtog.BorderSizePixel = 0
          listtog.ClipsDescendants = true
          listtog.AnchorPoint = Vector2.new(0.5, 0.5)
          listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
          listtog.Size = UDim2.new(0, 210, 0, 33)


          local listtextbutton = Instance.new("TextButton")

          listtextbutton.Parent = listtog
          listtextbutton.BackgroundTransparency =1
          listtextbutton.BackgroundColor3 = Color3.fromRGB(5,5,5)
          listtextbutton.BorderSizePixel = 0
          listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
          listtextbutton.AutoButtonColor = false
          listtextbutton.Font = Enum.Font.SourceSans
          listtextbutton.Text = " "
          listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
          listtextbutton.TextSize = 14.000

          local farmtoglist = Instance.new("TextButton")

          farmtoglist.Parent = listtextbutton
          farmtoglist.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
          farmtoglist.BorderColor3 = Color3.fromRGB(255, 255, 255)
          farmtoglist.BorderSizePixel = 0
          farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
          farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
          farmtoglist.Size = UDim2.new(0, 23, 0, 23)
          farmtoglist.Font = Enum.Font.SourceSans
          farmtoglist.Text = " "
          farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
          farmtoglist.TextSize = 14.000
          farmtoglist.AutoButtonColor = false


          local farmtoglist2 = Instance.new("TextButton")

          farmtoglist2.Parent = farmtoglist
          farmtoglist2.BackgroundColor3 = Color3.fromRGB(10,10,10)
          farmtoglist2.BorderColor3 = Color3.fromRGB(255, 23, 46)
          farmtoglist2.BorderSizePixel = 0
          farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
          farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
          farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
          farmtoglist2.Font = Enum.Font.SourceSans
          farmtoglist2.Text = " "
          farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
          farmtoglist2.TextSize = 14.000
          farmtoglist2.AutoButtonColor = false


          local listimage = Instance.new("ImageButton")

          listimage.Parent = farmtoglist2
          listimage.BackgroundColor3 = Color3.fromRGB(255, 23, 46)
          listimage.BackgroundTransparency = 0
          listimage.AnchorPoint = Vector2.new(0.5, 0.5)
          listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
          listimage.BorderSizePixel = 0
          listimage.Size = UDim2.new(0, 0, 0, 0)
          listimage.ImageTransparency = 1

          local listimageUiconner2 = Instance.new("UICorner")

          listimageUiconner2.CornerRadius = UDim.new(0, 5)
          listimageUiconner2.Name = ""
          listimageUiconner2.Parent = listimage


          local textlist = Instance.new("TextLabel")


          textlist.Parent = listtextbutton
          textlist.Name = "textlist"
          textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
          textlist.BackgroundTransparency = 1.000
          textlist.AnchorPoint = Vector2.new(0.5, 0.5)
          textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
          textlist.BorderSizePixel = 0
          textlist.Size = UDim2.new(0, 91, 0, 25)
          textlist.Font = Enum.Font.Gotham
          textlist.Text = tostring(v.Name)
          textlist.TextColor3 = Color3.fromRGB(255,255,255)
          textlist.TextSize = 12.000



          local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

          TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
          TextButton_Pageframe_Uiconner2.Name = ""
          TextButton_Pageframe_Uiconner2.Parent = farmtoglist

          local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

          TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
          TextButton_Pageframe_Uiconner22.Name = ""
          TextButton_Pageframe_Uiconner22.Parent = farmtoglist2

          listtextbutton.MouseEnter:Connect(function()
            TweenService:Create(
              textlist,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextColor3 = Color3.fromRGB(255, 23, 46)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end)

          listtextbutton.MouseLeave:Connect(function()
            TweenService:Create(
              textlist,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {TextColor3 = Color3.fromRGB(255,255,255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
          end)

          listtextbutton.MouseButton1Click:Connect(function()
            if not  location[v.flag] then
              listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
              wait(0.1)
              listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            else
              listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
              wait(0.1)
              listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            end
            location[v.flag] = not location[v.flag]
            callback(location[v.flag])
          end
          )

          if  location[v.flag] then
            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

            callback(location[v.flag])

          end

          ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end


        DropFrame.MouseEnter:Connect(function()
          TweenService:Create(
            DropFrameStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextLabel_TapDrop,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end
        )

        DropFrame.MouseLeave:Connect(function()
          TweenService:Create(
            DropFrameStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            TextLabel_TapDrop,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end
        )


        ButtonDrop.MouseButton1Click:Connect(function()
          if dog == false then
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              DropArbt_listimage,
              TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
              {Rotation = 180}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
          else
            TweenService:Create(
              DropFrame,
              TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
              {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
              DropArbt_listimage,
              TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
              {Rotation = 0}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
          end
          dog = not dog
        end)
        ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
      end
      function ui4:Bind(text,bi,callback)
        local BindFrame = Instance.new("Frame")

        BindFrame.Name = "BindFrame"
        BindFrame.Parent = ScrollingFrame_Pageframe
        BindFrame.BackgroundColor3 =  Color3.fromRGB(10,10,10)
        BindFrame.BorderSizePixel = 0
        BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        BindFrame.Size = UDim2.new(0, 213, 0, 35)
        BindFrame.BackgroundTransparency  = 0
        BindFrame.ClipsDescendants = true

        local BindConner = Instance.new("UICorner")

        BindConner.CornerRadius = UDim.new(0, 4)
        BindConner.Name = ""
        BindConner.Parent = BindFrame

        local BindStroke = Instance.new("UIStroke")

        BindStroke.Thickness = 1
        BindStroke.Name = ""
        BindStroke.Parent = BindFrame
        BindStroke.LineJoinMode = Enum.LineJoinMode.Round
        BindStroke.Color = Color3.fromRGB(255, 23, 46)
        BindStroke.Transparency = 0.7

        local LabelBind = Instance.new("TextLabel")

        LabelBind.Parent = BindFrame
        LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelBind.BackgroundTransparency = 1
        LabelBind.BorderSizePixel = 0
        LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
        LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelBind.Size = UDim2.new(0, 140, 0, 35)
        LabelBind.Font = Enum.Font.Gotham
        LabelBind.Text = tostring(text)
        LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelBind.TextSize = 11.000
        LabelBind.TextXAlignment = Enum.TextXAlignment.Left

        local key = bi.Name
        local LabelBind2 = Instance.new("TextButton")

        LabelBind2.Parent = BindFrame
        LabelBind2.Name = "LabelBind2"
        LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelBind2.Size = UDim2.new(0, 100, 0, 19)
        LabelBind2.Font = Enum.Font.Gotham
        LabelBind2.Text =  key
        LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelBind2.TextSize = 11.000
        LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelBind2.Position = UDim2.new(0.70, 0, 0.5, 0)
        LabelBind2.TextXAlignment = Enum.TextXAlignment.Right
        LabelBind2.BackgroundTransparency = 1
        LabelBind2.TextWrapped = true

        local LabelBind22 = Instance.new("TextButton")

        LabelBind22.Parent = BindFrame
        LabelBind22.Name = "LabelBind22"
        LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LabelBind22.Size = UDim2.new(0, 213, 0, 35)
        LabelBind22.Font = Enum.Font.GothamBold
        LabelBind22.Text =  ""
        LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelBind22.TextSize = 11.000
        LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
        LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
        LabelBind22.BackgroundTransparency = 1
        LabelBind22.TextWrapped = true

        BindFrame.MouseEnter:Connect(function()
          TweenService:Create(
            BindStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind22,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end
        )
        BindFrame.MouseLeave:Connect(function()
          TweenService:Create(
            BindStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind22,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind2,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
          TweenService:Create(
            LabelBind,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
          ):Play()
        end
        )

        LabelBind22.MouseButton1Click:Connect(function ()


          LabelBind2.Text = "..."
          local inputwait = game:GetService("UserInputService").InputBegan:wait()
          local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

          if
            fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
          then
            LabelBind2.Text =  fuckulop.Name
            key = fuckulop.Name
          end
        end)


        game:GetService("UserInputService").InputBegan:connect(function(current)
          local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

          if fuckulop2.Name ==  key then
            pcall(callback)

          end
        end)

      end
      return ui4
    end
    return uipage
  end
  return uitop
end

local win = ui:W1n("X HUB     |","Second Piece",0.30,Enum.KeyCode.RightControl)

local Tap = win:Tap("Farm")
local Tap2 = win:Tap("Players")
local Tap3 = win:Tap("Teleport")
local Tap4 = win:Tap("Setting")


local a1 = Tap:newpage()
local a2 = Tap:newpage()
local a3 = Tap2:newpage()
local a4 = Tap2:newpage()
local a5 = Tap3:newpage()
local a6 = Tap3:newpage()
local a7 = Tap4:newpage()
local a8 = Tap4:newpage()

a1:Title("Farm")
a2:Title("Skill")
a3:Title("Player")
a4:Title("Stats")
a5:Title("Island")
a6:Title("Shop")
a7:Title("BOOTS FPS")
a8:Title("Credit")

function No()
for i, v in ipairs(workspace.Lives:GetChildren()) do
    if not game:GetService("Players"):GetPlayerFromCharacter(v) then -- if not player then
        local cleanedName = string.gsub(v.Name, "%d+$", "")
        v.Name = tostring(cleanedName)
    end
end

workspace.Lives.ChildAdded:Connect(function(model)
task.wait()
if not game:GetService("Players"):GetPlayerFromCharacter(model) then -- if not player then
        local cleanedName = string.gsub(model.Name, "%d+$", "")
        model.Name = cleanedName
        end
    end)
end

MON = {
  "Bandit",
  "Bandit Leader",
  "Clown Pirate",
  "Marine",
  "Monkey",
  "Monkey King",
  "Bomb Man",
  "Sand Man",
  "Snow Bandit",
  "Snow Bandit Leader"
}

boss = {
 "Rimuru",
 "Killua",
 "Gojo [Unleashed]",
 "Sukuna [Half Power]",
 "Uraume"
}

function MonA()
if free == "Bandit" then
MONName = "Bandit [LV.5]"
elseif free == "Bandit Leader" then
MONName = "Bandit Leader [LV.15]"
elseif free == "Clown Pirate" then
MONName = "Clown Pirate [LV.50]"
elseif free == "Marine" then
MONName = "Marine [LV.300]"
elseif free == "Monkey" then
MONName = "Monkey [LV.750]"
elseif free == "Monkey King" then
MONName = "Monkey King [LV.1000]"
elseif free == "Bomb Man" then
MONName = "Bomb Man [LV.1500]"
elseif free == "Sand Man" then
MONName = "Sand Man [LV.2000]"
elseif free == "Snow Bandit" then
MONName = "Snow Bandit [LV.1750]"
elseif free == "Snow Bandit Leader" then
MONName = "Snow Bandit Leader [LV.2350]"
end
end

function QuestA()
if free == "Bandit" then
CFrameQuest = CFrame.new(-953.566528, 34.5999947, -552.164612, -0.0109250434, -3.3378329e-09, -0.999940336, 1.94075778e-09, 1, -3.35923622e-09, 0.999940336, -1.97734162e-09, -0.0109250434)
elseif free == "Bandit Leader" then
CFrameQuest = CFrame.new(-1097.55042, 34.6000023, -492.550354, -0.0683717504, 2.67226739e-08, 0.997659922, 5.38579563e-08, 1, -2.30943531e-08, -0.997659922, 5.21529238e-08, -0.0683717504)
elseif free == "Clown Pirate" then
CFrameQuest = CFrame.new(-71.5784531, 36.4347496, 50.7921715, 0.00707866857, 2.668971e-08, 0.999974966, -5.85915032e-08, 1, -2.62756199e-08, -0.999974966, -5.84040372e-08, 0.00707866857)
elseif free == "Marine" then
CFrameQuest = CFrame.new(848.661377, 35.5073013, 1264.83777, -0.998497367, 5.36386899e-08, 0.0548002385, 5.90094018e-08, 1, 9.63871685e-08, -0.0548002385, 9.94760612e-08, -0.998497367)
elseif free == "Monkey" then
CFrameQuest = CFrame.new(771.192871, 42.3243141, -1220.74805, -0.996942639, 2.59707669e-08, 0.0781369284, 2.55865924e-08, 1, -5.91784355e-09, -0.0781369284, -3.90049282e-09, -0.996942639)
elseif free == "Monkey King" then
CFrameQuest = CFrame.new(727.094971, 42.2545357, -1380.22131, -0.0418852083, 2.64795439e-08, 0.999122441, -2.36735005e-08, 1, -2.74952416e-08, -0.999122441, -2.48043701e-08, -0.0418852083)
elseif free == "Snow Bandit" then
CFrameQuest = CFrame.new(1507.57898, 102.05999, -290.12558, -0.998586833, -8.202373e-09, -0.0531440228, -1.01186872e-08, 1, 3.57898209e-08, 0.0531440228, 3.62769903e-08, -0.998586833)
elseif free == "Bomb Man" or "Sand Man" or "Snow Bandit Leader" then
CFrameQuest = nil
end
end


Weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Weapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Weapon, v.Name)
    end
end


local SelectToolWeapona = a1:Dropdown("Select Weapon",Weapon,function(Select)
    _G.SelectWeapon = Select
end)

a1:Button("Refresh Weapon", function()
  SelectToolWeapona:Clear()
  for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
      SelectToolWeapona:Add(v.Name)
    end
  end
  for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
      SelectToolWeapona:Add(v.Name)
    end
  end
end)

a1:Dropdown("Select Mobs",MON,function(Select)
    free = Select
end)

a1:Dropdown("Select Boss Event",boss,function(Select)
    Boss = Select
end)

a1:ToggleDesc("Auto Equip","Equip",nil,function(t)
 _G.Equip = t 
    while wait() do 
         if _G.Equip then 
           pcall(function()
              for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                 if v.Name == _G.SelectWeapon then 
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                   end 
                end
            end)
        end 
    end 
end)

function AA()
  game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

a1:ToggleDesc("Auto Farm","Farm",nil,function(t)
_G.Farn = t
spawn(function()
while _G.Farn do wait()
pcall(function()
MonA()
      for _,v in pairs(game:GetService("Workspace").Lives:GetChildren()) do
 if v.Humanoid.DisplayName == MONName and v.Humanoid.Health > 0  then
    v.HumanoidRootPart.Size = Vector3.new(10,10,10)
    v.HumanoidRootPart.Transparency = 0.9
    v.Humanoid.WalkSpeed = 0
repeat task.wait()
AA()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
until _G.Farn == false or v.Humanoid.Health <= 0
end
end
end)
end
end)
end)

a1:ToggleDesc("Auto Quest","Quest",nil,function(t)
_G.AutoQuest = t
spawn(function()
while _G.AutoQuest do wait()
pcall(function()
QuestA()
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestUI") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
until not _G.AutoQuest or game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestUI")
end
end)
end
end)

spawn(function()
while _G.AutoQuest do wait()
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.Name == "ProximityPrompt" then
fireproximityprompt(v,30)
end
end
end)
end
end)
end)

a1:ToggleDesc("Auto Boss","Farm",nil,function(t)
    No()
_G.p = t

function A()
  game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end


spawn(function()
        while wait() do 
    pcall(function()
     if _G.p then
      for _,v in pairs(game:GetService("Workspace").Lives:GetDescendants()) do
        if v.Name == Boss and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >= 1 then
  repeat task.wait()
  A()
    v.HumanoidRootPart.Size = Vector3.new(10,10,10)
    v.HumanoidRootPart.Transparency = 0.9
    v.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
   until _G.p == false or v.Humanoid.Health <= 0
          end
         end
       end
     end)
    end
end)
end)

a1:ToggleDesc("Auto Gem","Farm",nil,function(t)
    No()
_G.op = t

function A()
  game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end


spawn(function()
        while wait() do 
    pcall(function()
     if _G.op then
      for _,v in pairs(game:GetService("Workspace").Lives:GetDescendants()) do
        if v.Name == "Shadow" 
    or v.Name == "Gojo"
    or v.Name == "Kashimo" 
    or v.Name == "Sukuna" 
    or v.Name == "Snow Bandit Leader" 
    or v.Name == "Shank"
    or v.Name == "Artoria"
    or v.Name == "Killua"
    or v.Name == "Rimuru"
    or v.Name == "Gojo [Unleashed]"
    or v.Name == "Sukuna [Half Power]"
    or v.Name == "Uraume"
    or v.Name == "Monkey King"
    or v.Name == "Sand Man"
    or v.Name == "Bomb Man"
    or v.Name == "Bandit Leader" and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health >= 1 then
  repeat task.wait()
  A()
    v.HumanoidRootPart.Size = Vector3.new(10,10,10)
    v.HumanoidRootPart.Transparency = 0.9
    v.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,5,0)*CFrame.Angles(math.rad(-90),0,0)
   until _G.op == false or v.Humanoid.Health <= 0
          end
         end
       end
     end)
    end
end)
end)



a2:ToggleDesc("Skill Z","",nil,function(t)
_G.z = t 
while _G.z do wait() 
    pcall(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
       end)
    end
end)

a2:ToggleDesc("Skill X","",nil,function(t)
_G.x = t 
while _G.x do wait() 
    pcall(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
       end)
    end
end)

a2:ToggleDesc("Skill C","",nil,function(t)
_G.c = t 
while _G.c do wait() 
    pcall(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
       end)
    end
end)

a2:ToggleDesc("Skill V","",nil,function(t)
_G.v = t 
while _G.v do wait() 
    pcall(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
       end)
    end
end)

a2:ToggleDesc("Skill F","",nil,function(t)
_G.f = t 
while _G.f do wait() 
    pcall(function()
game:service('VirtualInputManager'):SendKeyEvent(true, "F", false, game)
       end)
    end
end)


Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
    
local SelectedPly = a3:Dropdown("Select Player",Playerslist,function(Select)
    _G.SelectPly = Select
end)

a3:Button("Refresh Player", function()
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
end)

a3:Button("Teleport", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,4)
end)

a3:ToggleDesc("Spectate Player","Spectate",nil,function(t)
SpectatePlys = t
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

a3:ToggleDesc("Auto Teleport","",nil,function(t)
        _G.TeleportPly = t
        pcall(function()
            if _G.TeleportPly then
                repeat game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3) wait() until _G.TeleportPly == false
            end
        end)
end)

a3:Button("ESP", function()
local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0.7

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0.7
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
      end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
            end
      end)
end)

a3:ToggleDesc("Hit Box","",nil,function(t)
     _G.HeadSize = 30
	_G.Disabled = t
game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.8
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					          end)
				        end
	       		  end
		    end
	  end)
end)

a3:ToggleDesc("Auto Teleport to Item","",nil,function(k)
_G.F = k
while _G.F do wait()
pcall(function()
for i,v in pairs(game:GetService("Workspace").ItemDrop:GetDescendants()) do
if v.Name == "TouchInterest" then
game.Players.LocalPlayer.Character.HumanoidRootPart .CFrame = v.Parent.CFrame
wait()
            end
         end
      end)
end
end)

a3:ToggleDesc("Auto Teleport to Chests","",nil,function(t)
 _G.Fd = t
while _G.Fd do wait()
for i,v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
fireproximityprompt(v,30)
game.Players.LocalPlayer.Character.HumanoidRootPart .CFrame = v.Parent.CFrame
end
      end
            end
end)

a3:ToggleDesc("Auto Teleport to Traveling merchant","",nil,function(t)
_G.Fd = t
while _G.Fd do wait()
pcall(function()
for i,v in pairs(game:GetService("Workspace").NPC["Traveling merchant"]:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,0,-3)
until _G.Fd == false
end
end
end)
      end
end)



a4:ToggleDesc("Melee","",nil,function(t)
_G.me = t 
while _G.me do wait() 
    pcall(function()
    local args = {
    [1] = "Melee",
    [2] = 1
}
game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
    end)
    end
    end)
    
    a4:ToggleDesc("Sword","",nil,function(t)
_G.sh = t 
while _G.sh do wait() 
    pcall(function()
    local args = {
    [1] = "Weapon",
    [2] = 1
}
game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
    end)
    end
    end)
    
    a4:ToggleDesc("Defense","",nil,function(t)
_G.de = t 
while _G.de do wait() 
    pcall(function()
    local args = {
    [1] = "Defense",
    [2] = 1
}
game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
    end)
    end
    end)
    
    a4:ToggleDesc("Fruit","",nil,function(t)
_G.fe = t 
while _G.fe do wait() 
    pcall(function()
    local args = {
    [1] = "DemonFruit",
    [2] = 1
}
game:GetService("ReplicatedStorage").Remotes.UpStats:FireServer(unpack(args))
    end)
    end
    end)
    
    

a5:Button("Starter Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-898.974243, 34.5999947, -559.051453, 0.0182777327, 3.36339987e-08, -0.999832928, -6.71313103e-08, 1, 3.24124017e-08, 0.999832928, 6.65276758e-08, 0.0182777327)

end)

a5:Button("Orange Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(74.4107437, 36.9179535, 79.3588791, -0.999664903, 3.31894299e-08, -0.0258848667, 3.20130162e-08, 1, 4.58622864e-08, 0.0258848667, 4.50182682e-08, -0.999664903)

end)

a5:Button("Shell Town", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(886.932739, 35.5073013, 1153.22998, -0.0238624346, 4.11765164e-08, -0.999715269, 1.07852067e-07, 1, 3.86138979e-08, 0.999715269, -1.06899932e-07, -0.0238624346)

end)

a5:Button("Ape Realm", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(735.348877, 42.3243103, -1181.01147, -0.0751134604, -5.73425822e-08, -0.997174978, -4.65505181e-08, 1, -5.39985585e-08, 0.997174978, 4.23629949e-08, -0.0751134604)

end)

a5:Button("Sunset Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-696.604614, 36.2596169, 786.971252, -0.0137904296, 3.84323009e-08, -0.999904931, -8.1107423e-09, 1, 3.85478174e-08, 0.999904931, 8.64156213e-09, -0.0137904296)

end)

a5:Button("Frost Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1640.46484, 41.6599922, -355.940918, -0.999989569, 2.44405012e-08, 0.00457085157, 2.402248e-08, 1, -9.15084968e-08, -0.00457085157, -9.13977374e-08, -0.999989569)

end)

a5:Button("Chxmei Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(497.929443, 34.5998955, -3094.66699, -0.0192264654, -5.09017362e-08, 0.999815166, -8.70739143e-08, 1, 4.92367143e-08, -0.999815166, -8.61111715e-08, -0.0192264654)

end)

a5:Button("Arena Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1748.12256, 38.3027344, -2731.5647, -0.999986649, -4.07616874e-09, 0.00517317979, -4.20341095e-09, 1, -2.45856029e-08, -0.00517317979, -2.46070186e-08, -0.999986649)

end)

a5:Button("Niflheim Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2019.97729, 118.110451, -2310.68457, -0.999597907, 0, -0.0283546709, 0, 0.99999994, -0, 0.0283546709, -0, -0.999597907)

end)

a5:Button("Autumnal Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1864.88025, 50.2648354, 44.572113, 0.0335859843, -1.23333841e-08, -0.999435842, -7.68625199e-08, 1, -1.4923307e-08, 0.999435842, 7.73203723e-08, 0.0335859843)

end)

a5:Button("Forgotten Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-695.397583, 44.025898, -2004.11902, 0.999338925, -4.83633311e-09, 0.0363560542, 8.25968627e-09, 1, -9.40116536e-08, -0.0363560542, 9.4249792e-08, 0.999338925)

end)

a5:Button("Cursed Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2415.01636, 33.8787766, -1315.07935, 0.0854611695, -1.44168224e-08, 0.996341527, -9.54939097e-08, 1, 2.26607479e-08, -0.996341527, -9.70811627e-08, 0.0854611695)

end)

a5:Label("Event Island")

a5:Button("Niflheim Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2019.97729, 118.110451, -2310.68457, -0.999597907, 0, -0.0283546709, 0, 0.99999994, -0, 0.0283546709, -0, -0.999597907)

end)

a5:Label("Shadow Boss Spawn")

a5:Button("Frost Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1506.47339, 136.759964, -209.360397, -0.015526263, -2.25340333e-08, 0.999879479, 6.08013906e-08, 1, 2.3480883e-08, -0.999879479, 6.11586373e-08, -0.015526263)

end)

a5:Button("Sunset Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-729.227905, 52.2595978, 939.722168, 0.990753412, -7.97407438e-08, -0.135674879, 6.86500528e-08, 1, -8.64233201e-08, 0.135674879, 7.63101085e-08, 0.990753412)

end)

a5:Button("Autumnal Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1864.88025, 50.2648354, 44.572113, 0.0335859843, -1.23333841e-08, -0.999435842, -7.68625199e-08, 1, -1.4923307e-08, 0.999435842, 7.73203723e-08, 0.0335859843)

end)

a5:Label("Sukuna and Gojo Spawn")

a5:Button("Forgotten Island", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-695.397583, 44.025898, -2004.11902, 0.999338925, -4.83633311e-09, 0.0363560542, 8.25968627e-09, 1, -9.40116536e-08, -0.0363560542, 9.4249792e-08, 0.999338925)

end)

a5:Label("Shank Spawn")

a5:Button("Cursed Isle", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2415.01636, 33.8787766, -1315.07935, 0.0854611695, -1.44168224e-08, 0.996341527, -9.54939097e-08, 1, 2.26607479e-08, -0.996341527, -9.70811627e-08, 0.0854611695)

end)
    
a6:ToggleDesc("Auto Random fruit Gem","",nil,function(t)
    _G.gg = t
while _G.gg do wait()
for i,v in pairs(game:GetService("Workspace").Shop:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
fireproximityprompt(v,30)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-741.048889, 43.4787788, -1933.82019, -0.0251465552, 7.8026531e-08, 0.999683797, -1.09866749e-09, 1, -7.80788483e-08, -0.999683797, -3.06173398e-09, -0.0251465552)
end
end
end
end)
    
a6:ToggleDesc("Auto Random fruit Beli","",nil,function(t)
    _G.xm = t
while _G.xm do wait()
for i,v in pairs(game:GetService("Workspace").Shop:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
fireproximityprompt(v,30)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(790.203735, 35.5073013, 1201.40369, 0.026754817, -8.37544611e-09, 0.999642015, 1.24128064e-07, 1, 5.05623188e-09, -0.999642015, 1.23948354e-07, 0.026754817)
end
end
end
end)

a6:Button("Katana", function()
for i,v in pairs(game:GetService("Workspace").Shop.Katana:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Random DemonFruit", function()
for i,v in pairs(game:GetService("Workspace").Shop.RandomDemonFruit:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Yoru", function()
for i,v in pairs(game:GetService("Workspace").Shop.Yoru:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Sukuna", function()
for i,v in pairs(game:GetService("Workspace").Shop.Sukuna:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Higuruma", function()
for i,v in pairs(game:GetService("Workspace").Shop.Higuruma:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Gojo", function()
for i,v in pairs(game:GetService("Workspace").Shop.Gojo:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Cid", function()
for i,v in pairs(game:GetService("Workspace").Shop.Cid:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("KashimoV1", function()
for i,v in 
pairs(game:GetService("Workspace").Shop.KashimoV1:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("KashimoV2", function()
for i,v in pairs(game:GetService("Workspace").Shop.KashimoV2:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Itadori", function()
for i,v in pairs(game:GetService("Workspace").Shop.Itadori:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Gon", function()
for i,v in pairs(game:GetService("Workspace").Shop.Gon:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("GojoV2", function()
for i,v in pairs(game:GetService("Workspace").Shop.GojoV2:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Uraume", function()
for i,v in pairs(game:GetService("Workspace").Shop.Uraume:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)

a6:Button("Remove Fruit from lnventory", function()
for i,v in pairs(game:GetService("Workspace").Shop.Garbage:GetChildren()) do
if v.ClassName == "ProximityPrompt" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(3,1,0)
end
      end
end)


a7:ToggleDesc("AtinAFK","",nil,function(t)
_G.AntiAFKEnabled = t
    local vu = game:GetService("VirtualUser")
    game.Players.LocalPlayer.Idled:connect(function()
        if _G.AntiAFKEnabled then
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end
      end)
end)

a7:ToggleDesc("White Screen","",nil,function(t)
_G.WhiteScreen = t
    while wait(0.1) do
        game:GetService("RunService"):Set3dRenderingEnabled(not _G.WhiteScreen)
      end
end)

a7:Button("Boots FPS", function()
local decalsyeeted = true
    local g, w, l = game, game.Workspace, game.Lighting
    local t = w.Terrain
    sethiddenproperty(l, "Technology", 2)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize, t.WaterWaveSpeed, t.WaterReflectance, t.WaterTransparency = 0, 0, 0, 0
    l.GlobalShadows, l.FogEnd, l.Brightness = false, 9e9, 0
    settings().Rendering.QualityLevel = "Level01"

    local function handleDescendant(v)
        if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
            v:Remove()
        elseif v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material, v.Reflectance = "Plastic", 0
        elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure, v.BlastRadius = 1, 1
        elseif (v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles")) then
            v.Enabled = false
        elseif v:IsA("MeshPart") and decalsyeeted then
            v.Material, v.Reflectance, v.TextureID = "Plastic", 0, 10385902758728957
        elseif v:IsA("SpecialMesh") and decalsyeeted then
            v.TextureId = 0
       end
end

    for _, v in pairs(w:GetDescendants()) do
        handleDescendant(v)
    end

    w.DescendantAdded:Connect(function(v)
        wait()
        handleDescendant(v)
    end)

    for _, e in ipairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
            end
      end
end)

a7:Button("Unlock FPS", function()
loadstring(game:HttpGet("https://pastebin.com/raw/y5reZYnG", true))()
end)

a7:Button("Server Hop", function()
local Http = game:GetService("HttpService") local TPS = game:GetService("TeleportService") local Api = "https://games.roblox.com/v1/games/" local _place = game.PlaceId local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100" function ListServers(cursor) local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or "")) return Http:JSONDecode(Raw) end local Server, Next; repeat local Servers = ListServers(Next) Server = Servers.data[1] Next = Servers.nextPageCursor until Server TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end)


a8:Label("Make Script : X HUB")
a8:Label("Can Report Buck In Discord SSS HUB")
a8:Button("Discord SSS HUB", function()
setclipboard("https://discord.com/invite/v4T8VBnu")
end)
 else
 game:GetService("Players").LocalPlayer:Kick("NOT HAVE MAP IN SCRIPT")
 end
 else
 game:GetService("Players").LocalPlayer:Kick("KEY INCORRECT")
      end
 end)
