--[[

	This file is part of 'Masque', an add-on for World of Warcraft. For license information,
	please see the included License.txt file.

	* File...: Core\Groups.lua
	* Author.: StormFX, JJSheets

	Group API

]]

-- GLOBALS: setmetatable

local _, Core = ...

----------------------------------------
-- Lua
---

local error, pairs, type = error, pairs, type

----------------------------------------
-- Locals
---

local Cache = {}

----------------------------------------
-- Callback
---

local Callback = {

	-- Notifies an add-on of skin changes.
	-- @ Core\Group: Group, SkinID, Backdrop, Shadow, Gloss, Colors, Disabled
	Fire = function(self, Addon, ...)
		local args = Cache[Addon]
		if args then
			for arg, func in pairs(args) do
				if arg then
					func(arg, ...)
				else
					func(...)
				end
			end
		end
	end,

	-- Registers an add-on to be notified of skin changes.
	Register = function(self, Addon, func, arg)
		Cache[Addon] = Cache[Addon] or {}
		Cache[Addon][arg] = func
	end,
}

----------------------------------------
-- Core
---

Core.Callback = setmetatable(Callback, {__call = Callback.Fire})

----------------------------------------
-- API
---

-- Wrapper for the 'Register' method.
function Core.API:Register(Addon, func, arg)
	if type(Addon) ~= "string" then
		if Core.Debug then
			error("Bad argument to API method 'Register'. 'Addon' must be a string.", 2)
		end
		return

	elseif type(func) ~= "function" then
		if Core.Debug then
			error("Bad argument to API method 'Register'. 'func' must be a function.", 2)
		end
		return

	elseif arg and type(arg) ~= "table" then
		if Core.Debug then
			error("Bad argument to API method 'Register'. 'arg' must be a table or nil.", 2)
		end
		return
	end

	Callback:Register(Addon, func, arg or false)
end
