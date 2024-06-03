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
	color0 = hsl(colors[1]),
	color1 = hsl(colors[2]),
	color2 = hsl(colors[3]),
	color3 = hsl(colors[4]),
	color4 = hsl(colors[5]),
	color5 = hsl(colors[6]),
	color6 = hsl(colors[7]),
	color7 = hsl(colors[8]),
	color8 = hsl(colors[9]),
	color9 = hsl(colors[10]),
	color10 = hsl(colors[11]),
	color11 = hsl(colors[12]),
	color12 = hsl(colors[13]),
	color13 = hsl(colors[14]),
	color14 = hsl(colors[15]),
	color15 = hsl(colors[16]),
}
