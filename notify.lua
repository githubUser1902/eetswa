notify={}
local DontTouchMe = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

--Properties:

DontTouchMe.Name = "DontTouchMe!"
DontTouchMe.Parent = game.CoreGui
DontTouchMe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = DontTouchMe
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.847, 0, 0.1767, 0)
Frame.Size = UDim2.new(0, 295, 0, 809)

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 6)

UIPadding.Parent = Frame
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)

function notify:TNotify(content,a)
	local Notification = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local Content = Instance.new("TextLabel")
	local UIPadding_3 = Instance.new("UIPadding")
	local Accept = Instance.new("TextButton")
	local TopBar = Instance.new("Frame")

Notification.Name = "Notification"
Notification.Parent = Frame
Notification.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Notification.BorderColor3 = Color3.fromRGB(79, 79, 79)
Notification.BorderSizePixel = 2
Notification.Position = UDim2.new(0.169491529, 0, 0.844252169, 0)
Notification.Size = UDim2.new(0, 0, 0, 60)
Notification.ClipsDescendants=true
game.TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 245, 0, 60)
		}):Play()
		
Title.Name = "Title"
Title.Parent = Notification
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Position = UDim2.new(-0.00505003612, 0, 0.0288889632, 0)
Title.Size = UDim2.new(0, 195, 0, 16)
Title.Font = Enum.Font.Code
Title.Text = "Eetswa Hub"
Title.TextColor3 = Color3.fromRGB(210, 43, 43)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = Title
UIPadding_2.PaddingLeft = UDim.new(0, 9)
UIPadding_2.PaddingTop = UDim.new(0, 7)

Content.Name = "Content"
Content.Parent = Notification
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(27, 42, 53)
Content.Position = UDim2.new(-0.00490865903, 0, 0.292291254, 0)
Content.Size = UDim2.new(0, 196, 0, 16)
Content.Font = Enum.Font.Code
	Content.Text = content
Content.TextColor3 = Color3.fromRGB(213, 213, 213)
Content.TextSize = 14.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = Content
UIPadding_3.PaddingLeft = UDim.new(0, 9)
UIPadding_3.PaddingTop = UDim.new(0, 7)

Accept.Name = "Accept"
Accept.Parent = Notification
Accept.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Accept.BorderColor3 = Color3.fromRGB(53, 53, 53)
Accept.Position = UDim2.new(0.0391945355, 0, 0.675073266, 0)
Accept.Size = UDim2.new(0, 43, 0, 14)
Accept.AutoButtonColor = false
Accept.Font = Enum.Font.Code
Accept.Text = "okay"
Accept.TextColor3 = Color3.fromRGB(213, 213, 213)
Accept.TextSize = 12.000
	Accept.MouseButton1Click:Connect(function()
		game.TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 60)
		}):Play()
		wait(0.2)
		Notification:Destroy()
	end)
TopBar.Name = "TopBar"
TopBar.Parent = Notification
TopBar.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(-0.000837302767, 0, -0.00724996068, 0)
	TopBar.Size = UDim2.new(0, 244, 0, 2)
	do
	wait(a)
	game.TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 60)
		}):Play()
		wait(0.2)
		Notification:Destroy()
		end
	end

function notify:SNotify(content)
	local Notification = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local Content = Instance.new("TextLabel")
	local UIPadding_3 = Instance.new("UIPadding")
	local Accept = Instance.new("TextButton")
	local TopBar = Instance.new("Frame")

Notification.Name = "Notification"
Notification.Parent = Frame
Notification.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Notification.BorderColor3 = Color3.fromRGB(79, 79, 79)
Notification.BorderSizePixel = 2
Notification.Position = UDim2.new(0.169491529, 0, 0.844252169, 0)
Notification.Size = UDim2.new(0, 0, 0, 60)
Notification.ClipsDescendants=true
game.TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 245, 0, 60)
		}):Play()
		
Title.Name = "Title"
Title.Parent = Notification
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Position = UDim2.new(-0.00505003612, 0, 0.0288889632, 0)
Title.Size = UDim2.new(0, 195, 0, 16)
Title.Font = Enum.Font.Code
Title.Text = "Eetswa Hub"
Title.TextColor3 = Color3.fromRGB(210, 43, 43)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = Title
UIPadding_2.PaddingLeft = UDim.new(0, 9)
UIPadding_2.PaddingTop = UDim.new(0, 7)

Content.Name = "Content"
Content.Parent = Notification
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderColor3 = Color3.fromRGB(27, 42, 53)
Content.Position = UDim2.new(-0.00490865903, 0, 0.292291254, 0)
Content.Size = UDim2.new(0, 196, 0, 16)
Content.Font = Enum.Font.Code
	Content.Text = content
Content.TextColor3 = Color3.fromRGB(213, 213, 213)
Content.TextSize = 14.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = Content
UIPadding_3.PaddingLeft = UDim.new(0, 9)
UIPadding_3.PaddingTop = UDim.new(0, 7)

Accept.Name = "Accept"
Accept.Parent = Notification
Accept.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Accept.BorderColor3 = Color3.fromRGB(53, 53, 53)
Accept.Position = UDim2.new(0.0391945355, 0, 0.675073266, 0)
Accept.Size = UDim2.new(0, 43, 0, 14)
Accept.AutoButtonColor = false
Accept.Font = Enum.Font.Code
Accept.Text = "okay"
Accept.TextColor3 = Color3.fromRGB(213, 213, 213)
Accept.TextSize = 12.000
	Accept.MouseButton1Click:Connect(function()
		game.TweenService:Create(Notification, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 60)
		}):Play()
		wait(0.2)
		Notification:Destroy()
	end)
TopBar.Name = "TopBar"
TopBar.Parent = Notification
TopBar.BackgroundColor3 = Color3.fromRGB(210, 43, 43)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(-0.000837302767, 0, -0.00724996068, 0)
	TopBar.Size = UDim2.new(0, 244, 0, 2)
	end
	return notify