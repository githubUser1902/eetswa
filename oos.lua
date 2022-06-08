
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UIPadding = Instance.new("UIPadding")
    local TextLabel_2 = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    
    --Properties:
    
    ScreenGui.Parent = game.CoreGui
    
    Frame.Parent = ScreenGui
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    Frame.BorderColor3 = Color3.fromRGB(205, 50, 85)
    Frame.ClipsDescendants = true
    Frame.Position = UDim2.new(0.556653857, -75, 0.588796198, -75)
    Frame.Size = UDim2.new(0, 0, 0, 0)
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(205, 50, 85)
    TextLabel.Position = UDim2.new(0.029041219, 0, 0.372000009, 0)
    TextLabel.Size = UDim2.new(0, 120, 0, 23)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "Eetswa Hub"
    TextLabel.TextColor3 = Color3.fromRGB(210, 43, 43)
    TextLabel.TextSize = 21.000
    TextLabel.TextWrapped = true
    TextLabel.TextScaled = true
    UIPadding.Parent = TextLabel
    
    TextLabel_2.Parent = Frame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(205, 50, 85)
    TextLabel_2.Position = UDim2.new(0.108041219, 0, 0.551999986, 0)
    TextLabel_2.Size = UDim2.new(0, 100, 0, 9)
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.Text = "V2"
    TextLabel_2.TextColor3 = Color3.fromRGB(205, 205, 205)
    TextLabel_2.TextSize = 15.000
    TextLabel_2.TextWrapped = true
    
    UICorner.Parent = Frame
    
    game.TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                         Size = UDim2.new(0, 125, 0, 125)
                    }):Play()
                wait(1.5)
                game.TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                         Size = UDim2.new(0, 0, 0, 0)
                    }):Play()
    wait(0.3)
    ScreenGui:Destroy()
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local FPSLabel = Instance.new("TextLabel")
local TopBar = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderColor3 = Color3.fromRGB(80, 80, 80)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.0459123, 20, -0.03, 0)
Main.Size = UDim2.new(0, 0, 0, 25)
Main.ClipsDescendants=true

FPSLabel.Name = "FPSLabel"
FPSLabel.Parent = Main
FPSLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.BackgroundTransparency = 1.000
FPSLabel.Position = UDim2.new(-0.00268030656, 0, 0, 0)
FPSLabel.Size = UDim2.new(0, 238, 0, 25)
FPSLabel.Font = Enum.Font.Code
FPSLabel.Text = " Eetswa Hub | v1.0 | Fetching FPS.."
FPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextSize = 15.000
FPSLabel.TextStrokeTransparency = 0.000
FPSLabel.TextXAlignment = Enum.TextXAlignment.Left

FPSLabel.Size = UDim2.new(0, FPSLabel.TextBounds.X+5, 0, 25)
Main.Size = UDim2.new(0, FPSLabel.TextBounds.X+6, 0, 25)

TopBar.Size = UDim2.new(0, FPSLabel.TextBounds.X+6, 0, 2)

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 0, 0, 2)
game.TweenService:Create(Main, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size = UDim2.new(0, FPSLabel.TextBounds.X+5, 0, 25)
}):Play()
game.TweenService:Create(FPSLabel, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size = UDim2.new(0, FPSLabel.TextBounds.X+5, 0, 25)
}):Play()
game.TweenService:Create(TopBar, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size = UDim2.new(0, FPSLabel.TextBounds.X+6, 0, 2)
}):Play()

wait(1)
local FpsLabel = script.Parent
local Heartbeat = game:GetService("RunService").Heartbeat

local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end

	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
FPSLabel.Text = " Eetswa Hub | v1.0 | " .. math.floor(CurrentFPS) .." FPS"
FPSLabel.Size = UDim2.new(0, FPSLabel.TextBounds.X+5, 0, 25)
Main.Size = UDim2.new(0, FPSLabel.TextBounds.X+6, 0, 25)

TopBar.Size = UDim2.new(0, FPSLabel.TextBounds.X+6, 0, 2)

end

Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

Main.MouseEnter:Connect(function()
	game.TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	game.TweenService:Create(TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundTransparency = 1
	}):Play()
	game.TweenService:Create(FPSLabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 1
	}):Play()
end)

Main.MouseLeave:Connect(function()
	game.TweenService:Create(Main, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundTransparency = 0
	}):Play()
	game.TweenService:Create(TopBar, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundTransparency = 0
	}):Play()
	game.TweenService:Create(FPSLabel, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 0
	}):Play()
end)

library={}
function library:Window(title, bio)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TabHoldster = Instance.new("ScrollingFrame")
local TabHoldsterLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Title = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local CurrentTab = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.4, -75, 0.4, -75)
Frame.Size = UDim2.new(0, 0, 0, 354)
Frame.Active=true
Frame.Draggable=true
game.TweenService:Create(Frame, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size = UDim2.new(0, 495, 0, 354)
}):Play()
on=true
game:GetService("UserInputService").InputBegan:connect(
    function(key, gpe)
        if key.KeyCode == Enum.KeyCode.LeftAlt then
if on then
	game.TweenService:Create(Frame, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size = UDim2.new(0, 0, 0, 354)
	}):Play()
	wait(0.7)
	on=not on
	Frame.Visible=false
else
	Frame.Visible=true
	game.TweenService:Create(Frame, TweenInfo.new(0.7, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size = UDim2.new(0, 495, 0, 354)
	}):Play()
	wait(0.7)
	
	on=not on
end

        end
    end
)
UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Frame

TabHoldster.Name = "TabHoldster"
TabHoldster.Parent = Frame
TabHoldster.Active = true
TabHoldster.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabHoldster.BackgroundTransparency = 1.000
TabHoldster.BorderSizePixel = 0
TabHoldster.Position = UDim2.new(0, 0, 0.101694912, 0)
TabHoldster.Size = UDim2.new(0, 148, 0, 318)
TabHoldster.ScrollBarThickness = 0

TabHoldsterLayout.Name = "TabHoldsterLayout"
TabHoldsterLayout.Parent = TabHoldster
TabHoldsterLayout.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding.Parent = TabHoldster

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0121212117, 0, 0.0225988701, 0)
Title.Size = UDim2.new(0, 136, 0, 14)
Title.Font = Enum.Font.Gotham
Title.Text = title
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
local UIGradient = Instance.new("UIGradient")

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(210, 43, 43)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(210, 43, 43)), ColorSequenceKeypoint.new(0.62, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.64, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.76, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.97, Color3.fromRGB(216, 216, 216)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(210, 43, 43))}
UIGradient.Parent = Title

TextLabel.Parent = Title
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 1.08571427, 0)
TextLabel.Size = UDim2.new(0, 118, 0, 10)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = bio
TextLabel.TextColor3 = Color3.fromRGB(203, 203, 203)
TextLabel.TextSize = 11.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

CurrentTab.Name = "CurrentTab"
CurrentTab.Parent = Frame
CurrentTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentTab.BackgroundTransparency = 1.000
CurrentTab.Position = UDim2.new(0.517171741, 0, 0, 0)
CurrentTab.Size = UDim2.new(0, 226, 0, 36)
CurrentTab.Font = Enum.Font.Gotham
CurrentTab.Text = ""
CurrentTab.TextColor3 = Color3.fromRGB(214, 214, 214)
CurrentTab.TextSize = 12.000
	CurrentTab.TextXAlignment = Enum.TextXAlignment.Right
	local TabFolder = Instance.new("Folder")

TabFolder.Name = "TabFolder"
TabFolder.Parent = Frame
	sys={}
	function sys:Tab(title)
		local TabFrame = Instance.new("ScrollingFrame")
		local TabLayour = Instance.new("UIListLayout")
		local UIPadding = Instance.new("UIPadding")

		TabFrame.Name = "Tab"
		TabFrame.Parent = TabFolder
		TabFrame.Active = true
		TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabFrame.BackgroundTransparency = 1.000
		TabFrame.BorderSizePixel = 0
		TabFrame.Position = UDim2.new(0.298989892, 0, 0.101694912, 0)
		TabFrame.Size = UDim2.new(0, 347, 0, 318)
		TabFrame.ScrollBarThickness = 0
		TabFrame.Visible=false

		TabLayour.Name = "TabLayour"
		TabLayour.Parent = TabFrame
		TabLayour.SortOrder = Enum.SortOrder.LayoutOrder
		TabLayour.Padding = UDim.new(0, 5)

		UIPadding.Parent = TabFrame

		local Tab = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")
		local UIPadding = Instance.new("UIPadding")
		local SideLine = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")

		Tab.Name = "Tab"
		Tab.Parent = TabHoldster
		Tab.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
		Tab.BackgroundTransparency = 1
		Tab.Position = UDim2.new(0, 0, 0.0673400685, 0)
		Tab.Size = UDim2.new(0, 142, 0, 25)
		Tab.AutoButtonColor = false
		Tab.Font = Enum.Font.Gotham
		Tab.Text = title
		Tab.TextColor3 = Color3.fromRGB(206, 206, 206)
		Tab.TextSize = 11.000
		Tab.TextXAlignment = Enum.TextXAlignment.Left

		UICorner.CornerRadius = UDim.new(0, 2)
		UICorner.Parent = Tab

		UIPadding.Parent = Tab
		UIPadding.PaddingLeft = UDim.new(0, 14)

		SideLine.Name = "SideLine"
		SideLine.Parent = Tab
		SideLine.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
		SideLine.BackgroundTransparency = 1.000
		SideLine.Position = UDim2.new(-0.111428618, 0, 0, 0)
		SideLine.Size = UDim2.new(0, 4, 0, 25)

		UICorner_2.CornerRadius = UDim.new(0, 1)
		UICorner_2.Parent = SideLine

		Tab.MouseButton1Click:Connect(function()
			CurrentTab.Text = title
        for i,v in next, TabFolder:GetChildren() do
            v.Visible = false
        end 
        TabFrame.Visible = true
        
        for i,v in next, TabHoldster:GetChildren() do
            if v:IsA("TextButton") then
                game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    TextColor3 = Color3.fromRGB(206, 206, 206)
                }):Play()
                game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundTransparency = 1
                }):Play()
				game.TweenService:Create(v.SideLine, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundTransparency = 1
                }):Play()
            end
        end
		game.TweenService:Create(Tab, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			TextColor3 = Color3.fromRGB(206, 206, 206)
		}):Play()
		game.TweenService:Create(Tab, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundTransparency = 0.150
		}):Play()
		game.TweenService:Create(SideLine, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundTransparency = 0
		}):Play()
    end)
	TabHoldster.CanvasSize = UDim2.new(0, 0, 0, TabHoldsterLayout.AbsoluteContentSize.Y+5)
    local AssetHandler = {}
	function AssetHandler:SetMain()
		CurrentTab.Text = title
        for i,v in next, TabFolder:GetChildren() do
            v.Visible = false
        end 
        TabFrame.Visible = true
        
        for i,v in next, TabHoldster:GetChildren() do
            if v:IsA("TextButton") then
                game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    TextColor3 = Color3.fromRGB(206, 206, 206)
                }):Play()
                game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundTransparency = 1
                }):Play()
				game.TweenService:Create(v.SideLine, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    BackgroundTransparency = 1
                }):Play()
            end
        end
		game.TweenService:Create(Tab, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			TextColor3 = Color3.fromRGB(206, 206, 206)
		}):Play()
		game.TweenService:Create(Tab, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundTransparency = 0.150
		}):Play()
		game.TweenService:Create(SideLine, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundTransparency = 0
		}):Play()
	end	
function AssetHandler:AddSection(title)	

local Section = Instance.new("TextButton")
local SectionDrop = Instance.new("Frame")
local UIListLayoutSec = Instance.new("UIListLayout")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local ArrowDrop = Instance.new("ImageButton")

Section.Name = "Section"
Section.Parent = TabFrame
Section.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
Section.Position = UDim2.new(0, 0, 0.287037045, 0)
Section.Size = UDim2.new(0, 339, 0, 24)
Section.AutoButtonColor = false
Section.Font = Enum.Font.Gotham
Section.Text = title
Section.TextColor3 = Color3.fromRGB(255, 255, 255)
Section.TextSize = 12.000
Section.TextXAlignment = Enum.TextXAlignment.Left

SectionDrop.Name = "SectionDrop"
SectionDrop.Parent = TabFrame
SectionDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionDrop.BackgroundTransparency = 1.000
SectionDrop.ClipsDescendants = true
SectionDrop.Position = UDim2.new(0, 0, 0.0754716992, 0)
SectionDrop.Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
SectionDrop.Visible = false
UIListLayoutSec.Parent = SectionDrop
UIListLayoutSec.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayoutSec.Padding = UDim.new(0, 5)

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Section

UIPadding.Parent = Section
UIPadding.PaddingLeft = UDim.new(0, 6)
local SectionDropPadding = Instance.new("UIPadding")
SectionDropPadding.Parent = SectionDrop
SectionDropPadding.PaddingTop = UDim.new(0, 2)

ArrowDrop.Name = "ArrowDrop"
ArrowDrop.Parent = Section
ArrowDrop.BackgroundTransparency = 1.000
ArrowDrop.Position = UDim2.new(0.985250711, -25, 0.450000018, -12)
ArrowDrop.Size = UDim2.new(0, 25, 0, 25)
ArrowDrop.ZIndex = 1
ArrowDrop.Image = "rbxassetid://3926307971"
ArrowDrop.ImageRectOffset = Vector2.new(324, 524)
ArrowDrop.ImageRectSize = Vector2.new(36, 36)

TabFrame.CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y)

on=false
Section.MouseButton1Click:Connect(function()
if on then
TabFrame.CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y)
on=false
game.TweenService:Create(ArrowDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Rotation=0
}):Play()
game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size=UDim2.new(0, 339,0, 0)
}):Play()
wait(0.2)
SectionDrop.Visible=false
game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
}):Play()
else
	SectionDrop.Visible=true
on=true
game.TweenService:Create(ArrowDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Rotation=180
}):Play()
game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
}):Play()
wait(0.2)
game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
}):Play()
end
end)

ArrowDrop.MouseButton1Click:Connect(function()
if on then
TabFrame.CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y)
on=false
game.TweenService:Create(ArrowDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Rotation=0
}):Play()
game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size=UDim2.new(0, 339,0, 0)
}):Play()
wait(0.2)
SectionDrop.Visible=false
game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
}):Play()
else
	SectionDrop.Visible=true
on=true
game.TweenService:Create(ArrowDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Rotation=180
}):Play()
game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
}):Play()
wait(0.2)
game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
}):Play()
end
end)

assets={}
function assets:Open()
	SectionDrop.Visible=true
on=true
game.TweenService:Create(ArrowDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Rotation=180
}):Play()
game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
}):Play()
wait(0.2)
game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
}):Play()
end
function assets:Button(title, callback)

	local Button = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	Button.Name = "Button"
	Button.Parent = SectionDrop
	Button.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	Button.BackgroundTransparency = 0.150
	Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(-0.0147492625, 0, -0.0217390358, 0)
	Button.Size = UDim2.new(0, 339, 0, 24)
	Button.AutoButtonColor = false
	Button.Font = Enum.Font.Gotham
	Button.Text = "  "..title
	Button.TextColor3 = Color3.fromRGB(213, 213, 213)
	Button.TextSize = 14.000
	Button.TextXAlignment = Enum.TextXAlignment.Left

	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = Button

	Button.MouseButton1Click:Connect(function()
		game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(85, 85, 85)
		}):Play()
		callback()
		wait(0.1)
		game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(58, 58, 58)
		}):Play()
	end)

	control={}
	function control:Click()
		game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(85, 85, 85)
		}):Play()
		callback()
		wait(0.1)
		game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(58, 58, 58)
		}):Play()
	end
	function control:Rename(title)
		game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			TextTransparency = 1
		}):Play()
		Button.Text = "  "..title
	wait(0.2)
	game.TweenService:Create(Button, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 0
	}):Play()
	end
	return control
end

function assets:Toggle(title,state,callback)
local Toggle = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local OutlineFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local MiddleFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")

local check = Instance.new("ImageButton")

check.Name = "check"
check.Parent = MiddleFrame
check.BackgroundTransparency = 1.000
check.Position = UDim2.new(-0.0909090638, 0, -0.181818187, 0)
check.Size = UDim2.new(0, 13, 0, 13)
check.ZIndex = 1
check.Image = "rbxassetid://3926305904"
check.ImageColor3 = Color3.fromRGB(252, 159, 159)
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)
check.ImageTransparency=1

Toggle.Name = "Toggle"
Toggle.Parent = SectionDrop
Toggle.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Toggle.BackgroundTransparency = 0.150
Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 0, 9.41900566e-08, 0)
Toggle.Size = UDim2.new(0, 339, 0, 24)
Toggle.AutoButtonColor = false
Toggle.Font = Enum.Font.Gotham
Toggle.Text = title
Toggle.TextColor3 = Color3.fromRGB(213, 213, 213)
Toggle.TextSize = 14.000
Toggle.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Toggle

UIPadding.Parent = Toggle
UIPadding.PaddingLeft = UDim.new(0, 9)

OutlineFrame.Name = "OutlineFrame"
OutlineFrame.Parent = Toggle
OutlineFrame.BackgroundColor3 = Color3.fromRGB(135, 135, 135)
OutlineFrame.Position = UDim2.new(0.924473166, 0, 0.180555537, 0)
OutlineFrame.Size = UDim2.new(0, 15, 0, 15)

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = OutlineFrame

MiddleFrame.Name = "MiddleFrame"
MiddleFrame.Parent = OutlineFrame
MiddleFrame.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
MiddleFrame.Position = UDim2.new(0.5, -6, 0.5, -6)
MiddleFrame.Size = UDim2.new(0, 11, 0, 11)

UICorner_3.CornerRadius = UDim.new(0, 2)
UICorner_3.Parent = MiddleFrame

on=false
do
if state then
	game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(224, 87, 87)
	}):Play()
	game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 0
	}):Play()
	game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(210, 43, 43)
	}):Play()
on=true
callback(on)
end
end

Toggle.MouseButton1Click:Connect(function()
if on then
	game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(135, 135, 135)
	}):Play()
	game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(99, 99, 99)
	}):Play()
	game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 1
	}):Play()
on=false
callback(on)
else
	game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(224, 87, 87)
	}):Play()
	game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(210, 43, 43)
		
	}):Play()
	game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 0
	}):Play()
on=true
callback(on)
end
end)
check.MouseButton1Click:Connect(function()
if on then
	game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(135, 135, 135)
	}):Play()
	game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(99, 99, 99)
	}):Play()
	game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 1
	}):Play()
on=false
callback(on)
else
	game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(224, 87, 87)
	}):Play()
	game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		BackgroundColor3 = Color3.fromRGB(210, 43, 43)
		
	}):Play()
	game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		ImageTransparency = 0
	}):Play()
on=true
callback(on)
end
end)
control={}

function control:Click()
	if on then
		game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(135, 135, 135)
		}):Play()
		game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(99, 99, 99)
		}):Play()
		game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			ImageTransparency = 1
		}):Play()
	on=false
	callback(on)
	else
		game.TweenService:Create(OutlineFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(224, 87, 87)
		}):Play()
		game.TweenService:Create(MiddleFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			BackgroundColor3 = Color3.fromRGB(210, 43, 43)
			
		}):Play()
		game.TweenService:Create(check, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			ImageTransparency = 0
		}):Play()
	on=true
	callback(on)
	end
end

function control:Rename(title)
	game.TweenService:Create(Toggle, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		TextTransparency = 1
	}):Play()
Toggle.Text = title
wait(0.2)
game.TweenService:Create(Toggle, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
	TextTransparency = 0
}):Play()
end

return control
end

function assets:Dropdown(title,list,callback)
local Dropdown_2 = Instance.new("TextButton")
local Dropdown = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")


local UICorner_2 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local expand_more = Instance.new("ImageButton")

--Properties:

Dropdown_2.Name = "Dropdown"
Dropdown_2.Parent = SectionDrop
Dropdown_2.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Dropdown_2.BackgroundTransparency = 0.150
Dropdown_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dropdown_2.BorderSizePixel = 0
Dropdown_2.Position = UDim2.new(0, 0, 9.41900566e-08, 0)
Dropdown_2.Size = UDim2.new(0, 339, 0, 24)
Dropdown_2.AutoButtonColor = false
Dropdown_2.Font = Enum.Font.Gotham
Dropdown_2.Text = title
Dropdown_2.TextColor3 = Color3.fromRGB(213, 213, 213)
Dropdown_2.TextSize = 14.000
Dropdown_2.TextXAlignment = Enum.TextXAlignment.Left


Dropdown.Name = "Dropdown"
Dropdown.Parent = SectionDrop
Dropdown.Active = true
Dropdown.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Dropdown.BorderSizePixel = 0
Dropdown.Position = UDim2.new(0, 0, 0.284210533, 0)
Dropdown.Size = UDim2.new(0, 339, 0, 205)
Dropdown.ScrollBarThickness = 8
Dropdown.Visible=false
Dropdown.BackgroundTransparency=0

UIListLayout.Parent = Dropdown
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = Dropdown
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

UICorner_2.CornerRadius = UDim.new(0, 2)
UICorner_2.Parent = Dropdown_2

UIPadding_3.Parent = Dropdown_2
UIPadding_3.PaddingLeft = UDim.new(0, 9)

expand_more.Name = "expand_more"
expand_more.Parent = Dropdown_2
expand_more.BackgroundTransparency = 1.000
expand_more.Position = UDim2.new(0.988200545, -25, 0.537037015, -12)
expand_more.Size = UDim2.new(0, 22, 0, 22)
expand_more.ZIndex = 1
expand_more.Image = "rbxassetid://3926305904"
expand_more.ImageColor3 = Color3.fromRGB(213, 213, 213)
expand_more.ImageRectOffset = Vector2.new(564, 284)
expand_more.ImageRectSize = Vector2.new(36, 36)

Dropdown_2.MouseButton1Click:Connect(function()
if on then
	
	game.TweenService:Create(expand_more, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Rotation=0
	}):Play()
	game.TweenService:Create(Dropdown, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, 205)
	}):Play()
	wait(0.2)
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()
	on=false
	Dropdown.Visible=false
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	wait(0.2)
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()

else
	Dropdown.Visible=true
	game.TweenService:Create(expand_more, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Rotation=180
	}):Play()
	game.TweenService:Create(Dropdown, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, 205)
	}):Play()
	wait(0.2)
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	wait(0.2)
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()
	on=true
end
end)
count=0
for i, v in next, list do
count=count+5
	Dropdown.Size=UDim2.new(0, 339,0, UIListLayout.AbsoluteContentSize.Y+5)
	local DropdownButton = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
	DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Dropdown
DropdownButton.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
DropdownButton.Position = UDim2.new(0.0147492625, 0, 0.024630541, 0)
DropdownButton.Size = UDim2.new(0, 321, 0, 24)
DropdownButton.AutoButtonColor = false
DropdownButton.Font = Enum.Font.Gotham
DropdownButton.Text = v
DropdownButton.TextColor3 = Color3.fromRGB(238, 238, 238)
DropdownButton.TextSize = 12.000
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left
UICorner.CornerRadius = UDim.new(0, 2)

UICorner.Parent = DropdownButton

UIPadding_2.Parent = DropdownButton
UIPadding_2.PaddingLeft = UDim.new(0, 6)
Dropdown.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y+6)

DropdownButton.MouseButton1Click:Connect(function()
	game.TweenService:Create(expand_more, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Rotation=0
	}):Play()
	game.TweenService:Create(Dropdown, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, 205)
	}):Play()
	wait(0.2)
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()
	on=false
	Dropdown.Visible=false
	Dropdown_2.Text = title .. ": " ..v
	callback(v)
	game.TweenService:Create(SectionDrop, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		Size=UDim2.new(0, 339,0, UIListLayoutSec.AbsoluteContentSize.Y+5)
	}):Play()
	wait(0.2)
	game.TweenService:Create(TabFrame, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
		CanvasSize = UDim2.new(0, 0, 0, TabLayour.AbsoluteContentSize.Y+5)
	}):Play()
	Dropdown_2.Text = title .. ": " ..v
callback(v)

for i,v in pairs(Dropdown:GetChildren()) do
if v:IsA('TextButton') then
game.TweenService:Create(v,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{
TextColor3 = Color3.fromRGB(238, 238, 238)
}):Play()
end
end
game.TweenService:Create(DropdownButton,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{
TextColor3 = Color3.fromRGB(226, 114, 114)
}):Play()
end)
end

end

function assets:Label(title)
	local Label = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	Label.Name = "Label"
	Label.Parent = SectionDrop
	Label.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	Label.BackgroundTransparency = 1.000
	Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Label.BorderSizePixel = 0
	Label.Position = UDim2.new(0, 0, 0.19135803, 0)
	Label.Size = UDim2.new(0, 339, 0, 16)
	Label.AutoButtonColor = false
	Label.Font = Enum.Font.Gotham
	Label.Text = title
	Label.TextColor3 = Color3.fromRGB(213, 213, 213)
	Label.TextSize = 14.000
	
	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = Label
	control={}
	function control:Rename(title)
		Label.Text = title
	end
	return control
end

function assets:Slider(text, minvalue, maxvalue, callback)
	local SliderAsset = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UIPadding = Instance.new("UIPadding")
	local Slider = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local SlideFrame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	
	SliderAsset.Name = "Slider"
	SliderAsset.Parent = SectionDrop
	SliderAsset.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	SliderAsset.BackgroundTransparency = 0.150
	SliderAsset.BorderColor3 = Color3.fromRGB(27, 42, 53)
	SliderAsset.BorderSizePixel = 0
	SliderAsset.Position = UDim2.new(0, 0, 0.348765433, 0)
	SliderAsset.Size = UDim2.new(0, 339, 0, 37)
	SliderAsset.AutoButtonColor = false
	SliderAsset.Font = Enum.Font.Gotham
	SliderAsset.Text = " "..text
	SliderAsset.TextColor3 = Color3.fromRGB(213, 213, 213)
	SliderAsset.TextSize = 14.000
	SliderAsset.TextXAlignment = Enum.TextXAlignment.Left
	SliderAsset.TextYAlignment = Enum.TextYAlignment.Top
	
	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = SliderAsset
	
	UIPadding.Parent = SliderAsset
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5)
	
	Slider.Name = "Slider"
	Slider.Parent = SliderAsset
	Slider.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0.00880598649, 0, 0.593099833, 0)
	Slider.Size = UDim2.new(0, 323, 0, 5)
	Slider.AutoButtonColor = false
	Slider.Font = Enum.Font.SourceSans
	Slider.Text = ""
	Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
	Slider.TextSize = 14.000
	
	UICorner_2.CornerRadius = UDim.new(0, 3)
	UICorner_2.Parent = Slider
	
	SlideFrame.Name = "SliderFrame"
	SlideFrame.Parent = Slider
	SlideFrame.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
	SlideFrame.BorderSizePixel = 0
	SlideFrame.Size = UDim2.new(0, 0, 0, 5)
	
	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = SlideFrame
	
	TextLabel.Parent = SliderAsset
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextLabel.Position = UDim2.new(0.481286168, 0, -0.135135129, 0)
	TextLabel.Size = UDim2.new(0, 173, 0, 12)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = minvalue
	TextLabel.TextColor3 = Color3.fromRGB(213, 213, 213)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Right
	
	UIPadding_2.Parent = TextLabel
	UIPadding_2.PaddingRight = UDim.new(0, 13)
	UIPadding_2.PaddingTop = UDim.new(0, 14)
	minvalue = minvalue or 0
	maxvalue = maxvalue or 100
	 
	callback = callback or function() end

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")
			local Value;
	
			Slider.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 323) * SlideFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
				pcall(function()
					callback(Value)
				end)
				SlideFrame.Size = UDim2.new(0, math.clamp(mouse.X - SlideFrame.AbsolutePosition.X, 0, 323), 0, 5)
				moveconnection = mouse.Move:Connect(function()
					TextLabel.Text = Value
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 323) * SlideFrame.AbsoluteSize.X) + tonumber(minvalue))
					pcall(function()
						callback(Value)
						TextLabel.Text = Value
					end)
					SlideFrame.Size = UDim2.new(0, math.clamp(mouse.X - SlideFrame.AbsolutePosition.X, 0, 323), 0, 5)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 318) * SlideFrame.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
						end)
					   SlideFrame.Size = UDim2.new(0, math.clamp(mouse.X - SlideFrame.AbsolutePosition.X, 0, 323), 0, 5)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
end
function assets:Textbox(title,value2,placeholder,callback)

local Box = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")

--Properties:

Box.Name = "Box"
Box.Parent = SectionDrop
Box.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Box.BackgroundTransparency = 0.150
Box.BorderColor3 = Color3.fromRGB(27, 42, 53)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(-0.0147492625, 0, -0.0231435299, 0)
Box.Size = UDim2.new(0, 339, 0, 24)
Box.AutoButtonColor = false
Box.Font = Enum.Font.Gotham
Box.Text = title
Box.TextColor3 = Color3.fromRGB(213, 213, 213)
Box.TextSize = 14.000
Box.TextXAlignment = Enum.TextXAlignment.Left

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Box

UIPadding.Parent = Box
UIPadding.PaddingLeft = UDim.new(0, 5)

TextBox.Parent = Box
TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextBox.Position = UDim2.new(0.566277683, 0, 0.166666672, 0)
TextBox.Size = UDim2.new(0, 139, 0, 15)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 12.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Right

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = TextBox

UIPadding_2.Parent = TextBox
UIPadding_2.PaddingRight = UDim.new(0, 3)

TextBox.FocusLost:Connect(function(ep)
	if ep then
		if #TextBox.Text > 0 then
			pcall(callback, TextBox.Text)
			if value2 then
				TextBox.Text = ""
			end
		end
	end
end)

end

return assets
end
return AssetHandler
end
return sys
end
return library