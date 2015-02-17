-- Minetest Mod: "Unified Wool"

unifiedwool = {}

unifiedwool.dyes = {
	{"red", "Red"},
	{"orange", "Orange"},
	{"yellow", "Yellow"},
	{"lime", "Lime"},
	{"green", "Green"},
	{"aqua", "Aqua"},
	{"cyan", "Cyan"},
	{"skyblue", "Sky-blue"},
	{"blue", "Blue"},
	{"violet", "Violet"},
	{"magenta", "Magenta"},
	{"redviolet", "Red-violet"}
}

-- Light Grey
	minetest.register_node("unifiedwool:light_grey", {
		description = "Light Grey Wool",
		tiles = {"unifiedwool_lightgrey.png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
	})
	minetest.register_craft({
		type = "shapeless",
		output = "unifiedwool:light_grey",
		recipe = {"dye:light_grey", "group:wool"},
	})

for _, row in ipairs(unifiedwool.dyes) do
	local name = row[1]
	local desc = row[2]
	-- Extended Colors
	if name == "lime" or name == "aqua" or name == "skyblue" or name == "redviolet" then
		minetest.register_node("unifiedwool:"..name, {
			description = desc.." Wool",
			tiles = {"unifiedwool_"..name..".png"},
			groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
			sounds = default.node_sound_defaults(),
		})
		minetest.register_craft({
			type = "shapeless",
			output = "unifiedwool:"..name,
			recipe = {"dye:"..name, "group:wool"},
		})
	end
	-- Dark & low saturation
	minetest.register_node("unifiedwool:dark_"..name.."_s50", {
		description = "Dark "..desc.." Wool (low saturation)",
		tiles = {"unifiedwool_dark_"..name.."_s50.png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
	})
	minetest.register_craft({
		type = "shapeless",
		output = "unifiedwool:dark_"..name.."_s50",
		recipe = {"unifieddyes:dark_"..name.."_s50", "group:wool"},
	})

	-- Dark
	if name ~= "green" then
		minetest.register_node("unifiedwool:dark"..name, {
			description = "Dark "..desc.." Wool",
			tiles = {"unifiedwool_dark_"..name..".png"},
			groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
			sounds = default.node_sound_defaults(),
		})
		minetest.register_craft({
			type = "shapeless",
			output = "unifiedwool:dark_"..name,
			recipe = {"unifieddyes:dark_"..name, "group:wool"},
		})
	end

	-- Medium & low saturation
	minetest.register_node("unifiedwool:medium_"..name.."_s50", {
		description = "Medium "..desc.." Wool (low saturation)",
		tiles = {"unifiedwool_medium_"..name.."_s50.png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
	})
	minetest.register_craft({
		type = "shapeless",
		output = "unifiedwool:medium_"..name.."_s50",
		recipe = {"unifieddyes:medium_"..name.."_s50", "group:wool"},
	})

	-- Medium
	minetest.register_node("unifiedwool:medium_"..name, {
		description = "Medium "..desc.." Wool",
		tiles = {"unifiedwool_medium_"..name..".png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
	})
	minetest.register_craft({
		type = "shapeless",
		output = "unifiedwool:medium_"..name,
		recipe = {"unifieddyes:medium_"..name, "group:wool"},
	})

	-- Light
	if name ~= "red" then
		minetest.register_node("unifiedwool:light_"..name, {
			description = "Light "..desc.." Wool",
			tiles = {"unifiedwool_light_"..name..".png"},
			groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
			sounds = default.node_sound_defaults(),
		})
		minetest.register_craft({
			type = "shapeless",
			output = "unifiedwool:light"..name,
			recipe = {"unifieddyes:light_"..name, "group:wool"},
		})
	end

	-- Low Saturation
	minetest.register_node("unifiedwool:"..name.."_s50", {
		description = desc.." Wool (low saturation)",
		tiles = {"unifiedwool_"..name.."_s50.png"},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1,not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
	})
	minetest.register_craft({
		type = "shapeless",
		output = "unifiedwool:"..name.."_s50",
		recipe = {"unifieddyes:"..name.."_s50", "group:wool"},
	})
end

print("[UnifiedWool] Loaded!")
