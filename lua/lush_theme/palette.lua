local lush = require("lush")
local hsl = lush.hsl

local function getColors()
	local colorTable = {}
	local home = os.getenv("HOME")
	local pywal_colors = home .. "/.cache/wal/colors"
	local file = io.open(pywal_colors, "r")
	if file then
		for line in file:lines() do
			table.insert(colorTable, line)
		end
	end
	return colorTable
end

local colors = getColors()

return {
	color0 = tostring(hsl(colors[1])),
	color1 = tostring(hsl(colors[2])),
	color2 = tostring(hsl(colors[3])),
	color3 = tostring(hsl(colors[4])),
	color4 = tostring(hsl(colors[5])),
	color5 = tostring(hsl(colors[6])),
	color6 = tostring(hsl(colors[7])),
	color7 = tostring(hsl(colors[8])),
	color8 = tostring(hsl(colors[9])),
	color9 = tostring(hsl(colors[10])),
	color10 = tostring(hsl(colors[11])),
	color11 = tostring(hsl(colors[12])),
	color12 = tostring(hsl(colors[13])),
	color13 = tostring(hsl(colors[14])),
	color14 = tostring(hsl(colors[15])),
	color15 = tostring(hsl(colors[16])),
}
