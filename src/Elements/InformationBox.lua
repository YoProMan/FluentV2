local Root = script.Parent.Parent
local Components = Root.Components
local Flipper = require(Root.Packages.Flipper)
local Creator = require(Root.Creator)

local InformationBox = {}
InformationBox.__index = InformationBox
InformationBox.__type = "Paragraph"

function Paragraph:New(Config)
	assert(Config.Title, "Paragraph - Missing Title")
	Config.Content = Config.Content or ""

	local InformationBox = require(Components.Element)(Config.Title, Config.Content, Paragraph.Container, false)
	InformationBox.Frame.BackgroundTransparency = 1
	InformationBox.Container.BackgroundTransparency = 1
	InformationBox.Border.Transparency = 0.6

	return InformationBox
end

return InformationBox
