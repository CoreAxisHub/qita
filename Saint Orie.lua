local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "因 Luraph 问题暂时删库"
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = screenGui

local function updateTextSize()
	local parentSize = screenGui.AbsoluteSize
	if parentSize.X > 0 and parentSize.Y > 0 then
		local textSize = math.min(parentSize.X, parentSize.Y) * 0.9
		textLabel.TextSize = textSize
	end
end

updateTextSize()
screenGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateTextSize)
