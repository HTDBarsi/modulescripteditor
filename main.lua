-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local main_2 = Instance.new("Frame")
local title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local elements = Instance.new("Folder")
local val = Instance.new("Frame")
local editable = Instance.new("TextBox")
local value = Instance.new("TextLabel")
local list = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main_2.Name = "main"
main_2.Parent = main
main_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main_2.BorderSizePixel = 0
main_2.Position = UDim2.new(0.0737148374, 0, 0.459974587, 0)
main_2.Size = UDim2.new(0, 400, 0, 250)

title.Name = "title"
title.Parent = main_2
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(1, 0, 0, 20)
title.Font = Enum.Font.SourceSans
title.Text = "Script editor v1.1"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

TextBox.Parent = main_2
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 1, -3)
TextBox.Size = UDim2.new(1, -50, 0, 25)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "script path here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = TextBox
TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, 0, 0, 0)
TextButton.Size = UDim2.new(0, 50, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextButton

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TextBox

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = main_2

elements.Name = "elements"
elements.Parent = main_2

val.Name = "val"
val.Parent = elements
val.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
val.BackgroundTransparency = 1.000
val.BorderSizePixel = 0
val.Size = UDim2.new(1, 0, 0, 25)
val.Visible = false

editable.Name = "editable"
editable.Parent = val
editable.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
editable.BorderSizePixel = 0
editable.Position = UDim2.new(0.5, 0, 0, 0)
editable.Size = UDim2.new(0.5, 0, 1, 0)
editable.Font = Enum.Font.SourceSans
editable.Text = ""
editable.TextColor3 = Color3.fromRGB(255, 255, 255)
editable.TextSize = 14.000

value.Name = "value"
value.Parent = val
value.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
value.BorderSizePixel = 0
value.Size = UDim2.new(0.5, 0, 1, 0)
value.Font = Enum.Font.SourceSans
value.TextColor3 = Color3.fromRGB(255, 255, 255)
value.TextSize = 14.000

list.Name = "list"
list.Parent = main_2
list.Active = true
list.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
list.BorderColor3 = Color3.fromRGB(0, 0, 0)
list.BorderSizePixel = 0
list.Position = UDim2.new(0, 0, 0, 20)
list.Size = UDim2.new(1, 0, 1, -20)

UIListLayout.Parent = list
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Scripts:

local function XVNURI_fake_script() -- main_2.Dragify 
	local script = Instance.new('Folder', main_2)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(XVNURI_fake_script)()
local function BCGV_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('Folder', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.list.UIListLayout.Parent = script
		script.Parent.Parent.Parent.list:ClearAllChildren()
		script.UIListLayout.Parent = script.Parent.Parent.Parent.list
		local a = nil
		local t = loadstring("return "..script.Parent.Parent.Text)()
		if t:IsA("ModuleScript") then
			a = require(t)
		else
			a = getsenv(t)
		end
		if type(a) == "table" then
			for i,v in pairs(a) do 
				local clone = script.Parent.Parent.Parent.elements.val:Clone()
				clone.Visible = true
				clone.Parent = script.Parent.Parent.Parent.list
				clone.value.Text = tostring(i)
				clone.editable.Text = tostring(v)
				clone.editable.FocusLost:Connect(function()
					if clone.editable.Text == "false" or clone.editable.Text == "False" then
						a[i] = false
					elseif clone.editable.Text == "true" or clone.editable.Text == "True" then
						a[i] = true
					else
						a[i] = tonumber(clone.editable.Text) or clone.editable.Text
					end	
				end)
			end
		end
	end)
end
coroutine.wrap(BCGV_fake_script)()
