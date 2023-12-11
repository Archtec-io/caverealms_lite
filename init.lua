caverealms = {} --create a container for functions and constants

--grab a shorthand for the filepath of the mod
local modpath = minetest.get_modpath(minetest.get_current_modname())

--load companion lua files
dofile(modpath .. "/config.lua") --configuration file; holds various constants
dofile(modpath .. "/crafting.lua") --crafting recipes
dofile(modpath .. "/nodes.lua") --node definitions
dofile(modpath .. "/stairs.lua") --stairs (mod auto-detected)
dofile(modpath .. "/plants.lua")

if minetest.get_modpath("mobs_monster")
and caverealms.config.dm_spawn == true then
	dofile(modpath .. "/dungeon_master.lua") --special DMs for DM's Lair biome
end

minetest.register_mapgen_dofile(modpath .. "/mapgen.lua")

print("[MOD] Caverealms Lite loaded")
